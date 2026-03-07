import fs from 'fs';
import path from 'path';

const API_URL = 'https://mediunit-backend.a-naouri.workers.dev/api/v1';

async function syncProdData() {
    try {
        console.log("Loading all_products_info.json...");
        const dataPath = path.join(__dirname, '../all_products_info.json');
        const productsData = JSON.parse(fs.readFileSync(dataPath, 'utf8'));

        console.log("Fetching current products from production API...");
        const res = await fetch(`${API_URL}/products`);
        if (!res.ok) throw new Error("Failed to fetch products");
        const json = await res.json();
        const apiProducts = json.results || json;

        for (const localProduct of productsData) {
            const apiProduct = apiProducts.find((p: any) => p.sku === localProduct.sku || p.name === localProduct.nameFr);
            if (apiProduct) {
                console.log(`Updating product: ${apiProduct.name}`);

                const updatePayload = {
                    ...apiProduct,
                    name_en: localProduct.nameEn,
                    description_en: localProduct.descriptionEn,
                    image_url: localProduct.mediaUrl ? "/" + localProduct.mediaUrl : apiProduct.image_url
                };

                const updateRes = await fetch(`${API_URL}/products/${apiProduct.id}`, {
                    method: 'PUT',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(updatePayload)
                });

                if (!updateRes.ok) {
                    console.error(`Failed to update ${apiProduct.name}: ${await updateRes.text()}`);
                } else {
                    console.log(`Success: ${apiProduct.name}`);
                }
            } else {
                console.log(`Product not found in API: ${localProduct.nameFr} (SKU: ${localProduct.sku})`);
            }
        }
        console.log("Sync complete.");
    } catch (e) {
        console.error(e);
    }
}

syncProdData();
