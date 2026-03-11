import { Hono } from 'hono';
import { isRateLimited, hashPassword, signJWT, sendEmail, getAuthUser } from '../utils/helpers.js';

const app = new Hono();

app.post('/register', async (c) => {
    const ip = c.req.header("CF-Connecting-IP") || "local";
    if (await isRateLimited(c.env, ip, 5, 60, "register")) {
        return c.json({ error: "Rate limit exceeded" }, 429);
    }
    const body = await c.req.json();

    if (!body.email || !body.password || !body.full_name) {
        return c.json({ error: "Email, nom complet et mot de passe sont requis" }, 400);
    }
    if (!body.email.includes('@')) {
        return c.json({ error: "Email invalide" }, 400);
    }

    const existingUser = await c.env.DB.prepare("SELECT id FROM user WHERE email = ?").bind(body.email).first();
    if (existingUser) {
        return c.json({ error: "Cet email est déjà utilisé" }, 409);
    }

    const id = crypto.randomUUID();
    const hashedPassword = await hashPassword(body.password, c.env);
    
    try {
        await c.env.DB.prepare(`
            INSERT INTO user (id, email, hashed_password, full_name, clinic_name, specialty, inpe_number, city, verification_status, created_at) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'pending', datetime('now'))
        `).bind(
            id, body.email, hashedPassword, body.full_name || '',
            body.clinic_name || '', body.specialty || '',
            body.inpe_number || '', body.city || 'Casablanca'
        ).run();
    } catch (dbError) {
        console.error("Database error during registration:", dbError);
        return c.json({ error: "Erreur lors de la création du compte" }, 500);
    }

    try {
        // Send Welcome/Confirmation Email to User
        await sendEmail(c.env, {
            to: body.email,
            subject: "Demande d'accès MediUnit - En cours de vérification",
            html: `
                <div style="font-family: sans-serif; max-width: 600px; margin: auto; padding: 20px; border: 1px solid #eee; border-radius: 20px;">
                    <h1 style="color: #1e5999;">Bienvenue sur MediUnit</h1>
                    <p>Bonjour ${body.full_name || 'Docteur'},</p>
                    <p>Nous avons bien reçu votre demande d'accès à la plateforme MediUnit.</p>
                    <p>Notre équipe de conformité vérifie actuellement vos informations professionnelles (INPE: ${body.inpe_number || 'Non fourni'}).</p>
                    <p><strong>Vous recevrez un e-mail dès que votre compte sera activé (généralement sous 24h).</strong></p>
                    <hr style="border: none; border-top: 1px solid #eee; margin: 20px 0;"/>
                    <p style="font-size: 12px; color: #666;">MediUnit Morocco - Clinical B2B Sourcing</p>
                </div>
            `
        });

        // Send Alert to Admin
        const adminEmail = c.env.ADMIN_EMAIL || "abdel@mediunit.ma";
        await sendEmail(c.env, {
            to: adminEmail,
            subject: "Nouvelle Demande d'Accès B2B - MediUnit",
            html: `
                <h1>Nouvelle inscription à vérifier</h1>
                <ul>
                    <li><strong>Nom:</strong> ${body.full_name}</li>
                    <li><strong>Email:</strong> ${body.email}</li>
                    <li><strong>Clinique:</strong> ${body.clinic_name || 'Non spécifié'}</li>
                    <li><strong>Spécialité:</strong> ${body.specialty || 'Non spécifié'}</li>
                    <li><strong>INPE:</strong> ${body.inpe_number || 'Non fourni'}</li>
                    <li><strong>Ville:</strong> ${body.city || 'Casablanca'}</li>
                </ul>
                <p><a href="https://mediunit.ma/admin">Accéder au panel admin pour valider</a></p>
            `
        });
    } catch (emailError) {
        console.error("Email delivery failed during registration:", emailError);
    }

    return c.json({ success: true, id }, 200);
});

app.post('/login', async (c) => {
    const ip = c.req.header("CF-Connecting-IP") || "local";
    if (await isRateLimited(c.env, ip, 10, 60, "login")) {
        return c.json({ error: "Too many login attempts. Please try again later." }, 429);
    }

    let username, password;
    const contentType = c.req.header('Content-Type') || '';
    if (contentType.includes('application/json')) {
        const body = await c.req.json();
        username = body.username || body.email;
        password = body.password;
    } else {
        const body = await c.req.parseBody();
        username = body.username || body.email;
        password = body.password;
    }

    if (!username || !password) {
        return c.json({ error: "Missing credentials" }, 400);
    }

    const hashedPassword = await hashPassword(password, c.env);
    const user = await c.env.DB.prepare(`
        SELECT id, email, full_name, clinic_name, specialty, inpe_number, city,
               verification_status, role, rejection_reason, created_at
        FROM user
        WHERE email = ? AND hashed_password = ?
    `).bind(username, hashedPassword).first();
    
    if (!user) return c.json({ error: "Invalid credentials" }, 401);

    if (!c.env.JWT_SECRET) {
        return c.json({ error: "Server misconfiguration" }, 500);
    }
    const token = await signJWT({
        sub: user.id,
        email: user.email,
        role: user.role || 'user',
        exp: Math.floor(Date.now() / 1000) + (24 * 60 * 60)
    }, c.env.JWT_SECRET);

    return c.json({ token, user }, 200);
});

