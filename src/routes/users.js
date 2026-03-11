import { Hono } from 'hono';
import { getAuthUser, sendEmail } from '../utils/helpers.js';
import { UserRepository } from '../repositories/UserRepository.js';

const app = new Hono();

// Auth Middleware for all user routes
app.use('*', async (c, next) => {
    const user = await getAuthUser(c.req.raw, c.env, {});
    if (!user) return c.json({ error: "Unauthorized" }, 401);
    c.set('user', user);
    await next();
});

// Admin Middleware
const adminOnly = async (c, next) => {
    const user = c.get('user');
    if (user.role !== 'admin') {
        return c.json({ error: "Forbidden: Admin access required" }, 403);
    }
    await next();
};

app.get('/', adminOnly, async (c) => {
    const userRepo = new UserRepository(c.env.DB);
    const results = await userRepo.findAll();
    return c.json(results, 200);
});

app.patch('/:id/verify', adminOnly, async (c) => {
    const userId = c.req.param('id');
    const userRepo = new UserRepository(c.env.DB);
    await userRepo.updateVerificationStatus(userId, 'verified');

    const user = await userRepo.findById(userId);
    if (user && user.email) {
        await sendEmail(c.env, {
            to: user.email,
            subject: "Compte MediUnit Approuvé ✅",
            html: `
                <div style="font-family: sans-serif; max-width: 600px; margin: auto; padding: 20px; border: 1px solid #eee; border-radius: 20px;">
                    <h1 style="color: #1e5999;">Félicitations !</h1>
                    <p>Bonjour ${user.full_name || 'Docteur'},</p>
                    <p>Votre compte professionnel (INPE: ${user.inpe_number || 'N/A'}) a été vérifié et approuvé par notre équipe médicale.</p>
                    <p>Vous pouvez dès à présent vous connecter sur MediUnit et accéder à notre catalogue B2B avec des tarifs préférentiels.</p>
                    <div style="text-align: center; margin: 30px 0;">
                        <a href="https://mediunit.ma/login" style="background-color: #1e5999; color: white; padding: 12px 24px; text-decoration: none; border-radius: 8px; font-weight: bold;">Accéder à mon espace</a>
                    </div>
                    <hr style="border: none; border-top: 1px solid #eee; margin: 20px 0;"/>
                    <p style="font-size: 12px; color: #666;">L'équipe MediUnit</p>
                </div>
            `
        });
    }
    return c.json({ success: true }, 200);
});

app.patch('/:id/reject', adminOnly, async (c) => {
    const userId = c.req.param('id');
    const { reason } = await c.req.json();
    const userRepo = new UserRepository(c.env.DB);
    await userRepo.updateVerificationStatus(userId, 'rejected', reason);

    const user = await userRepo.findById(userId);
    if (user && user.email) {
        await sendEmail(c.env, {
            to: user.email,
            subject: "Information concernant votre compte MediUnit ⚠️",
            html: `
                <div style="font-family: sans-serif; max-width: 600px; margin: auto; padding: 20px; border: 1px solid #eee; border-radius: 20px;">
                    <h1 style="color: #d32f2f;">Action Requise</h1>
                    <p>Bonjour ${user.full_name || 'Docteur'},</p>
                    <p>Nous avons examiné votre demande d'accès professionnel. Malheureusement, nous ne pouvons pas l'approuver en l'état pour la raison suivante :</p>
                    <div style="background-color: #fce4e4; padding: 15px; border-radius: 8px; color: #c62828; margin: 20px 0;">
                        <strong>Motif :</strong> ${reason}
                    </div>
                    <p>Vous pouvez mettre à jour vos informations ou soumettre une nouvelle licence depuis votre tableau de bord.</p>
                    <div style="text-align: center; margin: 30px 0;">
                        <a href="https://mediunit.ma/dashboard" style="background-color: #1e5999; color: white; padding: 12px 24px; text-decoration: none; border-radius: 8px; font-weight: bold;">Accéder à mon tableau de bord</a>
                    </div>
                    <hr style="border: none; border-top: 1px solid #eee; margin: 20px 0;"/>
                    <p style="font-size: 12px; color: #666;">L'équipe MediUnit</p>
                </div>
            `
        });
    }
    return c.json({ success: true }, 200);
});

app.post('/verify-upload', async (c) => {
    const authUser = c.get('user');
    const formData = await c.req.formData();
    const file = formData.get("file");
    if (!file || !(file instanceof File)) {
        return c.json({ error: "No file uploaded" }, 400);
    }

    const fileName = `licenses/${authUser.sub}_${Date.now()}_${file.name.replace(/[^a-z0-9.]/gi, '_')}`;
    await c.env.STORAGE.put(fileName, await file.arrayBuffer(), {
        httpMetadata: { contentType: file.type }
    });

    const licenseUrl = `/api/v1/users/license/${fileName}`;
    await c.env.DB.prepare("UPDATE user SET verification_license_url = ?, verification_status = 'pending' WHERE id = ?").bind(licenseUrl, authUser.sub).run();

    return c.json({ success: true, url: licenseUrl }, 200);
});

app.get('/license/*', async (c) => {
    const authUser = c.get('user');
    // Hono c.req.path example: /api/v1/users/license/licenses/123.jpg
    // the actual object key is just everything after /license/
    const url = new URL(c.req.url);
    const fileName = url.pathname.replace("/api/v1/users/license/", "");

    // Fixed Bug: In logic `licenses/USERID_TIMESTAMP_...` we need to extract USERID securely
    const baseName = fileName.replace('licenses/', '');
    const ownerUserId = baseName.split('_')[0];

    const isOwner = ownerUserId && authUser.sub === ownerUserId;
    const isAdmin = authUser.role === 'admin';
    
    if (!isOwner && !isAdmin) {
        return c.json({ error: "Unauthorized" }, 401);
    }

    const object = await c.env.STORAGE.get(fileName);
    if (!object) return c.text("Not Found", 404);

    return new Response(object.body, {
        headers: {
            "Content-Type": object.httpMetadata?.contentType || "application/octet-stream",
            "etag": object.httpEtag,
            "Content-Disposition": "inline"
        }
    });
});

export default app;
