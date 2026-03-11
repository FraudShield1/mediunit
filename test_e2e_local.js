import app from './src/index.js';

async function test() {
    console.log("Starting in-memory E2E tests...");

    // Mock environment
    const env = {
        DB: {
            prepare: (query) => ({
                bind: (...args) => ({
                    all: async () => {
                        console.log(`[DB] Mock Query: ${query} | Args:`, args);
                        return { results: [{ id: 1, name: 'Seringue' }] };
                    },
                    first: async () => {
                        console.log(`[DB] Mock Query: ${query} | Args:`, args);
                        if (query.includes("email")) return { id: 1, email: 'test@mediunit.ma' };
                        return { id: 1, name: 'Seringue' };
                    }
                }),
                all: async () => {
                   console.log(`[DB] Mock Query: ${query}`);
                   return { results: [{ id: 1, name: 'Anesthésie' }] };
                }
            })
        },
        STORAGE: {
            get: async (key) => {
                console.log(`[R2] Mock Get: ${key}`);
                return null; // Mock 404 for simplicity unless tested
            }
        },
        LIMITER: {
            get: async () => null,
            put: async () => {}
        },
        JWT_SECRET: "test_secret",
        ENVIRONMENT: "test"
    };

    // 1. Test Health Check
    console.log("\n1. Testing Health Check...");
    const resHealth = await app.request('/api/health', {}, env);
    console.log("Status:", resHealth.status);
    console.log("Body:", await resHealth.json());

    // 2. Test Public Routes (Categories)
    console.log("\n2. Testing Public Route (/api/v1/categories)...");
    const resCats = await app.request('/api/v1/categories', {}, env);
    console.log("Status:", resCats.status);
    console.log("Body:", await resCats.json());

    // 4. Test Login
    console.log("\n4. Testing Login...");
    const loginBody = JSON.stringify({ username: "test@mediunit.ma", password: "password123" });
    const resLogin = await app.request('/api/v1/auth/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: loginBody
    }, env);
    console.log("Status:", resLogin.status);
    const loginData = await resLogin.json();
    console.log("Token received:", !!loginData.token);

    // 5. Test Authenticated Request
    if (loginData.token) {
        console.log("\n5. Testing Protected Route with token (/api/v1/dashboard)...");
        const resDashAuth = await app.request('/api/v1/dashboard', {
            headers: { 'Authorization': `Bearer ${loginData.token}` }
        }, env);
        console.log("Status:", resDashAuth.status);
        console.log("Body:", await resDashAuth.json());
    }

    // 6. Test Image Route
    console.log("\n6. Testing Image Route (/api/v1/images/test.jpg)...");
    const resImg = await app.request('/api/v1/images/test.jpg', {}, env);
    console.log("Status:", resImg.status);

    // 7. Test Forgot Password (Localized)
    console.log("\n7. Testing Forgot Password (Localized - EN)...");
    const forgotBody = JSON.stringify({ email: "test@mediunit.ma", lang: "en" });
    const resForgot = await app.request('/api/v1/auth/forgot-password', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: forgotBody
    }, env);
    console.log("Status:", resForgot.status);
    console.log("Body:", await resForgot.json());

    console.log("\nTests completed!");
}

test().catch(console.error);
