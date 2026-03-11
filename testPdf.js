import { PDFDocument, StandardFonts } from 'pdf-lib';
import fs from 'fs';

async function testPdf() {
    try {
        const pdfDoc = await PDFDocument.create();
        const font = await pdfDoc.embedFont(StandardFonts.Helvetica);
        const page = pdfDoc.addPage();
        
        const testStr = "This is a text with ’ smart quotes and • bullet points.";
        
        page.drawText(testStr, {
            x: 50,
            y: 500,
            size: 12,
            font: font
        });
        
        console.log("Success!");
    } catch (e) {
        console.error("PDF Error:", e.message);
    }
}

testPdf();
