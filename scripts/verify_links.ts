import fs from 'fs';
import path from 'path';

const PROD_URL = 'https://mediunit.ma';
const API_URL = 'https://mediunit-backend.a-naouri.workers.dev/api/v1';

async function verifyLinks() {
    try {
        console.log("--- Starting Product Link Audit ---");

        // Load target slugs from local data
        const dataPath = path.join(__dirname, '../all_products_info.json');
        const productsData = JSON.parse(fs.readFileSync(dataPath, 'utf8'));
        const targetSlugs = productsData.map((p: any) => p.slug || p.nameFr.toLowerCase().replace(/[^a-z0-9]+/g, '-'));

        console.log(`Auditing ${targetSlugs.length} products...`);

        const results = {
            success: 0,
            redirected: 0,
            failed: 0,
            errors: [] as string[]
        };

        for (const slug of targetSlugs) {
            const url = `${PROD_URL}/products/${slug}/`;
            try {
                const res = await fetch(url, { redirect: 'manual' });

                if (res.status === 200) {
                    results.success++;
                    console.log(`✅ OK: ${slug}`);
                } else if (res.status === 301 || res.status === 302) {
                    results.redirected++;
                    const location = res.headers.get('location');
                    console.log(`🔄 REDIRECT: ${slug} -> ${location}`);
                } else {
                    results.failed++;
                    console.log(`❌ 404: ${slug}`);
                    results.errors.push(slug);
                }
            } catch (e: any) {
                console.error(`Error checking ${slug}: ${e.message}`);
            }
        }

        console.log("\n--- Audit Results ---");
        console.log(`Total checked: ${targetSlugs.length}`);
        console.log(`Success (200 OK): ${results.success}`);
        console.log(`Redirected (301/302): ${results.redirected}`);
        console.log(`Failed (404/Error): ${results.failed}`);

        if (results.errors.length > 0) {
            console.log("\nFailed Slugs:");
            results.errors.forEach(s => console.log(`- ${s}`));
        }

    } catch (e) {
        console.error("Audit failed:", e);
    }
}

verifyLinks();
