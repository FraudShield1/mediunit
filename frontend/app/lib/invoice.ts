import jsPDF from 'jspdf';
import 'jspdf-autotable';

export function generateOrderInvoicePDF(order: any) {
    const doc = new jsPDF() as any;

    // Header
    doc.setFontSize(20);
    doc.setTextColor(2, 132, 199); // medical-blue
    doc.text('MEDIUNIT', 105, 20, { align: 'center' });

    doc.setFontSize(10);
    doc.setTextColor(100);
    doc.text('Logistique & Service Client : Casablanca, Maroc', 105, 28, { align: 'center' });
    doc.setFontSize(8);
    doc.text('Siège Administratif : Lisbonne, Portugal', 105, 33, { align: 'center' });

    doc.setDrawColor(200);
    doc.line(20, 35, 190, 35);

    // Order Info
    doc.setFontSize(12);
    doc.setTextColor(0);
    doc.text(`Facture N: ${order.id.substring(0, 8).toUpperCase()}`, 20, 50);
    doc.text(`Date: ${new Date(order.created_at || Date.now()).toLocaleDateString('fr-FR')}`, 190, 50, { align: 'right' });

    doc.setFontSize(10);
    doc.text(`Client: ${order.user_email || 'Praticien Vérifié'}`, 20, 60);

    // Table
    const tableData = order.items.map((item: any) => [
        item.product_name || `Produit #${item.product_id}`,
        item.quantity.toString(),
        `${item.price_per_unit_at_purchase.toFixed(2)} MAD`,
        `${(item.price_per_unit_at_purchase * item.quantity).toFixed(2)} MAD`
    ]);

    doc.autoTable({
        startY: 70,
        head: [['Article', 'Quantité', 'Prix Unitaire', 'Total']],
        body: tableData,
        theme: 'striped',
        headStyles: { fillStyle: [2, 132, 199], textColor: 255 },
        styles: { fontSize: 9 }
    });

    // Total
    const finalY = (doc as any).lastAutoTable.finalY + 10;
    doc.setFontSize(12);
    doc.setFont('helvetica', 'bold');
    doc.text(`TOTAL À PAYER: ${order.total_amount.toFixed(2)} MAD`, 190, finalY, { align: 'right' });

    // Footer
    doc.setFontSize(8);
    doc.setFont('helvetica', 'italic');
    doc.text('Cette facture est générée numériquement et est valable pour la comptabilité clinique.', 105, 275, { align: 'center' });
    doc.text('Paiement à la livraison (Cash on Delivery) via notre hub logistique Maroc.', 105, 280, { align: 'center' });
    doc.text('Entité Administrative Médicale Régionale : Lisbonne, Portugal.', 105, 285, { align: 'center' });

    doc.save(`Facture_MediUnit_${order.id.substring(0, 8)}.pdf`);
}
