const { PDFDocument, StandardFonts, rgb } = require('pdf-lib');

const cleanStr = (str) => {
    if (!str) return '';
    let cleaned = String(str)
        .normalize('NFC')
        .replace(/&eacute;/g, 'é')
        .replace(/&egrave;/g, 'è')
        .replace(/&ecirc;/g, 'ê')
        .replace(/&agrave;/g, 'à')
        .replace(/&acirc;/g, 'â')
        .replace(/&icirc;/g, 'î')
        .replace(/&ocirc;/g, 'ô')
        .replace(/&ucirc;/g, 'û')
        .replace(/&ccedil;/g, 'ç')
        .replace(/&nbsp;/g, ' ')
        .replace(/&amp;/g, '&')
        .replace(/&quot;/g, '"')
        .replace(/&lt;/g, '<')
        .replace(/&gt;/g, '>')
        .replace(/<[^>]*>/g, ' ') // Space between tags
        .replace(/\s+/g, ' ')
        .trim();
    return cleaned;
};

async function testPdf() {
    try {
        const pdfDoc = await PDFDocument.create();
        const fontRegular = await pdfDoc.embedFont(StandardFonts.Helvetica);
        const fontBold = await pdfDoc.embedFont(StandardFonts.HelveticaBold);
        
        let page = pdfDoc.addPage([595.28, 841.89]);
        
        const testStrings = [
            "Test basic",
            "É",
            "•", // Standard bullet
            "™",
            "®",
            "°",
            "Seringue",
            "’", // Smart quote
            "“",
            "”",
            "œ"
        ];
        
        let yPos = 800;
        for (let str of testStrings) {
            try {
                // Test cleanStr first just in case
                let cleaned = cleanStr(str);
                console.log(`Trying to draw: ${cleaned}`);
                page.drawText(cleaned, { x: 40, y: yPos, size: 12, font: fontRegular });
                yPos -= 20;
            } catch (e) {
                console.error(`ERROR on string "${str}":`, e.message);
            }
        }
        
        console.log("PDF generation finished successfully without throwing on the test strings.");
    } catch (e) {
        console.error("General error:", e);
    }
}

testPdf();
