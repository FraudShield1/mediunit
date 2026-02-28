'use client';

import React from 'react';
import { FileText, Download, ShieldCheck, AlertCircle, Search } from 'lucide-react';

interface ComplianceVaultProps {
    documents: any[];
}

export default function ComplianceVault({ documents }: ComplianceVaultProps) {
    const [searchTerm, setSearchTerm] = React.useState('');

    const filteredDocs = documents.filter(doc =>
        doc.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
        doc.type.toLowerCase().includes(searchTerm.toLowerCase())
    );

    return (
        <div className="space-y-8 animate-in fade-in duration-500">
            <div className="bg-medical-blue rounded-[2.5rem] p-8 md:p-12 text-white relative overflow-hidden shadow-2xl shadow-medical-blue/30">
                <div className="relative z-10">
                    <h3 className="text-3xl font-black mb-4 uppercase tracking-tight">Dossier Réglementaire Centralisé</h3>
                    <p className="text-medical-blue-light font-medium max-w-2xl text-lg">
                        MediUnit archive automatiquement tous les certificats CE et fiches techniques liés à vos acquisitions cliniques pour faciliter vos audits.
                    </p>
                </div>
                <ShieldCheck className="absolute right-[-20px] top-[-20px] w-64 h-64 text-white/10 rotate-12" />
            </div>

            <div className="bg-white rounded-[2.5rem] p-8 md:p-10 border border-slate-gray-light/10 shadow-xl shadow-medical-blue/5">
                <div className="flex flex-col md:flex-row md:items-center justify-between gap-6 mb-10">
                    <h4 className="text-xl font-black text-slate-gray-dark flex items-center gap-3">
                        <FileText className="w-6 h-6 text-medical-blue" />
                        Index des Documents ({filteredDocs.length})
                    </h4>

                    <div className="relative w-full md:w-80">
                        <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-gray-light" />
                        <input
                            type="text"
                            placeholder="Chercher un certificat..."
                            value={searchTerm}
                            onChange={(e) => setSearchTerm(e.target.value)}
                            className="w-full h-12 pl-12 pr-4 bg-clinic-white rounded-xl border-none focus:ring-2 focus:ring-medical-blue/20 outline-none text-slate-gray-dark text-sm font-medium"
                        />
                    </div>
                </div>

                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    {filteredDocs.map((doc, i) => (
                        <div key={i} className="group p-6 bg-clinic-white rounded-[2rem] border border-slate-gray-light/5 hover:border-medical-blue hover:shadow-lg hover:shadow-medical-blue/5 transition-all">
                            <div className="flex items-center justify-between mb-4">
                                <span className="px-3 py-1.5 bg-medical-blue/10 text-medical-blue text-[10px] font-black rounded-lg uppercase tracking-widest">
                                    {doc.type}
                                </span>
                                <button
                                    onClick={() => window.open(doc.download_url, '_blank')}
                                    className="w-10 h-10 bg-white rounded-xl flex items-center justify-center text-medical-blue shadow-sm border border-slate-gray-light/10 hover:bg-medical-blue hover:text-white transition-all group-hover:scale-110"
                                >
                                    <Download className="w-4 h-4" />
                                </button>
                            </div>
                            <h5 className="font-bold text-slate-gray-dark line-clamp-2 leading-snug mb-2">{doc.name}</h5>
                            <p className="text-[10px] text-slate-gray font-medium flex items-center gap-1 mb-4">
                                <ShieldCheck className="w-3 h-3" />
                                Vérifié par MediUnit Clinical
                            </p>
                            <div className="pt-4 border-t border-slate-gray-light/10">
                                <button
                                    onClick={() => window.open(doc.download_url, '_blank')}
                                    className="text-xs font-black text-medical-blue uppercase tracking-widest hover:underline"
                                >
                                    Visualiser le PDF
                                </button>
                            </div>
                        </div>
                    ))}
                </div>

                {filteredDocs.length === 0 && (
                    <div className="text-center py-20 bg-clinic-white rounded-[2rem] border-2 border-dashed border-slate-gray-light/10">
                        <AlertCircle className="w-12 h-12 text-slate-gray-light mx-auto mb-4 opacity-30" />
                        <h5 className="text-lg font-bold text-slate-gray-dark">Aucun document trouvé</h5>
                        <p className="text-slate-gray text-sm">{searchTerm ? "Ajustez votre recherche." : "Vos documents apparaîtront ici après vos premières commandes."}</p>
                    </div>
                )}
            </div>
        </div>
    );
}
