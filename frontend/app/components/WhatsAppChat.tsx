'use client';

import React from 'react';
import { useFlags } from 'launchdarkly-react-client-sdk';
import { MessageCircle } from 'lucide-react';

const WhatsAppChat = () => {
  const whatsappNumber = "+212661364375";

  const message = encodeURIComponent("Bonjour MediUnit, j'aimerais avoir plus d'informations sur vos produits.");
  const whatsappUrl = `https://wa.me/${whatsappNumber}?text=${message}`;

  return (
    <a
      href={whatsappUrl}
      target="_blank"
      rel="noopener noreferrer"
      className="fixed bottom-6 right-6 z-50 flex items-center justify-center w-14 h-14 bg-[#25D366] text-white rounded-full shadow-lg hover:scale-110 transition-transform duration-300 group"
      aria-label="Chat on WhatsApp"
    >
      <div className="absolute -top-12 right-0 bg-white text-slate-800 text-sm font-medium px-3 py-1.5 rounded-lg shadow-md opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none">
        Besoin d&apos;aide ? Chattez avec nous !
        <div className="absolute -bottom-1 right-5 w-2 h-2 bg-white rotate-45"></div>
      </div>
      <MessageCircle size={28} fill="currentColor" />
    </a>
  );
};

export default WhatsAppChat;
