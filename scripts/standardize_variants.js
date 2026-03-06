const API_URL = process.env.API_URL || 'https://mediunit-backend.a-naouri.workers.dev/api/v1';
const ADMIN_TOKEN = process.env.ADMIN_TOKEN;

const isDryRun = process.argv.includes('--dry-run');

if (!ADMIN_TOKEN && !isDryRun) {
    console.warn("⚠️ Warning: No ADMIN_TOKEN provided. Live updates will fail. Run with --dry-run or set ADMIN_TOKEN.");
}

async function standardizeVariants() {
    console.log(`Fetching all products from ${API_URL}/products...`);
    const res = await fetch(`${API_URL}/products`);

    if (!res.ok) {
        throw new Error(`Failed to fetch products: ${res.statusText}`);
    }

    const data = await res.json();
    const products = data.data || data.items || data || [];

    console.log(`Found ${products.length} products to evaluate.`);

    let updatedCount = 0;

    for (const product of products) {
        let specs = product.specifications || {};
        if (typeof specs === 'string') {
            try {
                specs = JSON.parse(specs);
            } catch (e) {
                specs = {};
            }
        }

        const variantData = specs.variants || specs['Taille'] || specs['Size'] || '';

        // --- Heuristic Logic from ProductClient.tsx ---
        let vars = [];
        if (typeof variantData === 'string') {
            if (variantData.includes(',')) vars = variantData.split(',').map(v => v.trim());
            else if (variantData.includes(';')) vars = variantData.split(';').map(v => v.trim());
            else if (variantData.includes('/')) vars = variantData.split('/').map(v => v.trim());
            else if (variantData.trim().length > 0) vars = [variantData.trim()];
        } else if (Array.isArray(variantData)) {
            vars = variantData.map(v => String(v));
        }

        if (vars.length === 0 && product?.name?.includes('(Multi-Tailles)')) {
            const chars = String(specs['Caractéristiques'] || '');
            if (chars.includes(' à ') && chars.includes('G')) {
                vars = ['18G', '19G', '20G', '21G', '22G', '23G', '25G'];
            } else if (product?.name?.includes('Sonde') || product?.name?.includes('Canule')) {
                vars = ['CH08', 'CH10', 'CH12', 'CH14', 'CH16', 'CH18'];
            } else if (product?.name?.includes('Gant')) {
                vars = ['S', 'M', 'L', 'XL'];
            } else if (product?.name?.includes('Masque Laryngé')) {
                vars = ['Taille 1', 'Taille 2', 'Taille 3', 'Taille 4', 'Taille 5'];
            } else {
                vars = ['Standard', 'Large', 'Extra Large'];
            }
        }

        // Only update if we found valid variants AND they are different to what exists
        const currentVarsJoined = Array.isArray(specs.variants) ? specs.variants.join('|') : String(specs.variants || '');
        const newVarsJoined = vars.join('|');

        if (vars.length > 0 && currentVarsJoined !== newVarsJoined) {
            console.log(`\n📦 Product: ${product.name} (ID: ${product.id})`);
            console.log(`   Old Variants: ${currentVarsJoined || 'None'}`);
            console.log(`   New Variants: ${vars.join(', ')}`);

            specs.variants = vars;

            if (!isDryRun) {
                if (!ADMIN_TOKEN) {
                    console.error("   ❌ Missing ADMIN_TOKEN, skipping update.");
                    continue;
                }

                try {
                    const updateRes = await fetch(`${API_URL}/products/${product.id}`, {
                        method: 'PUT',
                        headers: {
                            'Content-Type': 'application/json',
                            'Authorization': `Bearer ${ADMIN_TOKEN}`
                        },
                        body: JSON.stringify({ specifications: JSON.stringify(specs) })
                    });

                    if (!updateRes.ok) {
                        const errText = await updateRes.text();
                        console.error(`   ❌ Failed to update product: ${errText}`);
                    } else {
                        console.log(`   ✅ Updated successfully.`);
                        updatedCount++;
                    }
                } catch (err) {
                    console.error(`   ❌ Error updating ${product.id}:`, err);
                }
            } else {
                updatedCount++;
            }
        }
    }

    if (isDryRun) {
        console.log(`\n[DRY RUN] Would have updated ${updatedCount} products.`);
    } else {
        console.log(`\nSuccessfully updated ${updatedCount} products.`);
    }
}

standardizeVariants().catch(console.error);
