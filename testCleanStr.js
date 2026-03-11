const fs = require('fs');
const { PDFDocument, StandardFonts } = require('pdf-lib');

const decodeEntities = (text) => {
    return text
        .replace(/&eacute;/gi, 'é').replace(/&egrave;/gi, 'è').replace(/&ecirc;/gi, 'ê')
        .replace(/&agrave;/gi, 'à').replace(/&acirc;/gi, 'â')
        .replace(/&icirc;/gi, 'î').replace(/&ocirc;/gi, 'ô')
        .replace(/&ucirc;/gi, 'û').replace(/&ccedil;/gi, 'ç')
        .replace(/&nbsp;/gi, ' ').replace(/&amp;/gi, '&')
        .replace(/&quot;/gi, '"').replace(/&lt;/gi, '<').replace(/&gt;/gi, '>');
};

const cleanStr = (str) => {
    if (!str) return '';
    try {
        let text = String(str).normalize('NFC');
        
        // 1. Simplify newlines and block elements before stripping
        text = text.replace(/<br[^>]*>/gi, '\n')
                   .replace(/<\/p>/gi, '\n\n')
                   .replace(/<li[^>]*>/gi, '\n• ')
                   .replace(/<\/li>/gi, '');

        // 2. Safe HTML strip (no regex backtracking)
        let inTag = false;
        let stripped = '';
        for (let i = 0; i < text.length; i++) {
            if (text[i] === '<') {
                inTag = true;
            } else if (text[i] === '>') {
                inTag = false;
            } else if (!inTag) {
                stripped += text[i];
            }
        }
        
        // 3. Decode HTML entities
        stripped = decodeEntities(stripped);

        // 4. Safe typography replacement
        let finalStr = '';
        for (let i = 0; i < stripped.length; i++) {
            let charCode = stripped.charCodeAt(i);
            let char = stripped[i];
            
            if (char === '’' || char === '‘' || char === '´' || charCode === 8217 || charCode === 8216) finalStr += "'";
            else if (char === '“' || char === '”' || char === '«' || char === '»' || charCode === 8220 || charCode === 8221) finalStr += '"';
            else if (char === '–' || char === '—' || charCode === 8211 || charCode === 8212) finalStr += '-';
            else if (char === '…' || charCode === 8230) finalStr += '...';
            else if (char === '•' || char === '·' || charCode === 8226) finalStr += '-';
            // Allow printable ASCII, some Latin-1, € (\u20AC) and newlines
            else if (charCode === 10 || charCode === 13 || 
                     (charCode >= 32 && charCode <= 126) || 
                     (charCode >= 160 && charCode <= 255) || 
                     charCode === 338 || charCode === 339 || charCode === 376 || charCode === 8364) {
                finalStr += char;
            }
        }
        
        // 5. Clean up multiple spaces (but preserve newlines)
        return finalStr.replace(/[ \t]+/g, ' ').trim();
    } catch (e) {
        console.error("cleanStr error:", e);
        return '';
    }
};

async function testPdfLibEncoding() {
    const data = JSON.parse(fs.readFileSync('all_products_info.json', 'utf8'));
    const doc = await PDFDocument.create();
    const font = await doc.embedFont(StandardFonts.Helvetica);

    let errorCount = 0;
    for (let p of data) {
        try {
            // Replicate exactly what worker does for sections 1-4
            let str1 = cleanStr(p.brand_name) + cleanStr(p.name) + cleanStr(p.sku) + cleanStr(p.category_name);
            
            let specParsed = {};
            try {
                if (p.specifications) {
                    specParsed = typeof p.specifications === 'string' ? JSON.parse(p.specifications) : p.specifications;
                }
            } catch (e) { }
            
            let str2 = '';
            for (const [key, value] of Object.entries(specParsed)) {
                str2 += cleanStr(key) + cleanStr(Array.isArray(value) ? value.join(', ') : value);
            }
            
            let str3 = cleanStr(p.packaging_type);
            let cleanDesc = cleanStr(p.description);

            // To test widthOfTextAtSize, we must split by newline just like in production!
            let allText = str1 + ' ' + str2 + ' ' + str3 + ' ' + cleanDesc;
            const paragraphs = allText.split('\n');
            for (let para of paragraphs) {
                if (!para.trim()) continue;
                const words = para.split(/\s+/);
                for (let word of words) {
                   font.widthOfTextAtSize(word, 12);
                }
            }
        } catch (e) {
            errorCount++;
            if (errorCount <= 5) {
                console.log('Error passing product:', p.slug, e.message);
            }
        }
    }
    console.log('Total encode errors:', errorCount);
}
testPdfLibEncoding();
