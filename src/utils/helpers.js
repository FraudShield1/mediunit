import { PDFDocument, rgb, StandardFonts } from 'pdf-lib';
import JSZip from 'jszip';

export async function hashPassword(password, env) {
    const encoder = new TextEncoder();
    // Use env.PASSWORD_SALT if available, otherwise a default for safety (though DB should be migrated if salt changes)
    const salt = env?.PASSWORD_SALT || "MediUnit_S4L7_2026!";
    const data = encoder.encode(password + salt);
    const hash = await crypto.subtle.digest('SHA-256', data);
    return Array.from(new Uint8Array(hash)).map(b => b.toString(16).padStart(2, '0')).join('');
}

// Minimal JWT Implementation using WebCrypto (HMAC-SHA256)
async function base64UrlEncode(buffer) {
    return btoa(String.fromCharCode(...new Uint8Array(buffer)))
        .replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '');
}
async function base64UrlDecode(str) {
    const base64 = str.replace(/-/g, '+').replace(/_/g, '/');
    const binary = atob(base64 + '==='.slice((str.length + 3) % 4));
    return new Uint8Array([...binary].map(c => c.charCodeAt(0)));
}
export async function signJWT(payload, secret) {
    const encoder = new TextEncoder();
    const header = await base64UrlEncode(encoder.encode(JSON.stringify({ alg: "HS256", typ: "JWT" })));
    const payloadStr = await base64UrlEncode(encoder.encode(JSON.stringify(payload)));
    const key = await crypto.subtle.importKey(
        "raw", encoder.encode(secret), { name: "HMAC", hash: "SHA-256" }, false, ["sign"]
    );
    const signatureBuffer = await crypto.subtle.sign("HMAC", key, encoder.encode(`${header}.${payloadStr}`));
    const signature = await base64UrlEncode(signatureBuffer);
    return `${header}.${payloadStr}.${signature}`;
}
export async function verifyJWT(token, secret) {
    try {
        const parts = token.split('.');
        if (parts.length !== 3) return null;
        const encoder = new TextEncoder();
        const key = await crypto.subtle.importKey(
            "raw", encoder.encode(secret), { name: "HMAC", hash: "SHA-256" }, false, ["verify"]
        );
        const isValid = await crypto.subtle.verify(
            "HMAC", key, await base64UrlDecode(parts[2]), encoder.encode(`${parts[0]}.${parts[1]}`)
        );
        if (!isValid) return null;
        const payload = JSON.parse(new TextDecoder().decode(await base64UrlDecode(parts[1])));
        // Check expiry (if 'exp' exists)
        if (payload.exp && Date.now() >= payload.exp * 1000) return null;
        return payload;
    } catch (e) {
        return null;
    }
}

export async function isRateLimited(env, ip, limit, windowSeconds, keyPrefix) {
    if (!env.LIMITER) return false;
    const now = Math.floor(Date.now() / 1000);
    const windowStart = now - windowSeconds;
    const key = `rl:${keyPrefix}:${ip}`;

    let logs = await env.LIMITER.get(key, { type: 'json' }) || [];
    logs = logs.filter(timestamp => timestamp > windowStart);

    if (logs.length >= limit) return true;

    logs.push(now);
    await env.LIMITER.put(key, JSON.stringify(logs), { expirationTtl: windowSeconds });
    return false;
}

export async function sendEmail(env, { to, subject, html }) {
    if (!env.RESEND_API_KEY) {
        console.warn("RESEND_API_KEY missing, skipping email.");
        return;
    }
    await fetch("https://api.resend.com/emails", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Authorization": `Bearer ${env.RESEND_API_KEY}`
        },
        body: JSON.stringify({
            from: "MediUnit <orders@mediunit.ma>",
            to,
            subject,
            html
        })
    });
}

export function jsonResponse(data, status = 200, headers = {}) {
    return new Response(JSON.stringify(data), {
        status,
        headers: { "Content-Type": "application/json", ...headers }
    });
}

export async function getAuthUser(request, env, corsHeaders) {
    const authHeader = request.headers.get("Authorization");
    if (!authHeader || !authHeader.startsWith("Bearer ")) return null;
    const token = authHeader.split(" ")[1];
    if (!env.JWT_SECRET) return null;
    return await verifyJWT(token, env.JWT_SECRET);
}