app.post('/logout', async (c) => {
    return c.json({ success: true }, 200);
});

app.use('/profile', async (c, next) => {
    const user = await getAuthUser(c.req.raw, c.env);
    if (!user) return c.json({ error: "Unauthorized" }, 401);
    c.set('user', user);
    await next();
});

app.get('/profile', async (c) => {
    const user = c.get('user');
    const profile = await c.env.DB.prepare("SELECT id, email, full_name, clinic_name, inpe_number, specialty, city, verification_status, rejection_reason, created_at FROM user WHERE id = ?").bind(user.sub).first();
    return c.json(profile, 200);
});

app.patch('/profile', async (c) => {
    const user = c.get('user');
    const body = await c.req.json();
    await c.env.DB.prepare(`
        UPDATE user 
        SET full_name = ?, clinic_name = ?, specialty = ?, city = ?, inpe_number = ?
        WHERE id = ?
    `).bind(
        body.full_name, body.clinic_name, body.specialty, body.city, body.inpe_number, user.sub
    ).run();
    return c.json({ success: true }, 200);
});

app.post('/forgot-password', async (c) => {
    const { email, lang = 'fr' } = await c.req.json();
    const user = await c.env.DB.prepare("SELECT id, email, hashed_password, full_name FROM user WHERE email = ?").bind(email).first();
    if (!user) {
        // Return 200 anyway to prevent email enumeration
        return c.json({ success: true }, 200);
    }
    
    // Sign JWT with general secret + user's current password hash to invalidate it upon change
    const secret = c.env.JWT_SECRET + user.hashed_password;
    const token = await signJWT({
        sub: user.id,
        email: user.email,
        exp: Math.floor(Date.now() / 1000) + (1 * 60 * 60) // 1 hr
    }, secret);

    const resetLink = `https://mediunit.ma/${lang}/reset-password?token=${token}`;

    const isEn = lang === 'en';
    const subject = isEn ? "MediUnit Password Reset Request" : "Réinitialisation de votre mot de passe MediUnit";
    const title = isEn ? "Password Reset" : "Réinitialisation du mot de passe";
    const greeting = isEn ? `Hello ${user.full_name || 'Doctor'},` : `Bonjour ${user.full_name || 'Docteur'},`;
    const message = isEn 
        ? "You requested to reset your password. Click the button below to proceed (valid for 1 hour):" 
        : "Vous avez demandé à réinitialiser votre mot de passe. Cliquez sur le lien ci-dessous pour procéder (valide 1 heure) :";
    const btnLabel = isEn ? "Reset My Password" : "Réinitialiser mon mot de passe";
    const footerMsg = isEn 
        ? "If you did not make this request, please ignore this email." 
        : "Si vous n'êtes pas à l'origine de cette demande, veuillez ignorer cet e-mail.";
    const signature = isEn ? "The MediUnit Team" : "L'équipe MediUnit";

    await sendEmail(c.env, {
        to: user.email,
        subject,
        html: `
            <div style="font-family: sans-serif; max-width: 600px; margin: auto; padding: 20px; border: 1px solid #eee; border-radius: 20px;">
                <h1 style="color: #1e5999;">${title}</h1>
                <p>${greeting}</p>
                <p>${message}</p>
                <div style="text-align: center; margin: 30px 0;">
                    <a href="${resetLink}" style="background-color: #1e5999; color: white; padding: 12px 24px; text-decoration: none; border-radius: 8px; font-weight: bold;">${btnLabel}</a>
                </div>
                <p>${footerMsg}</p>
                <hr style="border: none; border-top: 1px solid #eee; margin: 20px 0;"/>
                <p style="font-size: 12px; color: #666;">${signature}</p>
            </div>
        `
    });

    return c.json({ success: true }, 200);
});

app.post('/reset-password', async (c) => {
    const { token, new_password } = await c.req.json();
    if (!token || !new_password) {
        return c.json({ error: "Missing parameters" }, 400);
    }
    
    const parts = token.split('.');
    if (parts.length !== 3) return c.json({ error: "Invalid token" }, 400);
    
    // Quick base64url decode for payload
    const base64 = parts[1].replace(/-/g, '+').replace(/_/g, '/');
    const binary = atob(base64 + '==='.slice((base64.length + 3) % 4));
    let payload;
    try {
        payload = JSON.parse(new TextDecoder().decode(new Uint8Array([...binary].map(char => char.charCodeAt(0)))));
    } catch(e) {
        return c.json({ error: "Invalid token" }, 400);
    }
    
    if (!payload || !payload.email) return c.json({ error: "Invalid token" }, 400);

    const user = await c.env.DB.prepare("SELECT id, email, hashed_password FROM user WHERE email = ?").bind(payload.email).first();
    if (!user) return c.json({ error: "User not found" }, 404);

    const secret = c.env.JWT_SECRET + user.hashed_password;
    const { verifyJWT } = await import('../utils/helpers.js');
    const verified = await verifyJWT(token, secret);
    
    if (!verified) {
        return c.json({ error: "Lien invalide ou expiré" }, 400);
    }

    const newHashedPassword = await hashPassword(new_password, c.env);
    await c.env.DB.prepare("UPDATE user SET hashed_password = ? WHERE id = ?").bind(newHashedPassword, user.id).run();

    return c.json({ success: true }, 200);
});

export default app;
