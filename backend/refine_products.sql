INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('ACUTE', 'Teleflex', 'https://www.teleflex.com/en/regulatory-affairs/index.html', 'Arrow International MDR cert valid until Feb 2028.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('Arrow', 'Teleflex', 'https://www.teleflex.com/en/regulatory-affairs/index.html', 'MDR cert valid until Feb 2028.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('COPPER Medical', 'Copper Medical Shenzhen', 'http://www.szcopper.com/', 'CE/ISO 13485. Transitioning to MDR for 2026.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('CULLINAN', 'Cullinan Medical (China)', 'https://www.zamar.care/', 'Associated with Zamar/Cook. Transitioning to MDR.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('Coloplast', 'Coloplast', 'https://www.coloplast.com/products/declarations-of-conformity/', 'Search by Ref/UDI. MDR compliant.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('Egemen', 'Egemen International', 'https://www.egemen.com.tr/en/quality-certificates', 'In transition to MDR.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('FITONE GROUP / Fitone', 'Fitone', 'https://mtender.gov.md/tenders/ocds-b3wdp1-MD-1629897000788/lots/1/lots-documents', 'MDR (EU) 2017/745 Class I DoC for gloves.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('GUILLIN', 'Groupe Guillin', 'https://www.groupeguillin.fr/en/', 'ISO 9001/BRC. Packaging for sterilized devices.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('Greatcare', 'Greatcare Medical', 'http://www.greatcaretube.com/about-certification.html', 'CE/ISO 13485. Transitioning to MDR.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('MEDPLUS', 'Jiangsu Medplus', 'http://www.medplus-js.com/', 'CE (MDD) and ISO 13485. Transitioning to MDR.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('NEOMEDIC', 'Neomedic Ltd', 'https://neomedic.ae/quality-certificates/', 'CE / ISO 13485 (UK MHRA registered).')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('NEOPLAST / Pharmaplast', 'Pharmaplast S.A.E.', 'https://www.pharmaplast-online.com/', 'MDR compliant (EU 2017/745) since 2021.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('OTU', 'OTU Medical', 'https://www.otumed.com/news/', 'FDA cleared. Transitioning to MDR for 2026 EUDAMED.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('PARAMOUNT', 'Paramount Surgimed Ltd', 'http://www.paramountsurgimed.com/quality.html', 'MDR QMS Cert valid through Sep 2025.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('POLY-MEDICURE / POLYMED', 'Poly Medicure Ltd', 'https://www.indiapharmaoutlook.com/news/poly-medicure-gets-eu-mdr-validation-for-54-products-nwid-2679.html', '54 products MDR validated in 2025.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('RUSCH AR / UROLOGIE', 'Teleflex', 'https://www.teleflex.com/en/regulatory-affairs/index.html', 'Teleflex is transitioning all legacy brands to MDR.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('SWAN MORTON', 'Swann-Morton', 'https://www.swann-morton.com/', 'MDR compliant (BSI 2797).')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('Sritrang', 'Sri Trang Gloves', 'https://www.sritranggloves.com/en/product-certificate', 'MDR (EU) 2017/745 Class I & Is (Sterile). ISO 13485 valid to July 2026.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('TUOREN', 'Tuoren Group', 'http://www.tuoren.com/en/', 'MDR valid to July 2028 via Allmed.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
INSERT INTO brand (name, manufacturer, ce_certificate_url, notes) 
VALUES ('ZAMA (Zamar)', 'Zamar Medical', 'https://www.zamar.care/certificates.html', 'CE, ISO 9001/13485 available on site.')
ON CONFLICT(name) DO UPDATE SET 
    manufacturer = EXCLUDED.manufacturer,
    ce_certificate_url = EXCLUDED.ce_certificate_url,
    notes = EXCLUDED.notes;
UPDATE product 
SET 
    name = 'Aiguille De Rachianesthésie À Pointe Crayon G25 - 90mm', 
    slug = 'aiguille-de-rachianesthesie-a-pointe-crayon-g25-90mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPPK-2590';
UPDATE product 
SET 
    name = 'Aiguille De Rachianesthésie Pointe Crayon G25 X 103mm', 
    slug = 'aiguille-de-rachianesthesie-pointe-crayon-g25-x-103mm', 
    specifications = '{"caliber": "25G", "length": "103mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPPK-25103';
UPDATE product 
SET 
    name = 'Aiguille De Rachi Anesthésie Pointe Crayon G27 X 120mm', 
    slug = 'aiguille-de-rachi-anesthesie-pointe-crayon-g27-x-120mm', 
    specifications = '{"Calibre": "27G", "Longueur": "120mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPPK27120';
UPDATE product 
SET 
    name = 'Aiguille De Rachis 25g 120 Mm', 
    slug = 'aiguille-de-rachis-25g-120-mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPPK-25120';
UPDATE product 
SET 
    name = 'Aiguille De Ponction Lombaire G19 - 90mm', 
    slug = 'aiguille-de-ponction-lombaire-g19-90mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPQ-1990';
UPDATE product 
SET 
    name = 'Aiguille De Ponction Lombaire G20 - 90mm', 
    slug = 'aiguille-de-ponction-lombaire-g20-90mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPQ-2090';
UPDATE product 
SET 
    name = 'Aiguille De Ponction Lombaire G22 - 90mm', 
    slug = 'aiguille-de-ponction-lombaire-g22-90mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPQ-2290';
UPDATE product 
SET 
    name = 'Aiguille Ponction Lombaire G22 - 40mm', 
    slug = 'aiguille-ponction-lombaire-g22-40mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPQ-2240';
UPDATE product 
SET 
    name = 'Aiguille Spinale G24- 90mm Biseau Quincke Avec Guide', 
    slug = 'aiguille-spinale-g24-90mm-biseau-quincke-avec-guide', 
    specifications = '{"gauge": "24", "length": "90mm", "bevel type": "Quincke", "introducer needle": "included", "hub": "transparent"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMTSPQK2490';
UPDATE product 
SET 
    name = 'Aiguille De Ponction Lombaire G25 - 90mm', 
    slug = 'aiguille-de-ponction-lombaire-g25-90mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPQ-2590';
UPDATE product 
SET 
    name = 'Aiguille Spinale G25 - 90mm Biseau Quincke Avec Guide', 
    slug = 'aiguille-spinale-g25-90mm-biseau-quincke-avec-guide', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMTSPQK2590';
UPDATE product 
SET 
    name = 'Aiguille Spinale G26- 90mm Biseau Quincke Avec Guide', 
    slug = 'aiguille-spinale-g26-90mm-biseau-quincke-avec-guide', 
    specifications = '{"Gauge": "G26", "Length": "90mm", "Bevel Type": "Quincke"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMTSPQK2690';
UPDATE product 
SET 
    name = 'Aiguille Spinale G27 - 90mm Biseau Quincke Avec Guide', 
    slug = 'aiguille-spinale-g27-90mm-biseau-quincke-avec-guide', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMTSPQK2790';
UPDATE product 
SET 
    name = 'Système De Ventilation Mécanique Life Control', 
    slug = 'systeme-de-ventilation-mecanique-life-control', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'TMT-MREST';
UPDATE product 
SET 
    name = 'Aiguille Rachianesthésie Pointe Crayon 26g 90mm', 
    slug = 'aiguille-rachianesthesie-pointe-crayon-26g-90mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPPK2690';
UPDATE product 
SET 
    name = 'Arrow Cathéter Central Adulte 16 G 20 Cm Mono Lumière', 
    slug = 'arrow-catheter-central-adulte-16-g-20-cm-mono-lumiere', 
    specifications = '{"Gauge": "16", "Length": "20 cm", "Lumen Type": "Mono Lumière"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRCV-50016';
UPDATE product 
SET 
    name = 'Arrow Set Cathéter Voie Centrale Adulte 7 Fr*16 Cm À Double Lumière', 
    slug = 'arrow-set-catheter-voie-centrale-adulte-7-fr16-cm-a-double-lumiere', 
    specifications = '{"Cathéter 2 Lumières": "7 Fr (2,5 mm OD) x 16 cm", "Guide Spring-Wire": "0,64 mm dia. x 45 cm avec Arrow Advancer", "Aiguille d''introduction": "18 Ga. x 6,35 cm RW", "Seringue": "5 mL Luer-Slip", "Dilatateur de tissus": "8,5 Fr (2,8 mm) x 10,2 cm", "Bouchons anti-poussière": "Non ventilés", "Fixation SecondSite™": "Adjustable Hub", "Clamp SecondSite™": "Adjustable Hub"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRCV-12702';
UPDATE product 
SET 
    name = 'Arrow Set Cathéter Voie Centrale Adulte 7 Fr 20 Cm Double Lumière', 
    slug = 'arrow-set-catheter-voie-centrale-adulte-7-fr-20-cm-double-lumiere', 
    specifications = '{"Cathéter 2 Lumières": "7 Fr. (2.5 mm OD) x 20 cm", "Guide-stylet": ".032\" (0.81 mm) x 60 cm", "Aiguille d''introduction": "18 Ga. x 6.35 cm XTW", "Seringue": "5 mL Luer-Slip", "Dilatateur de tissus": "8.5 Fr. (2.8 mm) x 10.2 cm", "Bouchons anti-poussière": "Non ventilés"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRCV-17702';
UPDATE product 
SET 
    name = 'Aiguille De Rachianesthésie Pointe Crayon G27 90mm', 
    slug = 'aiguille-de-rachianesthesie-pointe-crayon-g27-90mm', 
    specifications = '{"Gauge": "27G", "Length": "90mm", "Model": "TMT-SPPK2790"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-SPPK2790';
UPDATE product 
SET 
    name = 'Arrow Set Cathéter Voie Centrale Adulte 7fr X 20cm Triple Lumière', 
    slug = 'arrow-set-catheter-voie-centrale-adulte-7fr-x-20cm-triple-lumiere', 
    specifications = '{"Référence Fabricant": "CV-15703", "Cathéter 3 Lumières": "7 Fr. (2.5 mm OD) x 20 cm", "Guide Spring-Wire": ".032\" (0.81 mm) dia. x 23-5/8\" (60 cm) avec Arrow Advancer et marque ECG", "Aiguille d''introduction": "18 Ga. x 2-1/2\" (6.35 cm) XTW", "Seringue": "5 mL Luer-Slip", "Dilatateur de tissus": "8.5 Fr. (2.8 mm) x 10.2 cm", "Bouchons anti-poussière": "Non ventilés"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRCV-15703-7FR';
UPDATE product 
SET 
    name = 'Arrow Cathéter Voie Centrale Triple Lumière Pédiatrique 4fr 8cm', 
    slug = 'arrow-catheter-voie-centrale-triple-lumiere-pediatrique-4fr-8cm', 
    specifications = '{"Type": "CVC Pédiatrique", "Lumières": "3", "Fr (Charrière)": "4 Fr", "Longueur": "8 cm", "Latex": "Non"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'pediatrie')
WHERE sku = 'ARRCS-15403';
UPDATE product 
SET 
    name = 'Arrow Cathéter Veineux Central Tripl Lumier 5.5fr-8cm', 
    slug = 'arrow-catheter-veineux-central-tripl-lumier-55fr-8cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'pediatrie')
WHERE sku = 'ARRCV-15553';
UPDATE product 
SET 
    name = 'Arrow Set Cathéter Voie Centrale Pédiatrique 5fr*13cm Double Lumière', 
    slug = 'arrow-set-catheter-voie-centrale-pediatrique-5fr13cm-double-lumiere', 
    specifications = '{"Catheter Size": "5 Fr", "Catheter Length": "13 cm", "Outer Diameter": "1.8 mm", "Guide Wire Diameter": "0.53 mm", "Guide Wire Length": "45 cm", "Introducer Needle Size": "20 Ga", "Introducer Needle Length": "3.81 cm", "Catheter Radiopaque Needle Size": "20 Ga", "Syringe Volume": "5 mL", "Tissue Dilator 1 Size": "6 Fr", "Tissue Dilator 1 Length": "7.6 cm", "Tissue Dilator 2 Size": "6 Fr", "Tissue Dilator 2 Length": "4.1 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'pediatrie')
WHERE sku = 'ARRCS-14502';
UPDATE product 
SET 
    name = 'Arrow Set Cathéter Voie Centrale Pédiatrique 4fr*13cm Double Lumière', 
    slug = 'arrow-set-catheter-voie-centrale-pediatrique-4fr13cm-double-lumiere', 
    specifications = '{"Cathéter": "4 Fr. (1.5 mm OD) x 13 cm", "Guide Spring-Wire": ".018\" (0.46 mm) dia. x 17-3/4\" (45 cm)", "Aiguille d''introduction": "22 Ga. x 1-1/16\" (2.67 cm) TW", "Seringue": "3 mL Luer-Slip", "Dilatateur de tissus 1": "5 Fr. (1.8 mm) x 7.5 cm", "Dilatateur de tissus 2": "5 Fr. (1.8 mm) x 4.1 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'pediatrie')
WHERE sku = 'ARRES-14402';
UPDATE product 
SET 
    name = 'Arrow Set Cathéter Voie Centrale Pédiatrique 4 Fr X 8 Cm Double Lumière', 
    slug = 'arrow-set-catheter-voie-centrale-pediatrique-4-fr-x-8-cm-double-lumiere', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'pediatrie')
WHERE sku = 'ARRCS-15402-E';
UPDATE product 
SET 
    name = 'Arrow Cathéter Voie Centrale Quatre Lumières 8,5 Fr 20 Cm', 
    slug = 'arrow-catheter-voie-centrale-quatre-lumieres-85-fr-20-cm', 
    specifications = '{"Cathéter": "4 Lumières, 8.5 Fr (3.0 mm OD) x 20 cm", "Guide Spring-Wire": ".032\" (0.81 mm) dia. x 23-5/8\" (60 cm) avec Arrow Advancer et marque ECG", "Aiguille d''introduction": "18 Ga. x 2-1/2\" (6.35 cm) XTW", "Seringue": "5 mL Luer-Slip", "Dilatateur de tissus": "9 Fr. (3.0 mm) x 10.2 cm", "Bouchons anti-poussière": "Non ventilés", "Fixation SecondSite": "Adjustable Hub", "Clamp SecondSite": "Adjustable Hub"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRCV-15854';
UPDATE product 
SET 
    name = 'Arrow Cathéter Artériel 20ga-5cm', 
    slug = 'arrow-catheter-arteriel-20ga-5cm', 
    specifications = '{"Référence Fabricant": "SAC-00520", "Cathéter": "20 Ga x 5 cm", "Guide Spring-Wire": ".021\" (0.53 mm) dia. x 35 cm", "Aiguille d''introduction": "20 Ga x 4 cm XTW"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRSAC-00520-PBX';
UPDATE product 
SET 
    name = 'Arrow Cathéter Artériel Fémoral 18g*12cm', 
    slug = 'arrow-catheter-arteriel-femoral-18g12cm', 
    specifications = '{"Référence Fabricant": "SAC-01218", "Catheter": "18 Ga x 12 cm Polyuréthane Radio-opaque", "Guide Spring-Wire": ".025\" (0.64 mm) dia. x 13-1/8\" (33 cm)", "Aiguille d''introduction": "18 Ga. x 2\" (5 cm) XTW"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRSAC-01218-PBX';
UPDATE product 
SET 
    name = 'Arrow C.a-radial 20ga-12cm', 
    slug = 'arrow-ca-radial-20ga-12cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRSAC-01220-PBX';
UPDATE product 
SET 
    name = 'Arrow 24ga-5cm Arterial Catheter Set', 
    slug = 'arrow-24ga-5cm-arterial-catheter-set', 
    specifications = '{"Cathéter": "24 Ga x 5 cm Polyuréthane Radio-opaque", "Guide métallique": ".018\" (0.46 mm) dia. x 25 cm", "Cathéter sur aiguille d''introduction": "26 Ga."}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRSAC-00524-PBX';
UPDATE product 
SET 
    name = 'Arrow Cathéter Artériel Radial 22ga-5cm', 
    slug = 'arrow-catheter-arteriel-radial-22ga-5cm', 
    specifications = '{"Catheter": "22 Ga x 5 cm Polyuréthane Radio-opaque", "Spring-Wire Guide": ".021\" (0.53 mm) dia. x 13-3/4\" (35 cm)", "Introducer Needle": "22 Ga x 1-1/2\" (4 cm) XTW"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRSAC-00522-PBX';
UPDATE product 
SET 
    name = 'Arrow Cathéter Artériel Radial 8 Cm 20 Ga', 
    slug = 'arrow-catheter-arteriel-radial-8-cm-20-ga', 
    specifications = '{"Cathéter": "20 Ga x 8 cm Polyuréthane Radio-opaque", "Guide Spring-Wire": ".021\" (0.53 mm) dia. x 13-3/4\" (35 cm)", "Aiguille d''introduction": "20 Ga. x 1-1/2\" (4 cm) XTW"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRSAC-00820-PBX';
UPDATE product 
SET 
    name = 'Arrow Cathéter Artériel Radial Seldinger 18*8cm', 
    slug = 'arrow-catheter-arteriel-radial-seldinger-188cm', 
    specifications = '{"Catheter Size": "18 Ga x 8 cm", "Guide Wire Size": ".025\" (0.64 mm) x 33 cm", "Introducer Needle Size": "18 Ga x 5 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRSAC-00818-PBX';
UPDATE product 
SET 
    name = 'Arrow Set Cathéter Voie Centrale Adulte 14 G 20 Cm Mono Lumière', 
    slug = 'arrow-set-catheter-voie-centrale-adulte-14-g-20-cm-mono-lumiere', 
    specifications = '{"Référence Fabricant": "CV-50014-BF", "Cathéter": "14 Ga. (2.2 mm OD) x 20 cm, Trous latéraux", "Guide Spring-Wire": ".032\" (0.81 mm) dia. x 45 cm avec Arrow Advancer", "Aiguille d''introduction": "18 Ga. x 6.35 cm XTW", "Seringue": "5 mL Luer-Slip", "Dilatateur de tissus": "7 Fr. (2.3 mm) x 10.2 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRCV-50014';
UPDATE product 
SET 
    name = 'Dispositif D''insertion Motorisé Ez-io', 
    slug = 'dispositif-dinsertion-motorise-ez-io', 
    specifications = '{"Référence Fabricant": "9058"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'urgences')
WHERE sku = 'VID9058';
UPDATE product 
SET 
    name = 'Kit D''aiguille + Dispositifs De Fixation 15 Mm', 
    slug = 'kit-daiguille-dispositifs-de-fixation-15-mm', 
    specifications = '{"Référence Fabricant": "9018P-EU-005"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'urgences')
WHERE sku = 'VID9018P-EU-005';
UPDATE product 
SET 
    name = 'Kit D''aiguille + Dispositifs De Fixation 45 Mm', 
    slug = 'kit-daiguille-dispositifs-de-fixation-45-mm', 
    specifications = '{"Référence Fabricant": "9079P-EU-005"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'urgences')
WHERE sku = 'VID9079-EU-005';
UPDATE product 
SET 
    name = 'Sonde D''intubation A/b Ch 3', 
    slug = 'sonde-dintubation-ab-ch-3', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS112480-000030';
UPDATE product 
SET 
    name = 'Sonde D''intubation A/b Ch 2.5', 
    slug = 'sonde-dintubation-ab-ch-25', 
    specifications = '{"Calibre": "CH 2.5"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS112480-000025';
UPDATE product 
SET 
    name = 'Sonde D''intubation Ch 3,50', 
    slug = 'sonde-dintubation-ch-350', 
    specifications = '{"Calibre": "CH 3,50"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS112480-000035';
UPDATE product 
SET 
    name = 'Sonde D''intubation A/b 4.00', 
    slug = 'sonde-dintubation-ab-400', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS112480-000040';
UPDATE product 
SET 
    name = 'Sonde D''intubation A/b 5.5', 
    slug = 'sonde-dintubation-ab-55', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS112480-000055';
UPDATE product 
SET 
    name = 'Arrow Cathéter Veineux Central Triple Lumière 7 Fr - 16 Cm', 
    slug = 'arrow-catheter-veineux-central-triple-lumiere-7-fr-16-cm', 
    specifications = '{"Cathéter 3 Lumières": "7 Fr. (2.5 mm OD) x 16 cm", "Guide Spring-Wire": ".032\" (0.81 mm) dia. x 17-3/4\" (45 cm) avec Arrow Advancer", "Aiguille d''introduction": "18 Ga. x 2-1/2\" (6.35 cm) XTW", "Seringue": "5 mL Luer-Slip", "Dilatateur de tissus": "8.5 Fr. (2.8 mm) x 10.2 cm", "Bouchons anti-poussière": "Non ventilés", "Fixation SecondSite™": "Adjustable Hub", "Clamp SecondSite™": "Adjustable Hub"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'reanimation')
WHERE sku = 'ARRCV-12703';
UPDATE product 
SET 
    name = 'Sonde D''intubation A/b 4.50', 
    slug = 'sonde-dintubation-ab-450', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS112480-000045';
UPDATE product 
SET 
    name = 'Sonde D''intubation A/b 8', 
    slug = 'sonde-dintubation-ab-8', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS112480-000080';
UPDATE product 
SET 
    name = 'Sonde D''intubation S/b 2.00', 
    slug = 'sonde-dintubation-sb-200', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS100380-000020';
UPDATE product 
SET 
    name = 'Sonde D''intubation A/b 8.5', 
    slug = 'sonde-dintubation-ab-85', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS112480-000085';
UPDATE product 
SET 
    name = 'Sonde D''intubation S/b 2,50', 
    slug = 'sonde-dintubation-sb-250', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS100380-000025';
UPDATE product 
SET 
    name = 'Sonde D''intubation 3 S/b', 
    slug = 'sonde-dintubation-3-sb', 
    specifications = '{"Material": "PVC", "Size": "10Fr"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS100380-000030';
UPDATE product 
SET 
    name = 'Sonde D''intubation S/b 3.50', 
    slug = 'sonde-dintubation-sb-350', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS100380-000035';
UPDATE product 
SET 
    name = 'Sonde D''intubation 4 S/b', 
    slug = 'sonde-dintubation-4-sb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS100380-000040';
UPDATE product 
SET 
    name = 'Sonde D''intubation S/b 4.5', 
    slug = 'sonde-dintubation-sb-45', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS100380-000045';
UPDATE product 
SET 
    name = 'Sonde D''intubation Subglottique 5', 
    slug = 'sonde-dintubation-subglottique-5', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS100380-000050';
UPDATE product 
SET 
    name = 'Sonde D''intubation Armée 3.5', 
    slug = 'sonde-dintubation-armee-35', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104202-000035';
UPDATE product 
SET 
    name = 'Sonde D''intubation Armée 5', 
    slug = 'sonde-dintubation-armee-5', 
    specifications = '{"size": "5", "material": "Reinforced medical-grade material"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104201-000050';
UPDATE product 
SET 
    name = 'Kit D''aiguille Et Fixation 25 Mm', 
    slug = 'kit-daiguille-et-fixation-25-mm', 
    specifications = '{"Référence Fabricant": "9001P-EU-005", "Longueur de l''aiguille": "25 mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'urgences')
WHERE sku = 'VID9001P-EU-005';
UPDATE product 
SET 
    name = 'Sonde D''intubation Armée 6', 
    slug = 'sonde-dintubation-armee-6', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104201-000060';
UPDATE product 
SET 
    name = 'Sonde D''intubation Armée 6.5', 
    slug = 'sonde-dintubation-armee-65', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104201-000065';
UPDATE product 
SET 
    name = 'Sonde D''intubation Armée 7.5', 
    slug = 'sonde-dintubation-armee-75', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104201-000075';
UPDATE product 
SET 
    name = 'Sonde D''intubation Armée 7', 
    slug = 'sonde-dintubation-armee-7', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104201-000070';
UPDATE product 
SET 
    name = 'Sonde D''intubation Trachéale Armée 4mm', 
    slug = 'sonde-dintubation-tracheale-armee-4mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104201-000040';
UPDATE product 
SET 
    name = 'Kit De Sonde D''intubation Sélective Gauche Ch41', 
    slug = 'kit-de-sonde-dintubation-selective-gauche-ch41', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS116100-000410';
UPDATE product 
SET 
    name = 'Sonde D''intubation Armée 8', 
    slug = 'sonde-dintubation-armee-8', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104201-000080';
UPDATE product 
SET 
    name = 'Sonde D''intubation Tracheale Armée 4.5mm', 
    slug = 'sonde-dintubation-tracheale-armee-45mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104201-000045';
UPDATE product 
SET 
    name = 'Kit De Sonde D''intubation Sélective Gauche Ch26', 
    slug = 'kit-de-sonde-dintubation-selective-gauche-ch26', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS116100-000260';
UPDATE product 
SET 
    name = 'Kit De Sonde D''intubation Sélective Droite Ch39', 
    slug = 'kit-de-sonde-dintubation-selective-droite-ch39', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS116200-000390';
UPDATE product 
SET 
    name = 'Sonde Sélective Droite Ch 28', 
    slug = 'sonde-selective-droite-ch-28', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS116200-000280';
UPDATE product 
SET 
    name = 'Sonde Sélective Droite Ch 37', 
    slug = 'sonde-selective-droite-ch-37', 
    specifications = '{"Calibre": "Charrière 37"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS116200-000370';
UPDATE product 
SET 
    name = 'Fast Track Jetable 3 Pour Enfants 30 À 50 Kg', 
    slug = 'fast-track-jetable-3-pour-enfants-30-a-50-kg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'LMA135130';
UPDATE product 
SET 
    name = 'Fast Track Jetable 4 Pour Adultes 50 À 70 Kg', 
    slug = 'fast-track-jetable-4-pour-adultes-50-a-70-kg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'LMA135140';
UPDATE product 
SET 
    name = 'Canule De Guedel N°000 Sans Couleur', 
    slug = 'canule-de-guedel-n000-sans-couleur', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS124900-000001';
UPDATE product 
SET 
    name = 'Canule De Guedel N°1 Noir', 
    slug = 'canule-de-guedel-n1-noir', 
    specifications = '{"Size": "N°1", "Color": "Noir"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS124900-000010';
UPDATE product 
SET 
    name = 'Canule De Guedel N°3 Vert', 
    slug = 'canule-de-guedel-n3-vert', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS124900-000030';
UPDATE product 
SET 
    name = 'Canule De Guedel N°0 Bleu', 
    slug = 'canule-de-guedel-n0-bleu', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS124900-000003';
UPDATE product 
SET 
    name = 'Canule De Guedel N°4 Jaune', 
    slug = 'canule-de-guedel-n4-jaune', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS124900-000040';
UPDATE product 
SET 
    name = 'Canule De Guedel N°00 Rose', 
    slug = 'canule-de-guedel-n00-rose', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS124900-000002';
UPDATE product 
SET 
    name = 'Canule De Guedel N°2 Blanc', 
    slug = 'canule-de-guedel-n2-blanc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS124900-000020';
UPDATE product 
SET 
    name = 'Canule De Trachéotomie Avec Ballonnet Ch 3,5', 
    slug = 'canule-de-tracheotomie-avec-ballonnet-ch-35', 
    specifications = '{"caliber": "CH 3.5"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS121610-000035';
UPDATE product 
SET 
    name = 'Canule De Trachéotomie A/b Ch 4', 
    slug = 'canule-de-tracheotomie-ab-ch-4', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS121610-000040';
UPDATE product 
SET 
    name = 'Canule De Guedel N°5 Rouge', 
    slug = 'canule-de-guedel-n5-rouge', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS124900-000050';
UPDATE product 
SET 
    name = 'Canule De Trachéotomie A/b Ch 5', 
    slug = 'canule-de-tracheotomie-ab-ch-5', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS121610-000050';
UPDATE product 
SET 
    name = 'Canule De Trachéotomie A/b Ch 6,5', 
    slug = 'canule-de-tracheotomie-ab-ch-65', 
    specifications = '{"Type": "A/B", "Calibre": "CH 6.5"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS121610-000065';
UPDATE product 
SET 
    name = 'Kit Tracheofix Sans Ballonnet 11', 
    slug = 'kit-tracheofix-sans-ballonnet-11', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS121415-000110';
UPDATE product 
SET 
    name = 'Canule De Trachéotomie A/b Ch 10', 
    slug = 'canule-de-tracheotomie-ab-ch-10', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS121610-000100';
UPDATE product 
SET 
    name = 'Kit Tracheofix Sans Ballonet 10', 
    slug = 'kit-tracheofix-sans-ballonet-10', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'orl')
WHERE sku = 'RUS121415-000100';
UPDATE product 
SET 
    name = 'Kit Tracheofix Sans Ballonet 8,5', 
    slug = 'kit-tracheofix-sans-ballonet-85', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS121415-000085';
UPDATE product 
SET 
    name = 'Kit Tracheofix Sans Ballonnet 7', 
    slug = 'kit-tracheofix-sans-ballonnet-7', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'orl')
WHERE sku = 'RUS121415-000070';
UPDATE product 
SET 
    name = 'Kit Tracheofix Avec Ballonet Et Phonation 7', 
    slug = 'kit-tracheofix-avec-ballonet-et-phonation-7', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'orl')
WHERE sku = 'RUS121420-000070';
UPDATE product 
SET 
    name = 'Sonde D''intubation Armée 5.5', 
    slug = 'sonde-dintubation-armee-55', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS104201-000055';
UPDATE product 
SET 
    name = 'Kit Tracheofix Avec Ballonet Et Phonation Taille 10', 
    slug = 'kit-tracheofix-avec-ballonet-et-phonation-taille-10', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'orl')
WHERE sku = 'RUS121420-000010';
UPDATE product 
SET 
    name = 'Kit Tracheofix Avec Ballonet Et Phonation 11', 
    slug = 'kit-tracheofix-avec-ballonet-et-phonation-11', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'orl')
WHERE sku = 'RUS121420-000011';
UPDATE product 
SET 
    name = 'Montage De Cathéter 20cm Tubulure Lisse Sortie 22m/15f', 
    slug = 'montage-de-catheter-20cm-tubulure-lisse-sortie-22m15f', 
    specifications = '{"Length": "20cm", "Tubing Type": "Smoothbore", "Output Connections": "22m/15f"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS191014-000200';
UPDATE product 
SET 
    name = 'Monture De Cathéter 15cm Tubulure Rainurée Sortie 22m/15f', 
    slug = 'monture-de-catheter-15cm-tubulure-rainuree-sortie-22m15f', 
    specifications = '{"Length": "15 cm", "Tubing Type": "Rainurée/Smoothbore", "Outlet Size": "22m/15f"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS191014-000150';
UPDATE product 
SET 
    name = 'Kit De Trachéostomie Percutanée Ch 8', 
    slug = 'kit-de-tracheostomie-percutanee-ch-8', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS121555-000080';
UPDATE product 
SET 
    name = 'Montage De Cathéter 10cm Tube Lisse Sortie 22m/15f', 
    slug = 'montage-de-catheter-10cm-tube-lisse-sortie-22m15f', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS191014-000100';
UPDATE product 
SET 
    name = 'Filtre Droit Combiné Anti-bactérien Humidificateur', 
    slug = 'filtre-droit-combine-anti-bacterien-humidificateur', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS19402T';
UPDATE product 
SET 
    name = 'Filtre Coude Combiné Échangeur Anti-bactérien Humidificateur Droit/ventilation-humide', 
    slug = 'filtre-coude-combine-echangeur-anti-bacterien-humidificateur-droitventilation-humide', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'RUS18402T';
UPDATE product 
SET 
    name = 'Filtre Combiné Échange Nourrissons Humidificateur De Ventilation Avec Volume Courant De 11 À 50 Ml', 
    slug = 'filtre-combine-echange-nourrissons-humidificateur-de-ventilation-avec-volume-courant-de-11-a-50-ml', 
    specifications = '{"Volume courant": "11 à 50 ml"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'neonatologie')
WHERE sku = 'RUS10121';
UPDATE product 
SET 
    name = 'Filtre Combiné Échangeur Pédiatrique Humidificateur Ventilation Avec Volume Courant De 50 À 250 Ml', 
    slug = 'filtre-combine-echangeur-pediatrique-humidificateur-ventilation-avec-volume-courant-de-50-a-250-ml', 
    specifications = '{"Volume Courant": "50 à 250 ml"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pediatrie')
WHERE sku = 'RUS11011T';
UPDATE product 
SET 
    name = 'Coloplast Ceinture Brava Taille Standard', 
    slug = 'coloplast-ceinture-brava-taille-standard', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL004215';
UPDATE product 
SET 
    name = 'Coloplast Baguette De Stomie Sterile', 
    slug = 'coloplast-baguette-de-stomie-sterile', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL128140';
UPDATE product 
SET 
    name = 'Coloplast Anneau Modelable Brava 4.2 Mm', 
    slug = 'coloplast-anneau-modelable-brava-42-mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL120425';
UPDATE product 
SET 
    name = 'Nez Artificiel Adulte (track Vent) Avec Connecteur À Oxygène Universel Vc > 50 Ml', 
    slug = 'nez-artificiel-adulte-track-vent-avec-connecteur-a-oxygene-universel-vc-50-ml', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS41312U';
UPDATE product 
SET 
    name = 'Coloplast Clip Pour Poche De Stomie', 
    slug = 'coloplast-clip-pour-poche-de-stomie', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL095000';
UPDATE product 
SET 
    name = 'Coloplast Conveen Etui Penien L', 
    slug = 'coloplast-conveen-etui-penien-l', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL051350';
UPDATE product 
SET 
    name = 'Coloplast Conveen Etui Penien M', 
    slug = 'coloplast-conveen-etui-penien-m', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL051300';
UPDATE product 
SET 
    name = 'Coloplast Conveen Etui Penien Xl', 
    slug = 'coloplast-conveen-etui-penien-xl', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL051400';
UPDATE product 
SET 
    name = 'Coloplast Easicath Pédiatrique Ch10 Pour Enfants 40 Cm', 
    slug = 'coloplast-easicath-pediatrique-ch10-pour-enfants-40-cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'pediatrie')
WHERE sku = 'COL053500';
UPDATE product 
SET 
    name = 'Coloplast Pate Brava Sans Alcool', 
    slug = 'coloplast-pate-brava-sans-alcool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL120500';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo Sensura 2 Pièces 50 Mm Opaque', 
    slug = 'coloplast-poche-colo-sensura-2-pieces-50-mm-opaque', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL103650';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo Ileo 2 Pièces Alterna Free 40 Mm Transparente', 
    slug = 'coloplast-poche-colo-ileo-2-pieces-alterna-free-40-mm-transparente', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL139740';
UPDATE product 
SET 
    name = 'Pâte Coloplast', 
    slug = 'pate-coloplast', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL026500';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo Sensura 2 Pièces 60 Mm Opaque', 
    slug = 'coloplast-poche-colo-sensura-2-pieces-60-mm-opaque', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL103660';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo Sensura 2 Pièces 70 Mm Opaque', 
    slug = 'coloplast-poche-colo-sensura-2-pieces-70-mm-opaque', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL103670';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo/ileo 1 Pièce Alterna Free 75 Mm Transp', 
    slug = 'coloplast-poche-coloileo-1-piece-alterna-free-75-mm-transp', 
    specifications = '{"Diameter": "75 mm", "Type": "Poche colo/iléostomie 1 pièce"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL175010';
UPDATE product 
SET 
    name = 'Fast Track Jetable 5 Pour Adultes 70 À 100 Kg', 
    slug = 'fast-track-jetable-5-pour-adultes-70-a-100-kg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'LMA135150';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo/ileo 1 Piece Enfant Alterna Opaque', 
    slug = 'coloplast-poche-coloileo-1-piece-enfant-alterna-opaque', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL174660';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo/ileo 1 Pièce Fermée Alterna 70mm Opaque', 
    slug = 'coloplast-poche-coloileo-1-piece-fermee-alterna-70mm-opaque', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL174050';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo/ileo 2p Transparente 70mm', 
    slug = 'coloplast-poche-coloileo-2p-transparente-70mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL103871';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo/ileo 2 Pièces Fermée Alterna Free 60mm Opaque', 
    slug = 'coloplast-poche-coloileo-2-pieces-fermee-alterna-free-60mm-opaque', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL176520';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo/ileo 2p Transparente 60mm', 
    slug = 'coloplast-poche-coloileo-2p-transparente-60mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL103860';
UPDATE product 
SET 
    name = 'Coloplast Poche Uro 2 Pièces Alterna Free Multi Chambres 50mm Transp', 
    slug = 'coloplast-poche-uro-2-pieces-alterna-free-multi-chambres-50mm-transp', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL142280';
UPDATE product 
SET 
    name = 'Coloplast Poche Uro 1 Piece Enfant Alterna Transp', 
    slug = 'coloplast-poche-uro-1-piece-enfant-alterna-transp', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL174800';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo/ileo 2p Transparente 50 Mm', 
    slug = 'coloplast-poche-coloileo-2p-transparente-50-mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL103850';
UPDATE product 
SET 
    name = 'Coloplast Poche Colostomie Ileostomie Sensura 1piece Transparente', 
    slug = 'coloplast-poche-colostomie-ileostomie-sensura-1piece-transparente', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL155700';
UPDATE product 
SET 
    name = 'Coloplast Poche Uro 1 Pièce Alterna Free Blanc', 
    slug = 'coloplast-poche-uro-1-piece-alterna-free-blanc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL175210';
UPDATE product 
SET 
    name = 'Coloplast Poche Post-op Avec Fenetre Sensura', 
    slug = 'coloplast-poche-post-op-avec-fenetre-sensura', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL190210';
UPDATE product 
SET 
    name = 'Coloplast Poche Colostomie 1 Piece Opaque Sensura', 
    slug = 'coloplast-poche-colostomie-1-piece-opaque-sensura', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL155800';
UPDATE product 
SET 
    name = 'Coloplast Poche Uro 2 Pièces Alterna Free Multi Chambres 60mm Blanc', 
    slug = 'coloplast-poche-uro-2-pieces-alterna-free-multi-chambres-60mm-blanc', 
    specifications = '{"Diamètre": "60mm", "Couleur": "Blanc"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL142260';
UPDATE product 
SET 
    name = 'Coloplast Poche Uro 2 Pièces Alterna Free Multichambre 40 Mm Blanc', 
    slug = 'coloplast-poche-uro-2-pieces-alterna-free-multichambre-40-mm-blanc', 
    specifications = '{"dimension": "40 mm", "color": "blanc"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL142240';
UPDATE product 
SET 
    name = 'Coloplast Poche Uro Alterna Free 2 Pièces 50 Mm', 
    slug = 'coloplast-poche-uro-alterna-free-2-pieces-50-mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL142250';
UPDATE product 
SET 
    name = 'Coloplast Poudre Pour Stomie Brava', 
    slug = 'coloplast-poudre-pour-stomie-brava', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL019075';
UPDATE product 
SET 
    name = 'Coloplast Drap Protecteur 15x15', 
    slug = 'coloplast-drap-protecteur-15x15', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL032155';
UPDATE product 
SET 
    name = 'Coloplast Sonde Easicath Prélubrifiee Pédiatrique Ch 08', 
    slug = 'coloplast-sonde-easicath-prelubrifiee-pediatrique-ch-08', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL050080';
UPDATE product 
SET 
    name = 'Coloplast Sonde Easicath Pré-lubrifiée Pédiatrique Ch 10', 
    slug = 'coloplast-sonde-easicath-pre-lubrifiee-pediatrique-ch-10', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL050100';
UPDATE product 
SET 
    name = 'Coloplast Sonde Easicath Prelubrifiee Pour Femme Ch12', 
    slug = 'coloplast-sonde-easicath-prelubrifiee-pour-femme-ch12', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL053720';
UPDATE product 
SET 
    name = 'Coloplast Sonde Easicath Prelubrifiee Pour Homme Ch12', 
    slug = 'coloplast-sonde-easicath-prelubrifiee-pour-homme-ch12', 
    specifications = '{"Size": "CH12"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL053520';
UPDATE product 
SET 
    name = 'Coloplast Sonde Easicath Prelubrifiee Pour Femme Ch 14', 
    slug = 'coloplast-sonde-easicath-prelubrifiee-pour-femme-ch-14', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL053740';
UPDATE product 
SET 
    name = 'Coloplast Sonde Easicath Prélubrifiée Pour Homme Ch 16', 
    slug = 'coloplast-sonde-easicath-prelubrifiee-pour-homme-ch-16', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL053560';
UPDATE product 
SET 
    name = 'Coloplast Sonde Easicath Prelubrifiee Pour Homme Ch14', 
    slug = 'coloplast-sonde-easicath-prelubrifiee-pour-homme-ch14', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL053540';
UPDATE product 
SET 
    name = 'Coloplast Sonde Easicath Prelubriiee Pour Femme Ch16', 
    slug = 'coloplast-sonde-easicath-prelubriiee-pour-femme-ch16', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL053760';
UPDATE product 
SET 
    name = 'Coloplast Sonde Pour Sondage Intermittent Pour Homme Ch.14', 
    slug = 'coloplast-sonde-pour-sondage-intermittent-pour-homme-ch14', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL284140';
UPDATE product 
SET 
    name = 'Kit Tracheofix Avec Ballonet Et Avec Phonation 8,5', 
    slug = 'kit-tracheofix-avec-ballonet-et-avec-phonation-85', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'RUS121420-000085';
UPDATE product 
SET 
    name = 'Coloplast Sonde Pour Sondage Intermittent Pour Femme Ch.12', 
    slug = 'coloplast-sonde-pour-sondage-intermittent-pour-femme-ch12', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL285120';
UPDATE product 
SET 
    name = 'Coloplast Sonde Pour Sondage Intermittent Pour Femme Ch.14', 
    slug = 'coloplast-sonde-pour-sondage-intermittent-pour-femme-ch14', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL285140';
UPDATE product 
SET 
    name = 'Coloplast Sonde Pour Sondage Intermittent Pour Femme Ch.10', 
    slug = 'coloplast-sonde-pour-sondage-intermittent-pour-femme-ch10', 
    specifications = '{"size": "CH.10", "designed_for": "women", "type": "intermittent catheter"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL287100';
UPDATE product 
SET 
    name = 'Coloplast Sonde Pour Sondage Intermittent Pour Enfant Ch.8', 
    slug = 'coloplast-sonde-pour-sondage-intermittent-pour-enfant-ch8', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL287080';
UPDATE product 
SET 
    name = 'Coloplast Sonde Pour Sondage Intermittent Pour Homme Ch.12', 
    slug = 'coloplast-sonde-pour-sondage-intermittent-pour-homme-ch12', 
    specifications = '{"size": "12 French gauge"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL284120';
UPDATE product 
SET 
    name = 'Coloplast Sonde Pour Sondage Intermittent Pour Enfant Ch.6', 
    slug = 'coloplast-sonde-pour-sondage-intermittent-pour-enfant-ch6', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'pediatrie')
WHERE sku = 'COL287060';
UPDATE product 
SET 
    name = 'Coloplast Sonde Pour Sondage Intermittent Pour Homme Ch10', 
    slug = 'coloplast-sonde-pour-sondage-intermittent-pour-homme-ch10', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL284100';
UPDATE product 
SET 
    name = 'Coloplast Support Alterna Upgrade Extra 40mm', 
    slug = 'coloplast-support-alterna-upgrade-extra-40mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL177160';
UPDATE product 
SET 
    name = 'Coloplast Support Alterna Upgrade Extra 60mm', 
    slug = 'coloplast-support-alterna-upgrade-extra-60mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL177200';
UPDATE product 
SET 
    name = 'Coloplast Support Alterna Upgrade Extra 50mm', 
    slug = 'coloplast-support-alterna-upgrade-extra-50mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL177190';
UPDATE product 
SET 
    name = 'Coloplast Support Alterna Upgrade Wl 40mm', 
    slug = 'coloplast-support-alterna-upgrade-wl-40mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL177010';
UPDATE product 
SET 
    name = 'Arrow Set Catheter D''hemodialyse Double Lumiere D 12f*20cm', 
    slug = 'arrow-set-catheter-dhemodialyse-double-lumiere-d-12f20cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'hemodialyse')
WHERE sku = 'ARRCV-15122F12F';
UPDATE product 
SET 
    name = 'Coloplast Support Alterna Upgrade Wl 50mm', 
    slug = 'coloplast-support-alterna-upgrade-wl-50mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL177060';
UPDATE product 
SET 
    name = 'Arrow Catheter Hémodialyse Pédiatrique 8fr 11cm', 
    slug = 'arrow-catheter-hemodialyse-pediatrique-8fr-11cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'hemodialyse')
WHERE sku = 'ARRCD-13902';
UPDATE product 
SET 
    name = 'Arrow Catheter Hemodialyse 12f Longueur 16 Cm', 
    slug = 'arrow-catheter-hemodialyse-12f-longueur-16-cm', 
    specifications = '{"French size": "12F", "Length": "16 Cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Arrow'),
    category_id = (SELECT id FROM category WHERE slug = 'hemodialyse')
WHERE sku = 'ARRCV-12122F';
UPDATE product 
SET 
    name = 'Coloplast Support Convex 60/15-43', 
    slug = 'coloplast-support-convex-6015-43', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL177500';
UPDATE product 
SET 
    name = 'Coloplast Support Alterna Upgrade Wl 60mm', 
    slug = 'coloplast-support-alterna-upgrade-wl-60mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL177100';
UPDATE product 
SET 
    name = 'Coloplast Support Colo/ileo Sensura 70mm', 
    slug = 'coloplast-support-coloileo-sensura-70mm', 
    specifications = '{"Diamètre": "70 mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL100451';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley A/b En Latex Jaune De Ch 12', 
    slug = 'rusch-urologie-sonde-de-foley-ab-en-latex-jaune-de-ch-12', 
    specifications = '{"size": "Ch 12", "material": "Latex", "color": "Yellow"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY   A/B   EN  LATEX  JAUNE  DE  CH 12';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley A/b En Latex Jaune De Ch 14', 
    slug = 'rusch-urologie-sonde-de-foley-ab-en-latex-jaune-de-ch-14', 
    specifications = '{"Material": "Latex", "Color": "Jaune", "Size": "CH 14"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY   A/B   EN  LATEX  JAUNE  DE  CH 14';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley A/b En Latex Jaune De Ch 22', 
    slug = 'rusch-urologie-sonde-de-foley-ab-en-latex-jaune-de-ch-22', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY   A/B   EN  LATEX  JAUNE  DE  CH 22';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley A/b En Silicone Ch 6', 
    slug = 'rusch-urologie-sonde-de-foley-ab-en-silicone-ch-6', 
    specifications = '{"Size": "CH 6", "Material": "Silicone"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE  DE  FOLEY A/B EN SILICONE  CH 6';
UPDATE product 
SET 
    name = 'Coloplast Poche Colo/ileo 1 Pièce Alterna Free 75 Mm Opaque', 
    slug = 'coloplast-poche-coloileo-1-piece-alterna-free-75-mm-opaque', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'colostomie-stomatherapie')
WHERE sku = 'COL175000';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley A/b En Latex Jaune De Ch 20', 
    slug = 'rusch-urologie-sonde-de-foley-ab-en-latex-jaune-de-ch-20', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY   A/B   EN  LATEX  JAUNE  DE  CH 20';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley A/b En Latex Jaune De Ch 18', 
    slug = 'rusch-urologie-sonde-de-foley-ab-en-latex-jaune-de-ch-18', 
    specifications = '{"Size": "18 Fr", "Material": "Latex", "Color": "Yellow"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY   A/B   EN  LATEX  JAUNE  DE  CH 18';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley A/b En Silicone Ch 8', 
    slug = 'rusch-urologie-sonde-de-foley-ab-en-silicone-ch-8', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE  DE  FOLEY A/B EN SILICONE  CH 8';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley A/b En Silicone Ch 10', 
    slug = 'rusch-urologie-sonde-de-foley-ab-en-silicone-ch-10', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE  DE  FOLEY A/B EN SILICONE  CH 10';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley En Silicone Ch 16', 
    slug = 'rusch-urologie-sonde-de-foley-en-silicone-ch-16', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY EN SILICONE CH 16';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley En Silicone Ch 14', 
    slug = 'rusch-urologie-sonde-de-foley-en-silicone-ch-14', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY EN SILICONE CH 14';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley En Silicone Ch 12', 
    slug = 'rusch-urologie-sonde-de-foley-en-silicone-ch-12', 
    specifications = '{"diameter": "12 Ch"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY EN SILICONE CH 12';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley En Silicone Ch 18', 
    slug = 'rusch-urologie-sonde-de-foley-en-silicone-ch-18', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY EN SILICONE CH 18';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley En Silicone Ch 20', 
    slug = 'rusch-urologie-sonde-de-foley-en-silicone-ch-20', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY EN SILICONE CH 20';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde Ureterale Bout En Biseau Ch 7 Long 70 Cm', 
    slug = 'rusch-urologie-sonde-ureterale-bout-en-biseau-ch-7-long-70-cm', 
    specifications = '{"Tip": "Bout en biseau", "French Size": "Ch 7", "Length": "70 Cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE URETERALE BOUT EN BISEAU  CH 7 LONG 70 CM';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde Simple J Bout Ouvert Ch7 L=90cm', 
    slug = 'rusch-urologie-sonde-simple-j-bout-ouvert-ch7-l90cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE SIMPLE J BOUT OUVERT CH7   L=90CM';
UPDATE product 
SET 
    name = 'De Redon Ch 16 Ref9006', 
    slug = 'de-redon-ch-16-ref9006', 
    specifications = '{"Length Options": "50 to 170 cm", "Size Options": "6 to 18 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141016';
UPDATE product 
SET 
    name = 'Rusch Urologie Kit De Nephrostomie 2 Etapes Superglide Ch 10', 
    slug = 'rusch-urologie-kit-de-nephrostomie-2-etapes-superglide-ch-10', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'KIT DE  NEPHROSTOMIE 2  ETAPES  SUPERGLIDE CH 10';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde Jj Pediatrique Bout Ouvert Ch 4,8 / 15 Cm', 
    slug = 'rusch-urologie-sonde-jj-pediatrique-bout-ouvert-ch-48-15-cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE JJ  PEDIATRIQUE BOUT OUVERT CH 4,8 /  15 cm';
UPDATE product 
SET 
    name = 'Ombilical', 
    slug = 'ombilical', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL9022';
UPDATE product 
SET 
    name = 'Rusch Urologie Kit De Nephrostomie 2 Etapes Superglide Ch 08', 
    slug = 'rusch-urologie-kit-de-nephrostomie-2-etapes-superglide-ch-08', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'KIT DE NEPHROSTOMIE   2 ETAPES  SUPERGLIDE  CH 08';
UPDATE product 
SET 
    name = 'De Redon Ch 14 Ref9006', 
    slug = 'de-redon-ch-14-ref9006', 
    specifications = '{"Length": "50 to 170 cm", "Size": "6 to 18 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141014';
UPDATE product 
SET 
    name = 'De Redon Ch 12 Ref9006', 
    slug = 'de-redon-ch-12-ref9006', 
    specifications = '{"Lengths": "50 to 170 cm", "Sizes": "6 to 18 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141012';
UPDATE product 
SET 
    name = 'De Redon Ch 10 Ref9006', 
    slug = 'de-redon-ch-10-ref9006', 
    specifications = '{"Length": "50 to 170 cm", "Size": "6 to 18 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141010';
UPDATE product 
SET 
    name = 'De Redon Ch 18 Ref9006', 
    slug = 'de-redon-ch-18-ref9006', 
    specifications = '{"lengths": "50 to 170 cm", "sizes": "6 to 18 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141018';
UPDATE product 
SET 
    name = 'Thoracique Ch 10', 
    slug = 'thoracique-ch-10', 
    specifications = '{"length": "45 cm", "sizes": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141310';
UPDATE product 
SET 
    name = 'De Redon Ch 8 Ref9006', 
    slug = 'de-redon-ch-8-ref9006', 
    specifications = '{"Material": "PVC", "Sizes": "6 to 18 FG", "Lengths": "50 to 170 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141008';
UPDATE product 
SET 
    name = 'Thoracique Ch 16 Ref9008a', 
    slug = 'thoracique-ch-16-ref9008a', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141316';
UPDATE product 
SET 
    name = 'Thoracique Ch 30 Ref9008a', 
    slug = 'thoracique-ch-30-ref9008a', 
    specifications = '{"length": "45 cm", "size_range": "8 FG to 40 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141330';
UPDATE product 
SET 
    name = 'Thoracique Ch 28 Ref9008a', 
    slug = 'thoracique-ch-28-ref9008a', 
    specifications = '{"Length": "45 cm", "Sizes": "8 FG to 40 FG", "Material": "PVC, flexible and frosted"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141328';
UPDATE product 
SET 
    name = 'Thoracique Ch 22', 
    slug = 'thoracique-ch-22', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141322';
UPDATE product 
SET 
    name = 'Thoracique Ch 26 Ref9008a', 
    slug = 'thoracique-ch-26-ref9008a', 
    specifications = '{"Length": "45 cm", "Sizes": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141326';
UPDATE product 
SET 
    name = 'Thoracique Ch 14', 
    slug = 'thoracique-ch-14', 
    specifications = '{"length": "45 cm", "sizes_range": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141314';
UPDATE product 
SET 
    name = 'Drain Thoracique Ch 20', 
    slug = 'drain-thoracique-ch-20', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141320';
UPDATE product 
SET 
    name = 'Thoracique Ch 24 Ref9008a', 
    slug = 'thoracique-ch-24-ref9008a', 
    specifications = '{"length": "45 cm", "sizes": "8 FG to 40 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141324';
UPDATE product 
SET 
    name = 'Thoracique Ch 18 Ref9008a', 
    slug = 'thoracique-ch-18-ref9008a', 
    specifications = '{"Length": "45 cm", "Sizes": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141318';
UPDATE product 
SET 
    name = 'Thoracique Ch 32 Ref9008a', 
    slug = 'thoracique-ch-32-ref9008a', 
    specifications = '{"length": "45 cm", "sizes": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141332';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 30', 
    slug = 'thoracique-de-joly-ch-30', 
    specifications = '{"Length": "45 cm", "Sizes": "8 FG to 40 FG", "Depth Graduations Straight Catheter": "2 cm", "Depth Graduations Angled/Trocar Catheter": "5, 10, 15, and 20 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141230';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 10 Ref9009', 
    slug = 'thoracique-de-joly-ch-10-ref9009', 
    specifications = '{"Length": "45 cm", "Sizes": "8 FG to 40 FG", "Curved Sizes": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141210';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 12', 
    slug = 'thoracique-de-joly-ch-12', 
    specifications = '{"Length": "45 cm", "Size Range": "8 FG to 42 FG", "Angle for Angled Catheter": "90 degrees"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141212';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 26', 
    slug = 'thoracique-de-joly-ch-26', 
    specifications = '{"Length": "45 cm", "Sizes": "8 FG to 40 FG", "Depth Graduations (Straight)": "Every 2 cm", "Depth Graduations (Curved/Trocar)": "5, 10, 15, and 20 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141226';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 14', 
    slug = 'thoracique-de-joly-ch-14', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141214';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 18 Ref9009', 
    slug = 'thoracique-de-joly-ch-18-ref9009', 
    specifications = '{"Length": "45 cm", "Size Range": "8 FG to 40 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141218';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 24 Ref9009', 
    slug = 'thoracique-de-joly-ch-24-ref9009', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141224';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 20 Ref9009', 
    slug = 'thoracique-de-joly-ch-20-ref9009', 
    specifications = '{"Length (Straight)": "45 cm", "Sizes (Straight)": "8 FG to 40 FG", "Sizes (Curved)": "8 FG to 40 FG", "Sizes (Trocar)": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141220';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 28 Ref9009', 
    slug = 'thoracique-de-joly-ch-28-ref9009', 
    specifications = '{"Length": "45 cm", "Sizes": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141228';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 22', 
    slug = 'thoracique-de-joly-ch-22', 
    specifications = '{"Length": "45 cm", "Sizes": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141222';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 16 Ref9009', 
    slug = 'thoracique-de-joly-ch-16-ref9009', 
    specifications = '{"Material": "PVC", "Length": "45 cm", "Sizes": "8 FG to 42 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141216';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch 32', 
    slug = 'thoracique-de-joly-ch-32', 
    specifications = '{"Taille": "8 FG à 40 FG", "Graduations de profondeur": "5, 10, 15, et 20 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141232';
UPDATE product 
SET 
    name = 'Thoracique De Joly Ch8', 
    slug = 'thoracique-de-joly-ch8', 
    specifications = '{"sizes_fr": "8 FG à 42 FG", "sizes_en": "8 FG to 42 FG", "length": "45 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL141208';
UPDATE product 
SET 
    name = 'Coloplast Sonde Pour Sondage Intermittent Pour Homme Ch.16', 
    slug = 'coloplast-sonde-pour-sondage-intermittent-pour-homme-ch16', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Coloplast'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'COL284160';
UPDATE product 
SET 
    name = 'A/v 16 G (gris) Ref1001', 
    slug = 'av-16-g-gris-ref1001', 
    specifications = '{"Longueur de l''aiguille à fistule": "25 mm pour divers besoins d''accès vasculaire.", "Longueur de la tubulure": "30 cm pour une portée et une flexibilité optimales.", "Calibres disponibles": "15G, 16G et 17G."}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL155816';
UPDATE product 
SET 
    name = 'A/v 20 G (rose)', 
    slug = 'av-20-g-rose', 
    specifications = '{"Aiguille à œillet postérieur": "Oui", "Longueur de l''aiguille à fistule": "25 mm", "Longueur de la tubulure": "30 cm", "Calibres disponibles": "15G, 16G, 17G"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL155820';
UPDATE product 
SET 
    name = 'A/v 18g (vert) Ref1001', 
    slug = 'av-18g-vert-ref1001', 
    specifications = '{"Longueur de l''aiguille à fistule": "25 mm", "Longueur de la tubulure": "30 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL155818';
UPDATE product 
SET 
    name = 'Intranul A/v 24 G (jaune) Ref1001', 
    slug = 'intranul-av-24-g-jaune-ref1001', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'soins-infirmiers')
WHERE sku = 'PO155824';
UPDATE product 
SET 
    name = 'A/v 22g (bleu)', 
    slug = 'av-22g-bleu', 
    specifications = '{"Longueur de l''aiguille à fistule": "25 mm", "Longueur de la tubulure": "30 cm", "Calibres disponibles": "15G, 16G, 17G", "Options d''ailettes": "Ailettes fixes ou rotatives"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL155822';
UPDATE product 
SET 
    name = 'Auto Stop Iv 180 Cm Luer Lock', 
    slug = 'auto-stop-iv-180-cm-luer-lock', 
    specifications = '{"Material": "Durable medical-grade plastic, resistant to chemicals and heat"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL14266';
UPDATE product 
SET 
    name = 'Nébuliseur Masque Pour Enfant', 
    slug = 'nebuliseur-masque-pour-enfant', 
    specifications = '{"Nebulization rate": "3 cc in 10 minutes", "Particle size": "Approximately 2 microns"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL20114';
UPDATE product 
SET 
    name = 'Ultra Adulte', 
    slug = 'ultra-adulte', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL20124';
UPDATE product 
SET 
    name = 'Perfuseur Avec Filtre Ref 14028', 
    slug = 'perfuseur-avec-filtre-ref-14028', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL170001';
UPDATE product 
SET 
    name = 'Avec Regulateur', 
    slug = 'avec-regulateur', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL170008';
UPDATE product 
SET 
    name = 'En Y 200 Cm', 
    slug = 'en-y-200-cm', 
    specifications = '{"Length": "150 cm", "Material": "PVC", "Filter": "15 microns"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL14015';
UPDATE product 
SET 
    name = 'Avec Robinet Ref 14211', 
    slug = 'avec-robinet-ref-14211', 
    specifications = '{"Length": "150 cm", "Material": "PVC", "Filter": "15 microns", "Valve": "Three-way"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL170006';
UPDATE product 
SET 
    name = 'Perfuseur En Y Ref14011', 
    slug = 'perfuseur-en-y-ref14011', 
    specifications = '{"Length": "150 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL170005';
UPDATE product 
SET 
    name = 'A Urine 2l Avec Robinet Type T Ref 30111', 
    slug = 'a-urine-2l-avec-robinet-type-t-ref-30111', 
    specifications = '{"Capacity": "2000 ml", "Tube length": "100 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL172000';
UPDATE product 
SET 
    name = 'Prolongateur 150cm', 
    slug = 'prolongateur-150cm', 
    specifications = '{"Capacité de pression": "Supporte jusqu''à 4,5 bar (65 psi)", "Volume d''amorçage": "6,46 ml par mètre", "Dimensions du tube": "Diamètre intérieur de 3,0 mm, diamètre extérieur de 4,1 mm", "Longueurs disponibles": "25, 50, 100, 150 et 200 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL10150';
UPDATE product 
SET 
    name = 'Prolongateur 100cm Ref1012l', 
    slug = 'prolongateur-100cm-ref1012l', 
    specifications = '{"Volume d''amorçage": "6,46 ml par mètre", "Dimensions du tube": "Diamètre interne de 3,0 mm, diamètre externe de 4,1 mm", "Longueurs disponibles": "25, 50, 100, 150 et 200 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL10100';
UPDATE product 
SET 
    name = 'Ultra Mask Enfants', 
    slug = 'ultra-mask-enfants', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL20126';
UPDATE product 
SET 
    name = 'Prolongateur 2m', 
    slug = 'prolongateur-2m', 
    specifications = '{"Capacité de pression": "Supporte jusqu''à 4,5 bar (65 psi)", "Volume d''amorçage": "6,46 ml par mètre", "Dimensions du tube": "Diamètre intérieur de 3,0 mm, diamètre extérieur de 4,1 mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL1012L';
UPDATE product 
SET 
    name = 'A Urine Avec Robinet Ref30105', 
    slug = 'a-urine-avec-robinet-ref30105', 
    specifications = '{"Capacity": "2000 ml", "Tube Length": "90 cm or 100 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL171000';
UPDATE product 
SET 
    name = 'Prolongateur 25cm', 
    slug = 'prolongateur-25cm', 
    specifications = '{"Capacité de pression": "4,5 bar (65 psi)", "Volume d''amorçage": "6,46 ml/mètre", "Dimensions du tube": "Diamètre interne: 3,0 mm, Diamètre externe: 4,1 mm", "Longueurs": "25, 50, 100, 150, 200 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL1025';
UPDATE product 
SET 
    name = 'A 3 Voie (bte 50) Ref1006', 
    slug = 'a-3-voie-bte-50-ref1006', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL172120';
UPDATE product 
SET 
    name = 'Prolongateur 50cm', 
    slug = 'prolongateur-50cm', 
    specifications = '{"Pressure capacity": "4.5 bar (65 psi)", "Priming volume": "6.46 ml per meter", "Tube dimensions": "Internal diameter of 3.0 mm, external diameter of 4.1 mm", "Available lengths": "25, 50, 100, 150, and 200 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POLL1050';
UPDATE product 
SET 
    name = 'Sonde À Oxygène Ch 10 Ref 2006', 
    slug = 'sonde-a-oxygene-ch-10-ref-2006', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'PO177110';
UPDATE product 
SET 
    name = 'A Oxygene Ch 12', 
    slug = 'a-oxygene-ch-12', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177112';
UPDATE product 
SET 
    name = 'A Oxygene Ch 16 Ref2006', 
    slug = 'a-oxygene-ch-16-ref2006', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177116';
UPDATE product 
SET 
    name = 'A Oxygene Ch 8 Ref2006', 
    slug = 'a-oxygene-ch-8-ref2006', 
    specifications = '{"Longueur du tube": "40 cm", "Tailles disponibles": "De 6FG à 18FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177108';
UPDATE product 
SET 
    name = 'D''aspiration Ch 12', 
    slug = 'daspiration-ch-12', 
    specifications = '{"Longueur standard": "50 cm", "Tailles disponibles": "CH 5 à CH 24"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177012';
UPDATE product 
SET 
    name = 'Rusch Urologie Sonde De Foley A/b En Latex Jaune De Ch 16', 
    slug = 'rusch-urologie-sonde-de-foley-ab-en-latex-jaune-de-ch-16', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'RUSCH AR / UROLOGIE'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'SONDE DE FOLEY   A/B   EN  LATEX  JAUNE  DE  CH 16';
UPDATE product 
SET 
    name = 'A Oxygene Ch 6 Ref2006', 
    slug = 'a-oxygene-ch-6-ref2006', 
    specifications = '{"Tube Length": "40 cm", "Available Sizes": "From CH 6 to CH 18", "Material": "DEHP-free PVC"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177106';
UPDATE product 
SET 
    name = 'D''aspiration Ch 16 Ref2001', 
    slug = 'daspiration-ch-16-ref2001', 
    specifications = '{"Matériau": "PVC souple", "Longueur standard": "50 cm", "Tailles disponibles": "5 FG à 24 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177016';
UPDATE product 
SET 
    name = 'Sonde D''aspiration Ch 10 Ref2001', 
    slug = 'sonde-daspiration-ch-10-ref2001', 
    specifications = '{"taille": "Ch 10", "référence": "2001"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'PO177010';
UPDATE product 
SET 
    name = 'Sonde D''aspiration Ch 14', 
    slug = 'sonde-daspiration-ch-14', 
    specifications = '{"Material": "PVC", "Size": "14Ch"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'pneumologie-respiratoire')
WHERE sku = 'PO177014';
UPDATE product 
SET 
    name = 'D''aspiration Ch 18 Ref2001', 
    slug = 'daspiration-ch-18-ref2001', 
    specifications = '{"Material": "PVC souple", "Length": "50 cm", "Sizes": "5 CH à 24 CH"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177018';
UPDATE product 
SET 
    name = 'Gastrique Ch 10', 
    slug = 'gastrique-ch-10', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL1772101';
UPDATE product 
SET 
    name = 'D''aspiration Ch 6 Ref2001', 
    slug = 'daspiration-ch-6-ref2001', 
    specifications = '{"Material": "PVC", "Length": "50 cm", "Sizes Available": "5 CH to 24 CH"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177006';
UPDATE product 
SET 
    name = 'Rectale 28fg', 
    slug = 'rectale-28fg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL30046';
UPDATE product 
SET 
    name = 'Gastrique Ch 22 Ref4006a', 
    slug = 'gastrique-ch-22-ref4006a', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177222';
UPDATE product 
SET 
    name = 'D''aspiration Ch 8 Ref2001', 
    slug = 'daspiration-ch-8-ref2001', 
    specifications = '{"Material": "PVC", "Length": "50 cm", "Sizes": "5 CH to 24 CH"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177008';
UPDATE product 
SET 
    name = 'Rectale 24fg', 
    slug = 'rectale-24fg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL30043';
UPDATE product 
SET 
    name = 'Gastrique Ch 14', 
    slug = 'gastrique-ch-14', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177214';
UPDATE product 
SET 
    name = 'Gastrique Ch 16', 
    slug = 'gastrique-ch-16', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177216';
UPDATE product 
SET 
    name = 'Rectale 18fg', 
    slug = 'rectale-18fg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL30040';
UPDATE product 
SET 
    name = 'Gastrique Ch 18 Ref4006a', 
    slug = 'gastrique-ch-18-ref4006a', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177218';
UPDATE product 
SET 
    name = 'Gastrique Ch 12 Ref4006a', 
    slug = 'gastrique-ch-12-ref4006a', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177212';
UPDATE product 
SET 
    name = 'Gastrique Ch 24', 
    slug = 'gastrique-ch-24', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177224';
UPDATE product 
SET 
    name = 'Gastrique Ch 20 Ref4006a', 
    slug = 'gastrique-ch-20-ref4006a', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177220';
UPDATE product 
SET 
    name = 'Levin''s Ch18', 
    slug = 'levins-ch18', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL40307';
UPDATE product 
SET 
    name = 'Rectale 22fg', 
    slug = 'rectale-22fg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL30042';
UPDATE product 
SET 
    name = 'Gastrique Ch 8 Ref4006a', 
    slug = 'gastrique-ch-8-ref4006a', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177208';
UPDATE product 
SET 
    name = 'Système De Drainage Ch 10 Ref9007', 
    slug = 'systeme-de-drainage-ch-10-ref9007', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL179610';
UPDATE product 
SET 
    name = 'Système De Drainage Ch 16 Ref9007', 
    slug = 'systeme-de-drainage-ch-16-ref9007', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL179616';
UPDATE product 
SET 
    name = 'Système De Drainage Ch 12 Ref9007', 
    slug = 'systeme-de-drainage-ch-12-ref9007', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL179612';
UPDATE product 
SET 
    name = 'De Foley 2 Voies Latex 14fg', 
    slug = 'de-foley-2-voies-latex-14fg', 
    specifications = '{"Material Composition": "Silicone elastomer bonded to latex rubber", "Adult Sizes": "12-24 FG", "Pediatric Sizes": "8-10 FG", "Balloon Capacity Adult": "5-30 ml", "Balloon Capacity Pediatric": "3-5 ml"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL14FG20163';
UPDATE product 
SET 
    name = 'Système De Drainage Ch 14 Ref9007', 
    slug = 'systeme-de-drainage-ch-14-ref9007', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL179614';
UPDATE product 
SET 
    name = 'Transfuseur A Prise D''air Luer Lock 150 Cm', 
    slug = 'transfuseur-a-prise-dair-luer-lock-150-cm', 
    specifications = '{"Material": "Medical-grade plastic", "Chemical Resistance": "Yes", "Heat Resistance": "Yes"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL70090';
UPDATE product 
SET 
    name = 'Photosensible', 
    slug = 'photosensible', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL14230';
UPDATE product 
SET 
    name = 'Transfuseur A/prise D Aire U/u Ref 70092', 
    slug = 'transfuseur-aprise-d-aire-uu-ref-70092', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL180100';
UPDATE product 
SET 
    name = 'De Drainage Ch 18', 
    slug = 'de-drainage-ch-18', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL179618';
UPDATE product 
SET 
    name = 'Transfuseur Avec Robinet A 3 Voies', 
    slug = 'transfuseur-avec-robinet-a-3-voies', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL7009';
UPDATE product 
SET 
    name = 'Prolongateur Avec Robinet 3 Voies(150 Cm)', 
    slug = 'prolongateur-avec-robinet-3-voies150-cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL13021';
UPDATE product 
SET 
    name = 'De Foley Ch16', 
    slug = 'de-foley-ch16', 
    specifications = '{"Material": "Élastomère de silicone lié au caoutchouc latex", "Adult Sizes": "12-24 FG", "Balloon Capacity (Adult)": "5-30 ml", "Pediatric Sizes": "8-10 FG", "Balloon Capacity (Pediatric)": "3-5 ml"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL16FG30164';
UPDATE product 
SET 
    name = 'De Foley Ch18', 
    slug = 'de-foley-ch18', 
    specifications = '{"Material": "Élastomère de silicone lié au caoutchouc latex", "Sizes Adult": "12-24 CH", "Sizes Pediatric": "8-10 CH", "Balloon Capacity Adult": "5-30 ml", "Balloon Capacity Pediatric": "3-5 ml"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL18FG30164';
UPDATE product 
SET 
    name = 'Respiratory Exerciser Polyciser ( Spirometre)', 
    slug = 'respiratory-exerciser-polyciser-spirometre', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL20411';
UPDATE product 
SET 
    name = 'Prolongateur A Haute Pression', 
    slug = 'prolongateur-a-haute-pression', 
    specifications = '{"Capacité de pression": "55 bar (800 psi)", "Volume d''amorçage": "0,8 ml par mètre", "Dimensions de la tubulure": "Diamètre intérieur de 1,0 mm, diamètre extérieur de 3,0 mm", "Longueurs disponibles": "20, 25, 50, 60, 100, 150, 200 et 300 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL13124';
UPDATE product 
SET 
    name = 'Prolongateur A Haute Pression 25cm', 
    slug = 'prolongateur-a-haute-pression-25cm', 
    specifications = '{"Pressure Capacity": "55 bar (800 psi)", "Priming Volume": "0.8 ml per meter", "Tubing Dimensions": "Inner diameter: 1.0 mm, Outer diameter: 3.0 mm", "Lengths Available": "20, 25, 50, 60, 100, 150, 200, and 300 cm", "Material": "PVC", "DEHP-Free": "Yes"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL13120';
UPDATE product 
SET 
    name = 'Prolongateur A Haute Pression 50cm', 
    slug = 'prolongateur-a-haute-pression-50cm', 
    specifications = '{"Capacité de Pression": "Supporte jusqu''à 55 bar (800 psi)", "Volume d''Amorçage": "0,8 ml par mètre", "Dimensions du Tube": "Diamètre intérieur de 1,0 mm, diamètre extérieur de 3,0 mm", "Longueurs Disponibles": "20, 25, 50, 60, 100, 150, 200 et 300 cm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL13121';
UPDATE product 
SET 
    name = 'D''aspiration Yankaur', 
    slug = 'daspiration-yankaur', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL90160';
UPDATE product 
SET 
    name = 'D''irrigation - Hard Chamber', 
    slug = 'dirrigation-hard-chamber', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL30571';
UPDATE product 
SET 
    name = 'Prolongateur A Haute Pression 100cm', 
    slug = 'prolongateur-a-haute-pression-100cm', 
    specifications = '{"Pressure Capacity": "55 bar (800 psi)", "Priming Volume": "0.8 ml per meter", "Inner Diameter": "1.0 mm", "Outer Diameter": "3.0 mm", "Available Lengths": "20, 25, 50, 60, 100, 150, 200, 300 cm", "Material": "PVC"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL13122';
UPDATE product 
SET 
    name = 'De Redon 400ml', 
    slug = 'de-redon-400ml', 
    specifications = '{"Material": "PVC", "Length": "50 to 170 cm", "Size": "6 to 18 FG"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL90501';
UPDATE product 
SET 
    name = 'Système De Drainage Thoracique Adulte 2000 Ml', 
    slug = 'systeme-de-drainage-thoracique-adulte-2000-ml', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL90320';
UPDATE product 
SET 
    name = 'D''irrigation - Soft Chamber', 
    slug = 'dirrigation-soft-chamber', 
    specifications = '{"Material": "PVC sans DEHP"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL30561';
UPDATE product 
SET 
    name = 'Aiguille De Biopsie De Moelle Osseuse - 11g 100mm', 
    slug = 'aiguille-de-biopsie-de-moelle-osseuse-11g-100mm', 
    specifications = '{"Size": "11G 100mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Biopsy')
WHERE sku = 'ZAMBP11-10';
UPDATE product 
SET 
    name = 'Ou Rampes 4 Voies', 
    slug = 'ou-rampes-4-voies', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL13361';
UPDATE product 
SET 
    name = 'Aiguille De Biopsie De Moelle Osseuse - 08g 100mm', 
    slug = 'aiguille-de-biopsie-de-moelle-osseuse-08g-100mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Biopsy')
WHERE sku = 'ZAMBP08-10';
UPDATE product 
SET 
    name = 'A/v 14 G (maron)', 
    slug = 'av-14-g-maron', 
    specifications = '{"Fistula needle length": "25 mm", "Tubing length": "30 cm", "Available gauges": "15G, 16G, 17G", "Wing options": "Fixed or rotating wings"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL155814';
UPDATE product 
SET 
    name = 'Ensemble De Biopsie De Moelle Osseuse Avec Dispositif Catchsystem - 08g 100 Mm', 
    slug = 'ensemble-de-biopsie-de-moelle-osseuse-avec-dispositif-catchsystem-08g-100-mm', 
    specifications = '{"Sterilization": "Ethylene Oxide", "Material": "Not specified"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Biopsy')
WHERE sku = 'ZAMCS08-10';
UPDATE product 
SET 
    name = 'Kit De Biopsie De Moelle Osseuse Avec Dispositif Catchsystem - 09g 150mm', 
    slug = 'kit-de-biopsie-de-moelle-osseuse-avec-dispositif-catchsystem-09g-150mm', 
    specifications = '{"Material": "N/A", "Sterility": "Sterile - Non pyrogenic"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Biopsy')
WHERE sku = 'ZAMCS09-15';
UPDATE product 
SET 
    name = 'Ensemble De Biopsie De Moelle Osseuse Avec Dispositif Catchsystem - 11g 150mm', 
    slug = 'ensemble-de-biopsie-de-moelle-osseuse-avec-dispositif-catchsystem-11g-150mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Biopsy')
WHERE sku = 'ZAMCS11-15';
UPDATE product 
SET 
    name = 'Ensemble De Biopsie De Moelle Osseuse Avec Dispositif Catchsystem - 11g 100mm', 
    slug = 'ensemble-de-biopsie-de-moelle-osseuse-avec-dispositif-catchsystem-11g-100mm', 
    specifications = '{"Sterilization": "ethylene oxide", "Gauge": "11G", "Length": "100mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Biopsy')
WHERE sku = 'ZAMCS11-10';
UPDATE product 
SET 
    name = 'Ensemble De Biopsie De Moelle Osseuse Avec Dispositif Catchsystem - 13g 100 Mm', 
    slug = 'ensemble-de-biopsie-de-moelle-osseuse-avec-dispositif-catchsystem-13g-100-mm', 
    specifications = '{"Packaging": "Sterile - Non pyrogenic", "Usage": "Disposable", "Material": "Sterile if unopened and undamaged inner package"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Biopsy')
WHERE sku = 'ZAMCS13-10';
UPDATE product 
SET 
    name = 'Aiguille D''introduction Pour Biopsie Coaxiale - 16g 40mm', 
    slug = 'aiguille-dintroduction-pour-biopsie-coaxiale-16g-40mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMCX16-04';
UPDATE product 
SET 
    name = 'Aiguille D''introduction Pour Biopsie Coaxiale - 14g 40mm', 
    slug = 'aiguille-dintroduction-pour-biopsie-coaxiale-14g-40mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMCX14-04';
UPDATE product 
SET 
    name = 'Kit De Biopsie De Moelle Osseuse Avec Dispositif Catchsystem - 13g 150mm', 
    slug = 'kit-de-biopsie-de-moelle-osseuse-avec-dispositif-catchsystem-13g-150mm', 
    specifications = '{"Taille de l''aiguille": "13G", "Longueur": "150mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Biopsy')
WHERE sku = 'ZAMCS13-15';
UPDATE product 
SET 
    name = 'Aiguille Introductrice Pour Biopsie Coaxiale - 16g 100mm', 
    slug = 'aiguille-introductrice-pour-biopsie-coaxiale-16g-100mm', 
    specifications = '{"Length": "100mm", "Gauge": "16G"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMCX16-10';
UPDATE product 
SET 
    name = 'Aiguille D''introduction Pour Biopsie Coaxiale - 18g 140mm', 
    slug = 'aiguille-dintroduction-pour-biopsie-coaxiale-18g-140mm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMCX18-14';
UPDATE product 
SET 
    name = 'Aiguille D''introduction Pour Biopsie Coaxiale - 16g 140mm', 
    slug = 'aiguille-dintroduction-pour-biopsie-coaxiale-16g-140mm', 
    specifications = '{"official_sku": "CX16-15", "product_line": "COAXIAL NEEDLE", "designation": "AIGUILLE COAXIALE", "english_name": "Introducer Needle for Coaxial Biopsy", "category": "Histological Biopsy", "gauge": "16G", "gauge_numeric": "16", "outer_diameter_mm": "1.85", "compatible_with_gauge": "18G", "length_cm": "14", "length_mm": "140", "note": "Length in provided list (14cm) not available in catalog. Closest is 15cm (150mm)", "feature_tip_type": "Blunt and not cutting tip", "feature_depth_marks": "true", "feature_depth_stopper": "true", "feature_hub": "Luer Lock", "feature_extractable_stylet": "Trocar tip", "feature_echogenic_marker": "Inner", "feature_mri_compatible_version": "CXM16-15", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "80", "pricing_pv_ht_revendeurs": "65", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMCX16-14';
UPDATE product 
SET 
    name = 'Aiguille D''introduction Pour Biopsie Coaxiale - 16g 150mm', 
    slug = 'aiguille-dintroduction-pour-biopsie-coaxiale-16g-150mm', 
    specifications = '{"official_sku": "CX16-15", "product_line": "COAXIAL NEEDLE", "designation": "AIGUILLE COAXIALE", "english_name": "Introducer Needle for Coaxial Biopsy", "category": "Histological Biopsy", "gauge": "16G", "gauge_numeric": "16", "outer_diameter_mm": "1.85", "compatible_with_gauge": "18G", "length_cm": "15", "length_mm": "150", "feature_tip_type": "Blunt and not cutting tip", "feature_depth_marks": "true", "feature_depth_stopper": "true", "feature_hub": "Luer Lock", "feature_extractable_stylet": "Trocar tip", "feature_echogenic_marker": "Inner", "feature_mri_compatible_version": "CXM16-15", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "80", "pricing_pv_ht_revendeurs": "65", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMCX16-15';
UPDATE product 
SET 
    name = 'Aiguille D''introduction Pour Biopsie Coaxiale - 18g 40mm', 
    slug = 'aiguille-dintroduction-pour-biopsie-coaxiale-18g-40mm', 
    specifications = '{"official_sku": "CX18-07", "product_line": "COAXIAL NEEDLE", "designation": "AIGUILLE COAXIALE", "english_name": "Introducer Needle for Coaxial Biopsy", "category": "Histological Biopsy", "gauge": "18G", "gauge_numeric": "18", "outer_diameter_mm": "1.52", "compatible_with_gauge": "20G", "length_cm": "4", "length_mm": "40", "note": "Length in provided list (04cm) not available in catalog. Closest is 07cm (70mm)", "feature_tip_type": "Blunt and not cutting tip", "feature_depth_marks": "true", "feature_depth_stopper": "true", "feature_hub": "Luer Lock", "feature_extractable_stylet": "Trocar tip", "feature_echogenic_marker": "Inner", "feature_mri_compatible_version": "CXM18-07", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "80", "pricing_pv_ht_revendeurs": "65", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMCX18-04';
UPDATE product 
SET 
    name = 'Système De Biopsie Semi-automatique Tru-cut - 16g 100mm', 
    slug = 'systeme-de-biopsie-semi-automatique-tru-cut-16g-100mm', 
    specifications = '{"official_sku": "PM16-10", "product_line": "ULTIMATE", "designation": "TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System", "category": "Histological Biopsy", "gauge": "16G", "gauge_numeric": "16", "diameter_mm": "1.6", "length_cm": "10", "length_mm": "100", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_depth_indicator": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "115", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPM16-10';
UPDATE product 
SET 
    name = 'Système De Biopsie Tru-cut Semi-automatique - 16g 150mm', 
    slug = 'systeme-de-biopsie-tru-cut-semi-automatique-16g-150mm', 
    specifications = '{"official_sku": "PM16-15", "product_line": "ULTIMATE", "designation": "TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System", "category": "Histological Biopsy", "gauge": "16G", "gauge_numeric": "16", "diameter_mm": "1.6", "length_cm": "15", "length_mm": "150", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_depth_indicator": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "115", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPM16-15';
UPDATE product 
SET 
    name = 'Système De Biopsie Tru-cut Semi-automatique - 18g 100mm', 
    slug = 'systeme-de-biopsie-tru-cut-semi-automatique-18g-100mm', 
    specifications = '{"official_sku": "PM18-10", "product_line": "ULTIMATE", "designation": "TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System", "category": "Histological Biopsy", "gauge": "18G", "gauge_numeric": "18", "diameter_mm": "1.27", "length_cm": "10", "length_mm": "100", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_depth_indicator": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "115", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPM18-10';
UPDATE product 
SET 
    name = 'Système De Biopsie Semi-automatique Tru-cut - 14g 100mm', 
    slug = 'systeme-de-biopsie-semi-automatique-tru-cut-14g-100mm', 
    specifications = '{"official_sku": "PM14-10", "product_line": "ULTIMATE", "designation": "TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System", "category": "Histological Biopsy", "gauge": "14G", "gauge_numeric": "14", "diameter_mm": "2.1", "length_cm": "10", "length_mm": "100", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_depth_indicator": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "115", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPM14-10';
UPDATE product 
SET 
    name = 'Kit De Système De Biopsie Semi-automatique Tru-cut - 14g 100mm', 
    slug = 'kit-de-systeme-de-biopsie-semi-automatique-tru-cut-14g-100mm', 
    specifications = '{"official_sku": "PX14-10", "product_line": "ULTIMATE SET", "designation": "KIT DE TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System Kit", "category": "Histological Biopsy", "gauge": "14G", "gauge_numeric": "14", "diameter_mm": "2.1", "length_cm": "10", "length_mm": "100", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "feature_coaxial_features": "[object Object]", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "170", "pricing_pv_ht_revendeurs": "155", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPX14-10';
UPDATE product 
SET 
    name = 'Système De Biopsie Semi-automatique Tru-cut - 18g 150mm', 
    slug = 'systeme-de-biopsie-semi-automatique-tru-cut-18g-150mm', 
    specifications = '{"official_sku": "PM18-15", "product_line": "ULTIMATE", "designation": "TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System", "category": "Histological Biopsy", "gauge": "18G", "gauge_numeric": "18", "diameter_mm": "1.27", "length_cm": "15", "length_mm": "150", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_depth_indicator": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "115", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPM18-15';
UPDATE product 
SET 
    name = 'Kit De Système De Biopsie Semi-automatique Tru-cut - 16g 100mm', 
    slug = 'kit-de-systeme-de-biopsie-semi-automatique-tru-cut-16g-100mm', 
    specifications = '{"official_sku": "PX16-10", "product_line": "ULTIMATE SET", "designation": "KIT DE TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System Kit", "category": "Histological Biopsy", "gauge": "16G", "gauge_numeric": "16", "diameter_mm": "1.6", "length_cm": "10", "length_mm": "100", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "feature_coaxial_features": "[object Object]", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "170", "pricing_pv_ht_revendeurs": "155", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPX16-10';
UPDATE product 
SET 
    name = 'Kit De Système De Biopsie Semi-automatique Tru-cut - 16g 150mm', 
    slug = 'kit-de-systeme-de-biopsie-semi-automatique-tru-cut-16g-150mm', 
    specifications = '{"official_sku": "PX16-15", "product_line": "ULTIMATE SET", "designation": "KIT DE TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System Kit", "category": "Histological Biopsy", "gauge": "16G", "gauge_numeric": "16", "diameter_mm": "1.6", "length_cm": "15", "length_mm": "150", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "feature_coaxial_features": "[object Object]", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "170", "pricing_pv_ht_revendeurs": "155", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPX16-15';
UPDATE product 
SET 
    name = 'A Oxygene Ch 14 Ref2006', 
    slug = 'a-oxygene-ch-14-ref2006', 
    specifications = '{"Calibre": "CH 14 (Charrière 14)", "Référence Fabricant": "REF2006", "Type de Dispositif": "Sonde à oxygène nasale", "Matériau": "PVC médical souple", "Usage": "Usage unique", "Stérilité": "Stérile", "Extrémité": "Atraumatique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL177114';
UPDATE product 
SET 
    name = 'Kit De Système De Biopsie Semi-automatique Tru-cut - 18g 150mm', 
    slug = 'kit-de-systeme-de-biopsie-semi-automatique-tru-cut-18g-150mm', 
    specifications = '{"official_sku": "PX18-15", "product_line": "ULTIMATE SET", "designation": "KIT DE TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System Kit", "category": "Histological Biopsy", "gauge": "18G", "gauge_numeric": "18", "diameter_mm": "1.27", "length_cm": "15", "length_mm": "150", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "feature_coaxial_features": "[object Object]", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "170", "pricing_pv_ht_revendeurs": "155", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPX18-15';
UPDATE product 
SET 
    name = 'Aiguille D''aspiration De Moelle Osseuse - 14g 300mm', 
    slug = 'aiguille-daspiration-de-moelle-osseuse-14g-300mm', 
    specifications = '{"official_sku": "ST14-30", "product_line": "SELECTIVE", "designation": "AIGUILLE D''ASPIRATION DE MOELLE OSSEUSE (MYELOGRAMME SELECTIVE)", "english_name": "Bone Marrow Aspiration Needle", "category": "Bone Marrow Aspiration", "gauge": "14G", "gauge_numeric": "14", "diameter_mm": "2.1", "length_cm": "30", "length_mm": "300", "feature_tip_type": "Whistle tip needle", "feature_depth_control": "Sliding screw depth control device", "feature_millimetric_scale": "true", "feature_handle": "Anatomic handle for finger position", "feature_extractable_stylet": "Whistle point, perfectly coupled", "feature_echogenic_marker": "false", "packaging_units_per_box": "10", "pricing_pv_ht_cliniques": "80", "pricing_pv_ht_revendeurs": "65", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Aspiration')
WHERE sku = 'ZAMST14-30';
UPDATE product 
SET 
    name = 'Système D''imagerie Pour Urétéroscope', 
    slug = 'systeme-dimagerie-pour-ureteroscope', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'OTU'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'OTU-A';
UPDATE product 
SET 
    name = 'Aiguille D''aspiration De Moelle Osseuse - 18g 300mm', 
    slug = 'aiguille-daspiration-de-moelle-osseuse-18g-300mm', 
    specifications = '{"official_sku": "ST18-30", "product_line": "SELECTIVE", "designation": "AIGUILLE D''ASPIRATION DE MOELLE OSSEUSE (MYELOGRAMME SELECTIVE)", "english_name": "Bone Marrow Aspiration Needle", "category": "Bone Marrow Aspiration", "gauge": "18G", "gauge_numeric": "18", "diameter_mm": "1.2", "length_cm": "30", "length_mm": "300", "feature_tip_type": "Whistle tip needle", "feature_depth_control": "Sliding screw depth control device", "feature_millimetric_scale": "true", "feature_handle": "Anatomic handle for finger position", "feature_extractable_stylet": "Whistle point, perfectly coupled", "feature_echogenic_marker": "false", "packaging_units_per_box": "10", "pricing_pv_ht_cliniques": "80", "pricing_pv_ht_revendeurs": "65", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Aspiration')
WHERE sku = 'ZAMST18-30';
UPDATE product 
SET 
    name = 'Aiguille D''aspiration De Moelle Osseuse - 16g 470mm', 
    slug = 'aiguille-daspiration-de-moelle-osseuse-16g-470mm', 
    specifications = '{"official_sku": "ST16-47", "product_line": "SELECTIVE", "designation": "AIGUILLE D''ASPIRATION DE MOELLE OSSEUSE (MYELOGRAMME SELECTIVE)", "english_name": "Bone Marrow Aspiration Needle", "category": "Bone Marrow Aspiration", "gauge": "16G", "gauge_numeric": "16", "diameter_mm": "1.6", "length_cm": "47", "length_mm": "470", "feature_tip_type": "Whistle tip needle", "feature_depth_control": "Sliding screw depth control device", "feature_millimetric_scale": "true", "feature_handle": "Anatomic handle for finger position", "feature_extractable_stylet": "Whistle point, perfectly coupled", "feature_echogenic_marker": "false", "packaging_units_per_box": "10", "pricing_pv_ht_cliniques": "80", "pricing_pv_ht_revendeurs": "65", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Aspiration')
WHERE sku = 'ZAMST16-47';
UPDATE product 
SET 
    name = 'Kit De Biopsie Hépatique - 16g 150mm', 
    slug = 'kit-de-biopsie-hepatique-16g-150mm', 
    specifications = '{"official_sku": "Not found in catalog", "product_line": "Custom hepatic biopsy kit", "designation": "KIT POUR BIOPSIE HEPATIQUE", "english_name": "Hepatic Biopsy Kit", "category": "Histological Biopsy - Hepatic", "gauge": "16G", "gauge_numeric": "16", "diameter_mm": "1.6", "length_cm": "15", "length_mm": "150", "note": "This SKU does not appear in the official Zamar catalog. It may be a custom kit or distributor-specific reference. Zamar offers hepatic biopsy products in the HEPASYS, HEPAMOD, and HEPATEK lines.", "pricing_pv_ht_cliniques": "125", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy - Hepatic')
WHERE sku = 'ZAMHE16-15';
UPDATE product 
SET 
    name = 'Aiguille D''aspiration De Moelle Osseuse - 15g 470mm', 
    slug = 'aiguille-daspiration-de-moelle-osseuse-15g-470mm', 
    specifications = '{"official_sku": "ST15-47", "product_line": "SELECTIVE", "designation": "AIGUILLE D''ASPIRATION DE MOELLE OSSEUSE (MYELOGRAMME SELECTIVE)", "english_name": "Bone Marrow Aspiration Needle", "category": "Bone Marrow Aspiration", "gauge": "15G", "gauge_numeric": "15", "diameter_mm": "1.8", "length_cm": "47", "length_mm": "470", "feature_tip_type": "Whistle tip needle", "feature_depth_control": "Sliding screw depth control device", "feature_millimetric_scale": "true", "feature_handle": "Anatomic handle for finger position", "feature_extractable_stylet": "Whistle point, perfectly coupled", "feature_echogenic_marker": "false", "packaging_units_per_box": "10", "pricing_pv_ht_cliniques": "80", "pricing_pv_ht_revendeurs": "65", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Aspiration')
WHERE sku = 'ZAMST15-47';
UPDATE product 
SET 
    name = 'Aiguille D''aspiration De Moelle Osseuse - 15g 300mm', 
    slug = 'aiguille-daspiration-de-moelle-osseuse-15g-300mm', 
    specifications = '{"official_sku": "ST15-30", "product_line": "SELECTIVE", "designation": "AIGUILLE D''ASPIRATION DE MOELLE OSSEUSE (MYELOGRAMME SELECTIVE)", "english_name": "Bone Marrow Aspiration Needle", "category": "Bone Marrow Aspiration", "gauge": "15G", "gauge_numeric": "15", "diameter_mm": "1.8", "length_cm": "30", "length_mm": "300", "feature_tip_type": "Whistle tip needle", "feature_depth_control": "Sliding screw depth control device", "feature_millimetric_scale": "true", "feature_handle": "Anatomic handle for finger position", "feature_extractable_stylet": "Whistle point, perfectly coupled", "feature_echogenic_marker": "false", "packaging_units_per_box": "10", "pricing_pv_ht_cliniques": "80", "pricing_pv_ht_revendeurs": "65", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Aspiration')
WHERE sku = 'ZAMST15-30';
UPDATE product 
SET 
    name = 'Kit De Biopsie Hépatique - 16g 100mm', 
    slug = 'kit-de-biopsie-hepatique-16g-100mm', 
    specifications = '{"official_sku": "Not found in catalog", "product_line": "Custom hepatic biopsy kit", "designation": "KIT POUR BIOPSIE HEPATIQUE", "english_name": "Hepatic Biopsy Kit", "category": "Histological Biopsy - Hepatic", "gauge": "16G", "gauge_numeric": "16", "diameter_mm": "1.6", "length_cm": "10", "length_mm": "100", "note": "This SKU does not appear in the official Zamar catalog. It may be a custom kit or distributor-specific reference. Zamar offers hepatic biopsy products in the HEPASYS, HEPAMOD, and HEPATEK lines.", "pricing_pv_ht_cliniques": "125", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy - Hepatic')
WHERE sku = 'ZAMHE16-10';
UPDATE product 
SET 
    name = 'Kit De Biopsie Hépatique - 18g 150mm', 
    slug = 'kit-de-biopsie-hepatique-18g-150mm', 
    specifications = '{"official_sku": "Not found in catalog", "product_line": "Custom hepatic biopsy kit", "designation": "KIT POUR BIOPSIE HEPATIQUE", "english_name": "Hepatic Biopsy Kit", "category": "Histological Biopsy - Hepatic", "gauge": "18G", "gauge_numeric": "18", "diameter_mm": "1.27", "length_cm": "15", "length_mm": "150", "note": "This SKU does not appear in the official Zamar catalog. It may be a custom kit or distributor-specific reference. Zamar offers hepatic biopsy products in the HEPASYS, HEPAMOD, and HEPATEK lines.", "pricing_pv_ht_cliniques": "125", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy - Hepatic')
WHERE sku = 'ZAMHE18-15';
UPDATE product 
SET 
    name = 'Cystoscope Souple Usage Unique Flexible Wiscope', 
    slug = 'cystoscope-souple-usage-unique-flexible-wiscope', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'OTU'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'OTU-C380RR';
UPDATE product 
SET 
    name = 'Aiguille D''aspiration De Moelle Osseuse - 18g 470mm', 
    slug = 'aiguille-daspiration-de-moelle-osseuse-18g-470mm', 
    specifications = '{"official_sku": "ST18-47", "product_line": "SELECTIVE", "designation": "AIGUILLE D''ASPIRATION DE MOELLE OSSEUSE (MYELOGRAMME SELECTIVE)", "english_name": "Bone Marrow Aspiration Needle", "category": "Bone Marrow Aspiration", "gauge": "18G", "gauge_numeric": "18", "diameter_mm": "1.2", "length_cm": "47", "length_mm": "470", "feature_tip_type": "Whistle tip needle", "feature_depth_control": "Sliding screw depth control device", "feature_millimetric_scale": "true", "feature_handle": "Anatomic handle for finger position", "feature_extractable_stylet": "Whistle point, perfectly coupled", "feature_echogenic_marker": "false", "packaging_units_per_box": "10", "pricing_pv_ht_cliniques": "80", "pricing_pv_ht_revendeurs": "65", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Aspiration')
WHERE sku = 'ZAMST18-47';
UPDATE product 
SET 
    name = 'Kit De Biopsie Hépatique - 18g 90mm', 
    slug = 'kit-de-biopsie-hepatique-18g-90mm', 
    specifications = '{"official_sku": "Not found in catalog", "product_line": "Custom hepatic biopsy kit", "designation": "KIT POUR BIOPSIE HEPATIQUE", "english_name": "Hepatic Biopsy Kit", "category": "Histological Biopsy - Hepatic", "gauge": "18G", "gauge_numeric": "18", "diameter_mm": "1.27", "length_cm": "9", "length_mm": "90", "note": "This SKU does not appear in the official Zamar catalog. It may be a custom kit or distributor-specific reference. Zamar offers hepatic biopsy products in the HEPASYS, HEPAMOD, and HEPATEK lines.", "pricing_pv_ht_cliniques": "125", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy - Hepatic')
WHERE sku = 'ZAMHE18-09';
UPDATE product 
SET 
    name = 'Ureteroscope Souple À Usage Unique', 
    slug = 'ureteroscope-souple-a-usage-unique', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'OTU'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'OTU-100RR';
UPDATE product 
SET 
    name = 'Uréteroscope Souple Usage Unique Flexible Wiscope 7.5 Fr', 
    slug = 'ureteroscope-souple-usage-unique-flexible-wiscope-75-fr', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'OTU'),
    category_id = (SELECT id FROM category WHERE slug = 'urologie')
WHERE sku = 'OTU-100SL';
UPDATE product 
SET 
    name = 'Circuit Respiratoire Lisse 1.50 M Pour Enfants Avec 2 Pièges À Eau', 
    slug = 'circuit-respiratoire-lisse-150-m-pour-enfants-avec-2-pieges-a-eau', 
    specifications = '{"Référence": "TUOBWC150", "Type de circuit": "Lisse", "Longueur": "1,50 mètre", "Population cible": "Pédiatrique", "Nombre de pièges à eau": "2", "Type de tubulure": "Transparente", "Stérilisation": "Stérile", "Usage": "Usage unique", "Matériau": "PVC médical sans latex", "Diamètre intérieur": "Standard pédiatrique", "Type de connecteurs": "Universels 15mm/22mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOBWC150';
UPDATE product 
SET 
    name = 'Circuit Respiratoire En Silicone Réutilisable 1.80 M Pour Adultes Avec 2 Piège', 
    slug = 'circuit-respiratoire-en-silicone-reutilisable-180-m-pour-adultes-avec-2-piege', 
    specifications = '{"Référence": "TUOBSBA180", "Type": "Circuit respiratoire réutilisable", "Matériau": "Silicone médical", "Longueur": "1,80 mètre", "Population cible": "Adultes", "Nombre de pièges à eau": "2", "Type de circuit": "Double tubulure avec pièges à eau", "Stérilisation": "Autoclavable selon normes hospitalières", "Usage": "Réutilisable"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOBSBA180';
UPDATE product 
SET 
    name = 'Circuit Respiratoire Annelé 1.80 M Pour Adultes Avec 2 Pièges À Eau', 
    slug = 'circuit-respiratoire-annele-180-m-pour-adultes-avec-2-pieges-a-eau', 
    specifications = '{"Référence": "TUOBWA180", "Type de produit": "Circuit respiratoire annelé avec pièges à eau", "Longueur": "1.80 m", "Nombre de pièges à eau": "2", "Type de patient": "Adulte", "Structure": "Annelée/Corrugée", "Matériau": "PVC médical", "Transparence": "Transparent", "Stérilisation": "Non stérile", "Usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOBWA180';
UPDATE product 
SET 
    name = 'Sonde D’intubation Sans Ballonnet N°4,5', 
    slug = 'sonde-dintubation-sans-ballonnet-n45', 
    specifications = '{"référence": "TUOET1045", "type": "Sonde d''intubation endotrachéale sans ballonnet", "diamètre_interne": "4.5 mm", "type_de_ballonnet": "Sans ballonnet", "connecteur": "15 mm ISO standard", "matériau": "PVC médical transparent", "stérilisation": "Stérilisé à l''oxyde d''éthylène", "usage": "Usage unique", "longueur": "Standard pédiatrique", "graduation": "Avec repères de profondeur radioopaques"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET1045';
UPDATE product 
SET 
    name = 'Masque D''anesthésie À Coque Souple - Taille 0', 
    slug = 'masque-danesthesie-a-coque-souple-taille-0', 
    specifications = '{"type_de_produit": "Masque d''anesthésie gonflable", "type_de_coque": "Coque souple", "taille": "0 (nouveau-nés et nourrissons)", "materiau": "Matériau médical transparent non toxique", "type_de_bordure": "Gonflable avec coussin pneumatique", "connexion": "Connecteur standard 22mm", "usage": "Usage unique", "sterilisation": "Stérile, prêt à l''emploi"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOAMS000';
UPDATE product 
SET 
    name = 'De Tracheotomie A/b Ch 6.5', 
    slug = 'de-tracheotomie-ab-ch-65', 
    specifications = '{"référence": "TUOTYN0065", "type": "Canule de trachéotomie A/B", "diamètre_charrière": "6.5 CH", "diamètre_interne": "6.5 mm", "configuration": "Type A/B avec canule interne", "matériau": "PVC médical biocompatible", "stérilisation": "Stérile", "radiopacité": "Radiopaque", "connecteur": "Universel 15 mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOTYN0065';
UPDATE product 
SET 
    name = 'De Sonde D''intubation Sélective Droite Ch32', 
    slug = 'de-sonde-dintubation-selective-droite-ch32', 
    specifications = '{"Référence": "TUODECR032", "Type": "Sonde d''intubation endobronchique à double lumière", "Orientation": "Droite (bronche principale droite)", "Calibre": "CH32 (Charrière 32 / Fr 32)", "Diamètre externe approximatif": "10,7 mm", "Nombre de lumières": "2 (double lumière)", "Nombre de ballonnets": "2 (trachéal et bronchique)", "Matériau": "PVC médical biocompatible", "Radiopacité": "Oui", "Stérilisation": "Oxyde d''éthylène (ETO)", "Type de conditionnement": "Kit complet stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUODECR032';
UPDATE product 
SET 
    name = 'De Sonde D''intubation Selective Droite Ch41', 
    slug = 'de-sonde-dintubation-selective-droite-ch41', 
    specifications = '{"Référence": "TUODECR041", "Type": "Sonde d''intubation endobronchique à double lumière", "Latéralité": "Sélective droite", "Calibre": "CH41 (Charrière 41)", "Diamètre externe": "13,7 mm (approx.)", "Nombre de lumières": "2 (double lumière)", "Ballonnets": "Trachéal et bronchique", "Radiopacité": "Oui", "Matériau": "PVC médical biocompatible", "Stérilisation": "Oxyde d''éthylène (ETO)", "Usage": "Usage unique", "Population cible": "Adulte"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUODECR041';
UPDATE product 
SET 
    name = 'De Sonde D''intubation Sélective Droite Ch35', 
    slug = 'de-sonde-dintubation-selective-droite-ch35', 
    specifications = '{"Référence": "TUODECR035", "Type": "Sonde d''intubation endobronchique à double lumière", "Orientation": "Sélective droite", "Calibre": "CH35 (Charrière 35 / 11,7 mm)", "Nombre de lumières": "2 (double lumière)", "Matériau": "PVC médical biocompatible", "Type de ballonnet": "Double ballonnet (trachéal et bronchique)", "Marqueurs": "Bandes radio-opaques", "Stérilisation": "Oxyde d''éthylène", "Conditionnement": "Stérile, usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUODECR035';
UPDATE product 
SET 
    name = 'De Tracheotomie A/b Ch 4.5', 
    slug = 'de-tracheotomie-ab-ch-45', 
    specifications = '{"Référence": "TUOTYN0045", "Type": "Canule de trachéotomie A/B", "Diamètre": "CH 4.5 (Charrière 4.5)", "Stérilité": "Stérile, usage unique", "Matériau": "Matériaux biocompatibles médicaux", "Configuration": "Type A/B"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOTYN0045';
UPDATE product 
SET 
    name = 'Filtre Hme Adultes', 
    slug = 'filtre-hme-adultes', 
    specifications = '{"Type de dispositif": "Échangeur de chaleur et d''humidité (HME)", "Population cible": "Adultes", "Résistance": "Faible résistance au flux", "Espace mort": "Minimisé", "Efficacité de filtration": "Protection bactérienne et virale", "Usage": "Usage unique", "Stérilité": "Stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOHMEA00';
UPDATE product 
SET 
    name = 'De Tracheotomie A/b Ch 6', 
    slug = 'de-tracheotomie-ab-ch-6', 
    specifications = '{"Référence": "TUOTYN0060", "Désignation": "Canule de trachéotomie A/B", "Calibre": "Charrière 6 (CH 6)", "Type": "A/B", "Diamètre externe approximatif": "2,0 mm", "Matériau": "Polymère médical biocompatible", "Stérilisation": "Stérile à usage unique", "Conditionnement": "Unitaire sous blister"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOTYN0060';
UPDATE product 
SET 
    name = 'Circuit Respiratoire Lisse 1.80 M Pour Adultes Avec 2 Pièges À Eau', 
    slug = 'circuit-respiratoire-lisse-180-m-pour-adultes-avec-2-pieges-a-eau', 
    specifications = '{"Référence": "TUOBRWA180", "Type": "Circuit respiratoire lisse", "Longueur": "1,80 m", "Patient": "Adulte", "Nombre de pièges à eau": "2", "Type de tubulure": "Lisse", "Matériau": "PVC médical non toxique", "Diamètre intérieur": "22 mm (standard ISO)", "Usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOBRWA180';
UPDATE product 
SET 
    name = 'Sonde D’intubation Sans Ballonnet N°2.5', 
    slug = 'sonde-dintubation-sans-ballonnet-n25', 
    specifications = '{"référence": "TUOET1025", "type_de_sonde": "Endotrachéale sans ballonnet", "calibre_interne": "2.5 mm", "matériau": "PVC médical biocompatible", "transparence": "Oui", "connecteur": "15 mm ISO standard", "marquage_radiologique": "Ligne radiopaque", "longueur_totale": "Dimensions pédiatriques standard", "embout": "Atraumatique biseauté", "stérilisation": "Oxyde d''éthylène", "usage": "Unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET1025';
UPDATE product 
SET 
    name = 'Circuit Respiratoire Lisse 1,60 M Pour Enfants Avec 2 Pièges À Eau', 
    slug = 'circuit-respiratoire-lisse-160-m-pour-enfants-avec-2-pieges-a-eau', 
    specifications = '{"référence": "TUOBRWC160", "type_de_circuit": "Circuit respiratoire lisse", "longueur": "1,60 m", "population_cible": "Pédiatrique (enfants)", "nombre_de_pièges_à_eau": "2", "type_de_tube": "Lisse", "stérilisation": "Stérile", "usage": "Usage unique", "matériaux": "Sans DEHP, sans latex"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOBRWC160';
UPDATE product 
SET 
    name = 'De Tracheotomie A/b Ch 7', 
    slug = 'de-tracheotomie-ab-ch-7', 
    specifications = '{"Référence": "TUOTYN0070", "Type": "Canule de trachéotomie", "Configuration": "A/B", "Calibre": "Charrière 7 (CH 7)", "Diamètre externe": "≈ 3,3 mm", "Stérilité": "Stérile", "Usage": "Usage unique", "Matériau": "PVC médical ou silicone (selon spécification fabricant)"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOTYN0070';
UPDATE product 
SET 
    name = 'De Tracheotomie A/b Ch 7.5', 
    slug = 'de-tracheotomie-ab-ch-75', 
    specifications = '{"référence": "TUOTYN0075", "type_de_canule": "Type A/B", "diamètre": "7,5 Charrière (CH)", "diamètre_externe_approximatif": "2,5 mm", "usage": "Trachéotomie", "stérilisation": "Stérile", "usage_unique": "Oui", "matériau": "PVC médical ou silicone biocompatible"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOTYN0075';
UPDATE product 
SET 
    name = 'De Tracheotomie A/b Ch 8', 
    slug = 'de-tracheotomie-ab-ch-8', 
    specifications = '{"Référence": "TUOTYN0080", "Type": "Canule de trachéotomie A/B", "Diamètre": "CH 8 (Charrière 8)", "Stérilisation": "Stérile, usage unique", "Matériau": "PVC médical biocompatible", "Type de raccord": "Connecteur standard 15 mm", "Conditionnement": "Emballage individuel stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOTYN0080';
UPDATE product 
SET 
    name = 'Circuit Respiratoire Coaxial 1.80 M Avec Branche 50 Cm', 
    slug = 'circuit-respiratoire-coaxial-180-m-avec-branche-50-cm', 
    specifications = '{"Type": "Circuit respiratoire coaxial", "Longueur totale": "1.80 mètre", "Longueur de branche": "50 cm", "Configuration": "Coaxiale (tube dans tube)", "Usage": "Usage unique, stérile", "Matériau": "Plastique médical biocompatible", "Transparence": "Transparent pour contrôle visuel", "Connecteurs": "Connecteurs standards 22 mm", "Stérilisation": "Stérilisé par oxyde d''éthylène"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOBCT180';
UPDATE product 
SET 
    name = 'De Sonde D''intubation Sélective Droite Ch37', 
    slug = 'de-sonde-dintubation-selective-droite-ch37', 
    specifications = '{"Type": "Sonde d''intubation endobronchique à double lumière", "Orientation": "Sélective droite", "Calibre": "CH37 (French)", "Nombre de lumières": "Double lumière", "Type de ballonnet": "Double ballonnet (trachéal et bronchique)", "Matériau": "PVC médical biocompatible", "Stérilisation": "Stérile par oxyde d''éthylène", "Usage": "Usage unique", "Longueur": "Standard pour adulte", "Connecteurs": "Connecteurs standards 15 mm"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUODECR037';
UPDATE product 
SET 
    name = 'Masque D''anesthésie À Coque Souple Type 2', 
    slug = 'masque-danesthesie-a-coque-souple-type-2', 
    specifications = '{"Référence": "TUOAMS002", "Type": "Masque d''anesthésie à coque souple", "Taille": "2 (Adulte)", "Matériau": "PVC médical souple, transparent", "Type de bord": "Coussin gonflable", "Stérilité": "Non stérile", "Usage": "Usage unique", "Raccord": "Connecteur standard 22 mm", "Transparence": "Oui", "Latex": "Sans latex"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOAMS002';
UPDATE product 
SET 
    name = 'De Sonde D''intubation Selective Gauche Ch37', 
    slug = 'de-sonde-dintubation-selective-gauche-ch37', 
    specifications = '{"Référence": "TUODECL037", "Type": "Sonde d''intubation endobronchique à double lumière", "Orientation": "Sélective gauche", "Diamètre": "CH37 (Charrière 37 / 12,3 mm)", "Nombre de lumières": "Double lumière", "Ballonnets": "Bronchique et trachéal", "Matériau": "PVC médical biocompatible", "Stérilisation": "Stérile par oxyde d''éthylène", "Usage": "Usage unique", "Conditionnement": "Emballage individuel stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUODECL037';
UPDATE product 
SET 
    name = 'À Oxygène Avec Tubulure Pédiatrique', 
    slug = 'a-oxygene-avec-tubulure-pediatrique', 
    specifications = '{"Type de dispositif": "Masque à oxygène pédiatrique", "Application": "Oxygénothérapie", "Population cible": "Pédiatrique", "Tubulure": "Incluse", "Matériau": "PVC médical", "Transparence": "Oui", "Usage": "Usage unique", "Stérilisation": "Non stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOOMN0120';
UPDATE product 
SET 
    name = 'Filtre Hme Enfants', 
    slug = 'filtre-hme-enfants', 
    specifications = '{"type_dispositif": "Échangeur de chaleur et d''humidité (HME)", "population_cible": "Pédiatrique (enfants)", "usage": "Usage unique", "type_filtration": "Échange thermique et hydrique", "connexions": "Standards ISO"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOIAM000';
UPDATE product 
SET 
    name = 'De Sonde D''intubation Selective Gauche Ch39', 
    slug = 'de-sonde-dintubation-selective-gauche-ch39', 
    specifications = '{"type_dispositif": "Sonde d''intubation endobronchique à double lumière", "orientation": "Gauche", "calibre": "CH39 (13 mm)", "nombre_lumieres": "Double lumière", "utilisation": "Usage unique", "sterilisation": "Stérile", "presentation": "Kit complet", "materiau": "PVC médical biocompatible", "radiopacite": "Repères radioopaques"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUODECL039';
UPDATE product 
SET 
    name = 'À Oxygène Avec Tubulure Adulte', 
    slug = 'a-oxygene-avec-tubulure-adulte', 
    specifications = '{"Type de dispositif": "Masque à oxygène avec tubulure intégrée", "Population cible": "Adulte", "Matériau": "PVC médical transparent", "Type de tubulure": "Tubulure à oxygène standard", "Longueur de tubulure": "Environ 2 mètres (standard)", "Fixation": "Élastique auriculaire ajustable", "Utilisation": "Usage unique - stérile", "Conditionnement": "Emballage individuel stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOOMN0220';
UPDATE product 
SET 
    name = 'De Tracheotomie A/b Ch 9', 
    slug = 'de-tracheotomie-ab-ch-9', 
    specifications = '{"Référence": "TUOTYN0090", "Type": "Canule de trachéotomie A/B", "Calibre": "Charrière 9 (CH 9)", "Diamètre interne": "Environ 3,0 mm", "Diamètre externe": "Environ 4,3 mm", "Matériau": "PVC médical biocompatible", "Stérilisation": "Oxyde d''éthylène", "Conditionnement": "Stérile, usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOTYN0090';
UPDATE product 
SET 
    name = 'De Sonde D''intubation Selective Gauche Ch32', 
    slug = 'de-sonde-dintubation-selective-gauche-ch32', 
    specifications = '{"type_produit": "Sonde d''intubation endobronchique double lumière", "lateralite": "Gauche", "calibre": "CH32 (French)", "nombre_de_lumieres": "Double lumière", "conditionnement": "Kit complet", "sterilite": "Stérile", "usage": "Usage unique", "marquage": "Radiopaque", "materiau": "Matériaux biocompatibles de qualité médicale"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUODECL032';
UPDATE product 
SET 
    name = 'De Sonde D''intubation Sélective Gauche Ch35', 
    slug = 'de-sonde-dintubation-selective-gauche-ch35', 
    specifications = '{"référence": "TUODECL035", "type": "Sonde d''intubation endobronchique à double lumière", "calibre": "CH35 (French)", "configuration": "Gauche (intubation bronche souche gauche)", "nombre_de_lumières": "Double lumière", "ballonnets": "2 ballonnets (trachéal et bronchique)", "matériau": "PVC médical biocompatible", "transparence": "Tube transparent", "marquage": "Repères radioopaques", "connecteurs": "Connecteurs standards 15 mm", "stérilisation": "Stérilisé par oxyde d''éthylène", "usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUODECL035';
UPDATE product 
SET 
    name = 'Masque D''anesthésie À Coque Souple 1', 
    slug = 'masque-danesthesie-a-coque-souple-1', 
    specifications = '{"Type de produit": "Masque d''anesthésie gonflable", "Type de coque": "Coque souple", "Matériau": "PVC médical sans latex", "Usage": "Usage unique", "Stérilisation": "Non stérile", "Transparence": "Transparent", "Type de coussin": "Gonflable ajustable", "Connecteur": "Standard 22 mm", "Référence": "TUOAMS001"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOAMS001';
UPDATE product 
SET 
    name = 'Anti-bactérien Hme Pédiatrique', 
    slug = 'anti-bacterien-hme-pediatrique', 
    specifications = '{"Type de dispositif": "Échangeur de chaleur et d''humidité avec filtre antibactérien", "Application": "Pédiatrique", "Efficacité de filtration": "Antibactérienne et antivirale", "Type d''usage": "Usage unique", "Connecteurs": "Standardisés 15/22 mm", "Espace mort": "Faible volume adapté à la pédiatrie", "Résistance": "Minimale pour application pédiatrique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOHMEC00';
UPDATE product 
SET 
    name = 'À Oxygène Pédiatrique', 
    slug = 'a-oxygene-pediatrique', 
    specifications = '{"Type de dispositif": "Lunette à oxygène (canule nasale)", "Population cible": "Pédiatrique", "Usage": "Administration d''oxygénothérapie", "Type d''utilisation": "Usage unique", "Matériaux": "PVC médical non toxique", "Stérilité": "Non stérile", "Longueur de tubulure": "Standard (selon normes pédiatriques)"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUON012541';
UPDATE product 
SET 
    name = 'Filtre Hme Nourrissons', 
    slug = 'filtre-hme-nourrissons', 
    specifications = '{"Type de dispositif": "Échangeur de chaleur et d''humidité (HME)", "Population cible": "Nourrissons et nouveau-nés", "Espace mort": "Minimal (optimisé pour pédiatrie)", "Type de filtre": "Hygroscopique", "Efficacité de filtration": "≥ 99,999% (bactéries et virus)", "Résistance à l''écoulement": "Faible résistance adaptée aux petits volumes", "Usage": "Usage unique - stérile", "Conditionnement": "Individuel sous blister stérile", "Durée d''utilisation recommandée": "24 heures maximum ou selon protocole hospitalier"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOIHME00';
UPDATE product 
SET 
    name = 'À Oxygène Adulte', 
    slug = 'a-oxygene-adulte', 
    specifications = '{"Type de dispositif": "Lunette à oxygène / Canule nasale", "Population cible": "Adulte", "Référence": "TUONO22541", "Usage": "Administration d''oxygène par voie nasale", "Type d''utilisation": "Usage unique", "Matériau": "Matériaux biocompatibles (PVC médical)", "Stérilité": "Non stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUONO22541';
UPDATE product 
SET 
    name = 'Kit De Sonde Sélective Droite 39', 
    slug = 'kit-de-sonde-selective-droite-39', 
    specifications = '{"Référence": "TUODECR039", "Type": "Sonde endobronchique double lumière", "Configuration": "Sélective droite", "Taille": "39 French (13 mm)", "Nombre de lumières": "2 (double lumière)", "Nombre de ballonnets": "2 (trachéal et bronchique)", "Matériau": "PVC médical biocompatible", "Marquage": "Radiopaque", "Stérilisation": "Oxyde d''éthylène", "Conditionnement": "Stérile, usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUODECR039';
UPDATE product 
SET 
    name = 'Masque D''anesthésie À Coque Souple - Taille 3', 
    slug = 'masque-danesthesie-a-coque-souple-taille-3', 
    specifications = '{"référence": "TUOAMS003", "désignation": "Masque d''anesthésie à coque souple", "taille": "3 (Adulte standard)", "type_de_coque": "Souple gonflable", "diamètre_connecteur": "22 mm (standard)", "matériau": "PVC médical souple, hypoallergénique", "transparence": "Oui", "type_usage": "Usage unique recommandé", "stérilisation": "Non stérile (à usage non invasif)"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOAMS003';
UPDATE product 
SET 
    name = 'Aiguille De Biopsie De Moelle Osseuse - 13g 100mm', 
    slug = 'aiguille-de-biopsie-de-moelle-osseuse-13g-100mm', 
    specifications = '{"official_sku": "BP13-10", "product_line": "CORTEX", "designation": "TROCART DE BIOPSY DE MOELLE OSSEUSE (CORTEX)", "english_name": "Bone Marrow Biopsy Needle", "category": "Bone Marrow Biopsy", "gauge": "13G", "gauge_numeric": "13", "diameter_mm": "2.5", "length_cm": "10", "length_mm": "100", "feature_tip_type": "Crown tip cannula", "feature_handle": "Anatomic handle", "feature_extraction_wire": "true", "feature_safety_device": "true", "feature_extractable_stylet": "Trocar tip", "feature_echogenic_marker": "false", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "120", "pricing_pv_ht_revendeurs": "100", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Bone Marrow Biopsy')
WHERE sku = 'ZAMBP13-10';
UPDATE product 
SET 
    name = 'D''anesthesie Taille 5 Bleu', 
    slug = 'danesthesie-taille-5-bleu', 
    specifications = '{"référence": "TUOIAM005", "type": "Masque d''anesthésie gonflable", "taille": "5 (Adulte grand)", "couleur_identification": "Bleu", "diamètre_connexion": "22 mm (standard ISO)", "matériau": "PVC médical transparent, sans latex", "système_gonflage": "Valve intégrée avec ballon pilote", "volume_bourrelet": "Ajustable par gonflage", "transparence": "Oui, surveillance visuelle optimale", "stérilisation": "Non stérile, à usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOIAM005';
UPDATE product 
SET 
    name = 'D''anesthesie Taille 3', 
    slug = 'danesthesie-taille-3', 
    specifications = '{"Référence": "TUOIAM003", "Type": "Masque d''anesthésie gonflable", "Taille": "3 (Adulte)", "Matériau": "PVC médical souple, hypoallergénique", "Transparence": "Transparente pour surveillance visuelle", "Système de gonflage": "Valve pneumatique intégrée", "Connexion": "Raccord standard 22 mm", "Stérilisation": "Compatible avec les méthodes de stérilisation hospitalières", "Usage": "Usage unique ou réutilisable selon protocole"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOIAM003';
UPDATE product 
SET 
    name = 'Larynge (manchette Pvc) Taille 4', 
    slug = 'larynge-manchette-pvc-taille-4', 
    specifications = '{"Référence": "TUOLMAP140", "Taille": "4", "Poids patient recommandé": "50-70 kg", "Type de patient": "Adulte", "Matériau du tube": "PVC médical transparent", "Matériau de la manchette": "PVC souple", "Volume maximal de gonflage": "30 ml (approximatif)", "Diamètre de connexion": "15 mm (standard)", "Type de dispositif": "Usage unique, stérile", "Méthode de stérilisation": "Oxyde d''éthylène (présumé)", "Longueur du tube": "Standard pour taille 4", "Présence de ballon pilote": "Oui"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOLMAP140';
UPDATE product 
SET 
    name = 'D''anesthesie Taille 5 Silicone Reutilisable', 
    slug = 'danesthesie-taille-5-silicone-reutilisable', 
    specifications = '{"Référence": "TUOSMB005", "Désignation": "Masque d''anesthésie taille 5 silicone réutilisable", "Taille": "5 (Adulte)", "Matériau": "Silicone médical", "Type de bord": "Flexible (Bending Edge)", "Usage": "Réutilisable", "Transparence": "Oui", "Stérilisable": "Oui (autoclavable)", "Température de stérilisation": "Jusqu''à 134°C", "Connecteur": "Standard 22 mm", "Sans latex": "Oui"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOSMB005';
UPDATE product 
SET 
    name = 'Larynge (pvc) Taille 3', 
    slug = 'larynge-pvc-taille-3', 
    specifications = '{"Référence": "TUOLMAP130", "Taille": "3", "Matériau": "PVC médical (Polychlorure de vinyle)", "Poids du patient": "30 - 50 kg (adulte)", "Diamètre du connecteur": "15 mm (standard ISO)", "Type de ballonnet": "Haute compliance", "Volume de gonflage du ballonnet": "20 ml (approximatif)", "Longueur du tube": "Standard selon taille 3", "Transparence": "Oui", "Présence de latex": "Non (sans latex)", "Stérilisation": "Stérile par oxyde d''éthylène (ETO)", "Usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOLMAP130';
UPDATE product 
SET 
    name = 'Masque D’anesthésie N°2', 
    slug = 'masque-danesthesie-n2', 
    specifications = '{"Référence": "TUOIAM002", "Désignation": "Masque d''anesthésie n°2", "Type": "Gonflable standard", "Taille": "N°2", "Application": "Pédiatrique / Petit adulte", "Connecteur": "22 mm (standard ISO)", "Type de bourrelet": "Gonflable pneumatique", "Matériau": "PVC médical transparent, sans latex", "Transparence": "Oui", "Stérilité": "Non stérile", "Usage": "Usage unique recommandé ou réutilisable après stérilisation appropriée"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOIAM002';
UPDATE product 
SET 
    name = 'Larynge (ballonnet En Silicone) Taille 4', 
    slug = 'larynge-ballonnet-en-silicone-taille-4', 
    specifications = '{"Référence": "TUOLMA140", "Type de produit": "Masque laryngé standard", "Taille": "4", "Poids patient recommandé": "50-70 kg", "Type de patient": "Adulte", "Matériau du ballonnet": "Silicone médical", "Type de dispositif": "Usage unique, stérile", "Connecteur": "15 mm ISO standard", "Stérilisation": "Stérile ETO", "Latex": "Sans latex"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOLMA140';
UPDATE product 
SET 
    name = 'Masque D’anesthésie N°1', 
    slug = 'masque-danesthesie-n1', 
    specifications = '{"référence": "TUOIAM001", "désignation": "Masque d''anesthésie n°1", "type": "Type normal avec coussin gonflable", "taille": "N°1", "matériau": "PVC médical transparent", "type_de_coussin": "Gonflable", "connecteur": "Standard 22 mm", "stérilité": "Non stérile", "usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOIAM001';
UPDATE product 
SET 
    name = 'Larynge (silicone Cuff) Taille 12.5', 
    slug = 'larynge-silicone-cuff-taille-125', 
    specifications = '{"Référence": "TUOLMA125", "Type de dispositif": "Masque laryngé type standard", "Taille": "12.5", "Matériau du ballonnet": "Silicone médical", "Type d''utilisation": "Usage unique", "Connecteur": "15 mm standard ISO", "Stérilisation": "Stérile - Oxyde d''éthylène", "Population cible": "Adultes - morphologie spécifique", "Transparence": "Tube transparent pour visualisation"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOLMA125';
UPDATE product 
SET 
    name = 'Larynge (ballonnet En Silicone) Taille 12', 
    slug = 'larynge-ballonnet-en-silicone-taille-12', 
    specifications = '{"Référence": "TUOLMA120", "Type": "Masque laryngé à ballonnet silicone", "Taille": "12", "Population cible": "Adultes de forte corpulence (>100 kg)", "Matériau du ballonnet": "Silicone médical", "Diamètre du connecteur": "15 mm (standard)", "Stérilisation": "Stérile - Oxyde d''éthylène", "Usage": "Usage unique", "Sans latex": "Oui", "Transparence": "Tige de ventilation transparente", "Conditionnement": "Emballage individuel stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOLMA120';
UPDATE product 
SET 
    name = 'Larynge (manchon En Silicone) Taille 11', 
    slug = 'larynge-manchon-en-silicone-taille-11', 
    specifications = '{"Référence": "TUOLMA110", "Type de produit": "Masque laryngé type normal", "Taille": "11", "Matériau du ballonnet": "Silicone médical", "Type de ballonnet": "Gonflable", "Diamètre du connecteur": "15 mm (standard ISO)", "Usage": "Usage unique - stérile", "Méthode de stérilisation": "Oxyde d''éthylène (ETO)", "Latex": "Sans latex", "Transparence du tube": "Oui"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOLMA110';
UPDATE product 
SET 
    name = 'Larynge (manchette Pvc) Taille 5', 
    slug = 'larynge-manchette-pvc-taille-5', 
    specifications = '{"Référence": "TUOLMAP150", "Type": "Masque laryngé avec manchette PVC", "Taille": "5", "Population_cible": "Adultes > 70 kg", "Matériau_principal": "PVC médical (Polychlorure de vinyle)", "Type_de_manchette": "Gonflable en PVC", "Connecteur": "Standard 15 mm ISO", "Volume_de_gonflage_recommandé": "40 ml maximum", "Stérilisation": "Stérilisé à l''oxyde d''éthylène", "Usage": "Usage unique", "Radio-opacité": "Oui", "Sans_latex": "Oui"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOLMAP150';
UPDATE product 
SET 
    name = 'Masque D''anesthésie À Coque Souple - Taille 5', 
    slug = 'masque-danesthesie-a-coque-souple-taille-5', 
    specifications = '{"Référence": "TUOAMS005", "Type": "Masque d''anesthésie à coque souple", "Taille": "5 (Adulte grand)", "Matériau de la coque": "PVC médical transparent sans latex", "Type de coussinet": "Gonflable/inflatable", "Connecteur": "Standard 22 mm (ISO 5356-1)", "Transparence": "Oui - visibilité complète", "Stérilisation": "Autoclavable ou désinfection chimique", "Usage": "Réutilisable", "Volume mort": "Faible (< 50 ml)", "Compatibilité": "Tous circuits d''anesthésie standard"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOAMS005';
UPDATE product 
SET 
    name = 'D''anesthésie Taille 3 Silicone Réutilisable', 
    slug = 'danesthesie-taille-3-silicone-reutilisable', 
    specifications = '{"Référence": "TUOSMB003", "Taille": "3 (adulte moyen)", "Matériau": "Silicone médical", "Type": "Masque à bord souple flexible (Bending Edge)", "Usage": "Réutilisable", "Transparence": "Oui", "Stérilisation": "Compatible autoclave et désinfection chimique", "Type de connexion": "Raccord standard 22 mm", "Latex": "Sans latex"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOSMB003';
UPDATE product 
SET 
    name = 'D''anesthesie Taille 4 Rouge', 
    slug = 'danesthesie-taille-4-rouge', 
    specifications = '{"Référence": "TUOIAM004", "Type de produit": "Masque d''anesthésie gonflable", "Taille": "4 (Adulte)", "Code couleur": "Rouge", "Type": "Normal/Standard", "Diamètre du connecteur": "22 mm (standard)", "Matériau du corps": "Polycarbonate transparent", "Matériau du coussinet": "PVC médical souple", "Système de gonflage": "Valve d''insufflation intégrée", "Stérilisation": "Compatible avec les méthodes de désinfection standard", "Usage": "Usage unique ou réutilisable selon protocole hospitalier"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOIAM004';
UPDATE product 
SET 
    name = 'D''anesthesie Taille 4 Silicone Reutilisable', 
    slug = 'danesthesie-taille-4-silicone-reutilisable', 
    specifications = '{"Référence": "TUOSMB004", "Taille": "4 (Adulte)", "Matériau": "Silicone médical transparent", "Type de bord": "Flexible (Bending Edge)", "Type de dispositif": "Réutilisable", "Connexion": "Standard 22 mm", "Stérilisation": "Autoclavable (jusqu''à 134°C)", "Transparence": "Totale", "Espace mort": "Minimal", "Durée de vie": "Nombreux cycles de stérilisation"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOSMB004';
UPDATE product 
SET 
    name = 'Larynge (ballonnet En Silicone) Taille 4 Réutilisable', 
    slug = 'larynge-ballonnet-en-silicone-taille-4-reutilisable', 
    specifications = '{"Référence": "TUOMAR040", "Type": "Masque laryngé réutilisable", "Taille": "4", "Matériau du ballonnet": "Silicone médical", "Poids patient recommandé": "50-70 kg", "Type de patient": "Adulte", "Diamètre du connecteur": "15 mm (standard)", "Stérilisation": "Autoclavable", "Nombre de réutilisations": "Jusqu''à 40 cycles (selon protocole)", "Transparence du tube": "Oui", "Type de valve": "Sans valve"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOMAR040';
UPDATE product 
SET 
    name = 'Larynge (ballonnet En Silicone) Taille 5', 
    slug = 'larynge-ballonnet-en-silicone-taille-5', 
    specifications = '{"reference": "TUOLMA150", "type_dispositif": "Masque laryngé type normal", "taille": "5", "materiau_ballonnet": "Silicone médical", "population_cible": "Adultes (>70-80 kg)", "volume_ballonnet": "30-40 ml (selon recommandations fabricant)", "diametre_connecteur": "15 mm (standard ISO)", "type_usage": "Usage unique - stérile", "sterilisation": "Stérilisé à l''oxyde d''éthylène (ETO)", "conditionnement": "Emballage individuel stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOLMA150';
UPDATE product 
SET 
    name = 'Larynge (manchette En Silicone) Taille 5 Reutilisable', 
    slug = 'larynge-manchette-en-silicone-taille-5-reutilisable', 
    specifications = '{"Référence": "TUOMAR050", "Type": "Masque laryngé type normal", "Taille": "5", "Matériau de la manchette": "Silicone médical", "Type d''utilisation": "Réutilisable", "Poids patient recommandé": "70-100 kg", "Connecteur": "15 mm (standard ISO)", "Nombre de stérilisations": "Jusqu''à 40 cycles", "Volume du ballonnet": "Environ 40 ml", "Méthode de stérilisation": "Autoclave 134°C, stérilisation vapeur"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOMAR050';
UPDATE product 
SET 
    name = 'Nebuliseur Avec Tubulure Adulte', 
    slug = 'nebuliseur-avec-tubulure-adulte', 
    specifications = '{"Type": "Masque à oxygène avec nébuliseur intégré", "Catégorie patient": "Adulte", "Composants": "Masque facial, nébuliseur, tubulure", "Matériaux": "PVC médical souple et hypoallergénique", "Transparence": "Oui, pour surveillance visuelle", "Usage": "Usage unique", "Stérilité": "Non stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOOMR0220';
UPDATE product 
SET 
    name = 'Larynge (silicone) Taille 3 Reutilisable', 
    slug = 'larynge-silicone-taille-3-reutilisable', 
    specifications = '{"Référence": "TUOMAR030", "Désignation": "Masque Laryngé (Silicone) Taille 3 Réutilisable", "Type": "Normal Type", "Taille": "3", "Matériau": "Silicone médical", "Utilisation": "Réutilisable", "Poids patient recommandé": "30-50 kg", "Connecteur": "15 mm (standard)", "Volume du ballonnet": "20 ml (approximatif)", "Stérilisation": "Autoclavage jusqu''à 134°C", "Nombre de réutilisations": "Jusqu''à 40 cycles (selon protocole)", "Diamètre interne du tube": "Selon standard taille 3"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOMAR030';
UPDATE product 
SET 
    name = 'Set De Pression Artérielle Double', 
    slug = 'set-de-pression-arterielle-double', 
    specifications = '{"Type de dispositif": "Set de pression artérielle avec transducteur double", "Nombre de voies": "Double voie", "Type de transducteur": "Transducteur de pression jetable", "Stérilisation": "Stérile par oxyde d''éthylène", "Usage": "Usage unique", "Matériaux": "Plastique médical biocompatible", "Longueur des lignes": "Standard médical", "Robinets": "Robinets trois voies intégrés"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOPTCDP2';
UPDATE product 
SET 
    name = 'Set De Pression Artérielle Simple', 
    slug = 'set-de-pression-arterielle-simple', 
    specifications = '{"Type de produit": "Set de pression artérielle avec transducteur", "Configuration": "Simple voie", "Type de monitoring": "Invasif", "Usage": "Usage unique", "Stérilisation": "Stérilisé", "Type de transducteur": "Transducteur de pression jetable"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOPTCDP1';
UPDATE product 
SET 
    name = 'Nébuliseur Avec Tubulure Pédiatrique', 
    slug = 'nebuliseur-avec-tubulure-pediatrique', 
    specifications = '{"Type de dispositif": "Masque à oxygène avec nébuliseur intégré", "Population cible": "Pédiatrique", "Matériau": "PVC souple médical", "Tubulure": "Incluse", "Type de masque": "Masque facial", "Usage": "Usage unique", "Stérilité": "Non stérile", "Sans latex": "Oui"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOOMR0120';
UPDATE product 
SET 
    name = 'D Intubation A/b 5', 
    slug = 'd-intubation-ab-5', 
    specifications = '{"Référence": "TUOET0055", "Type": "Sonde d''intubation endotrachéale avec ballonnet", "Diamètre interne": "5,0 mm", "Matériau": "PVC médical de qualité chirurgicale", "Ballonnet": "Haute compliance, faible pression", "Connecteur": "15 mm ISO standard", "Radio-opacité": "Ligne radio-opaque intégrée", "Graduation": "Marquage de profondeur en cm", "Stérilisation": "Stérile, usage unique", "Transparence": "Tube transparent"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET0055';
UPDATE product 
SET 
    name = 'À Perfusion 275 Ml 5ml/h', 
    slug = 'a-perfusion-275-ml-5mlh', 
    specifications = '{"type_de_dispositif": "Pompe à perfusion type CBI (Continuous Basal Infusion)", "capacite_reservoir": "275 mL", "debit_nominal": "5 mL/h", "principe_fonctionnement": "Perfusion basale continue", "personnalisation": "Volume et débit personnalisables", "alimentation": "Système mécanique autonome (sans batterie)", "usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOCBI27550';
UPDATE product 
SET 
    name = 'D''intubation A/b 7', 
    slug = 'dintubation-ab-7', 
    specifications = '{"Référence": "TUOET0070", "Type": "Sonde d''intubation endotrachéale A/B", "Diamètre interne": "7,0 mm", "Matériau": "PVC médical transparent", "Type de ballonnet": "Haute compliance", "Embout": "Murphy atraumatique", "Connecteur": "Standard 15mm ISO", "Radio-opacité": "Oui, ligne radio-opaque", "Graduation": "Marquage centimétrique", "Stérilisation": "Oxyde d''éthylène (ETO)", "Conditionnement": "Stérile, usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET0070';
UPDATE product 
SET 
    name = 'Kit De Système De Biopsie Semi-automatique Tru-cut - 18g 100mm', 
    slug = 'kit-de-systeme-de-biopsie-semi-automatique-tru-cut-18g-100mm', 
    specifications = '{"official_sku": "PX18-10", "product_line": "ULTIMATE SET", "designation": "KIT DE TROCART DE BIOPSIE SEMI AUTO (TRUCUT) (ULTIMATE)", "english_name": "Semi-Automatic Tru-Cut Biopsy System Kit", "category": "Histological Biopsy", "gauge": "18G", "gauge_numeric": "18", "diameter_mm": "1.27", "length_cm": "10", "length_mm": "100", "feature_tip_type": "Whistle point needle (cutting)", "feature_mechanism": "Semi-automatic guillotine", "feature_penetration_depths": "10mm, 20mm", "feature_safety_device": "true", "feature_depth_marks": "true", "feature_stylet": "Non-extractable with notch", "feature_echogenic_marker": "Inner", "feature_coaxial_features": "[object Object]", "packaging_units_per_box": "10", "packaging_custom_sizes_available": "true", "pricing_pv_ht_cliniques": "170", "pricing_pv_ht_revendeurs": "155", "pricing_currency": "EUR"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ZAMAR'),
    category_id = (SELECT id FROM category WHERE slug = 'Histological Biopsy')
WHERE sku = 'ZAMPX18-10';
UPDATE product 
SET 
    name = 'D Intubation A/b 6', 
    slug = 'd-intubation-ab-6', 
    specifications = '{"Référence": "TUOET0060", "Type": "Sonde d''intubation endotrachéale avec ballonnet", "Diamètre interne": "6.0 mm", "Matériau": "PVC médical transparent", "Type de ballonnet": "Haute compliance", "Connecteur": "Standard 15mm ISO", "Radio-opacité": "Oui", "Graduation": "Oui, marquage centimétrique", "Stérilisation": "Oxyde d''éthylène (ETO)", "Usage": "Usage unique - stérile", "Conditionnement": "Emballage individuel stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET0060';
UPDATE product 
SET 
    name = 'D Intubation A/b 4', 
    slug = 'd-intubation-ab-4', 
    specifications = '{"référence": "TUOET0040", "type": "Sonde d''intubation endotrachéale avec ballonnet", "diamètre_interne": "4.0 mm", "matériau": "PVC médical non toxique, sans latex", "stérilisation": "Stérilisé à l''oxyde d''éthylène", "radio_opacité": "Oui, ligne radio-opaque intégrée", "connecteur": "15mm ISO standard", "ballonnet": "Haute compliance, basse pression", "graduation": "Marquage centimétrique", "usage": "Usage unique", "conditionnement": "Emballage stérile individuel"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET0040';
UPDATE product 
SET 
    name = 'D''intubation A/b 6.5', 
    slug = 'dintubation-ab-65', 
    specifications = '{"Référence": "TUOET0065", "Type": "Sonde d''intubation endotrachéale avec ballonnet", "Diamètre interne": "6.5 mm", "Matériau": "PVC médical non toxique", "Radio-opacité": "Oui", "Connecteur": "15 mm ISO standard", "Graduation": "Repères centimétriques", "Ballonnet": "Haute compliance", "Stérilisation": "Oxyde d''éthylène", "Usage": "Unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET0065';
UPDATE product 
SET 
    name = 'D''intubation A/b 4.5', 
    slug = 'dintubation-ab-45', 
    specifications = '{"référence": "TUOET0045", "type": "Sonde d''intubation endotrachéale A/B", "diamètre_interne": "4.5 mm", "matériau": "PVC médical biocompatible", "ballonnet": "Haute compliance", "connecteur": "Standard 15 mm ISO", "radio_opacité": "Oui, ligne radio-opaque intégrée", "repères_graduation": "Oui, graduations de profondeur", "stérilisation": "Stérile à l''oxyde d''éthylène", "conditionnement": "Emballage individuel stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET0045';
UPDATE product 
SET 
    name = 'D''intubation Armee A/b 6.5', 
    slug = 'dintubation-armee-ab-65', 
    specifications = '{"référence": "TUORET0065", "type": "Sonde d''intubation armée (renforcée)", "diamètre_interne": "6.5 mm", "structure": "Tube renforcé avec spirale métallique", "matériau": "PVC médical de qualité médicale", "ballonnet": "Haute compliance", "connecteur": "15 mm ISO standard", "radio_opacité": "Oui, ligne radio-opaque intégrée", "graduation": "Marquage centimétrique", "stérilisation": "Oxyde d''éthylène (ETO)", "usage": "Usage unique - stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUORET0065';
UPDATE product 
SET 
    name = 'D''intubation A/b 7.5', 
    slug = 'dintubation-ab-75', 
    specifications = '{"Référence": "TUOET0075", "Type": "Sonde d''intubation endotrachéale avec ballonnet", "Diamètre interne": "7.5 mm", "Catégorie patient": "Adulte/Pédiatrique", "Matériau": "PVC médical non toxique", "Ballonnet": "Haute compliance avec valve pilote", "Connecteur": "15mm ISO standard", "Radio-opacité": "Oui, ligne radio-opaque intégrée", "Graduation": "Marquage centimétrique", "Embout": "Type Murphy atraumatique", "Stérilisation": "Stérile par oxyde d''éthylène", "Usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET0075';
UPDATE product 
SET 
    name = 'D''intubation Armee A/b 7', 
    slug = 'dintubation-armee-ab-7', 
    specifications = '{"Référence": "TUORET0070", "Type": "Sonde d''intubation endotrachéale armée", "Diamètre interne": "7.0 mm", "Structure": "Renforcée avec spirale métallique", "Matériau": "PVC médical transparent", "Ballonnet": "Haute conformité avec valve pilote", "Connecteur": "Standard 15mm ISO", "Graduation": "Marquage centimétrique", "Stérilisation": "Stérile par oxyde d''éthylène", "Conditionnement": "Stérile à usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUORET0070';
UPDATE product 
SET 
    name = 'D Intubation Armee A/b 7.5', 
    slug = 'd-intubation-armee-ab-75', 
    specifications = '{"référence": "TUORET0075", "type": "Sonde d''intubation endotrachéale armée", "diamètre_interne": "7.5 mm", "structure": "Renforcée par spirale métallique", "matériau": "PVC médical de grade chirurgical", "ballonnet": "Haute compliance avec valve pilote", "connecteur": "15 mm ISO standard", "radio_opacité": "Oui, ligne radio-opaque", "marquage": "Gradué en centimètres", "stérilisation": "Stérile par oxyde d''éthylène", "usage": "Usage unique", "type_patient": "Adulte"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUORET0075';
UPDATE product 
SET 
    name = 'Système Clos D''aspiration Trachéale Ch12', 
    slug = 'systeme-clos-daspiration-tracheale-ch12', 
    specifications = '{"Référence": "TUOSCC12PVE", "Désignation": "Système clos d''aspiration CH12", "Calibre": "CH12 (French/Charrière)", "Type de valve": "Valve de contrôle avec verrouillage", "Mécanisme de rotation": "Bouton rotatif", "Matériau": "PVC médical", "Stérilisation": "Stérile à usage unique", "Type de système": "Circuit fermé"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOSCC12PVE';
UPDATE product 
SET 
    name = 'Système Clos D''aspiration Ch10', 
    slug = 'systeme-clos-daspiration-ch10', 
    specifications = '{"Référence": "TUOSCC10PVE", "Désignation": "Système clos d''aspiration", "Calibre": "CH10 (Charrière 10)", "Type de valve": "Valve de contrôle avec verrouillage", "Système de contrôle": "Molette rotative", "Stérilisation": "Stérile, à usage unique", "Type de circuit": "Circuit fermé", "Matériau": "PVC médical"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOSCC10PVE';
UPDATE product 
SET 
    name = 'D''intubation Preforme Nasale A/b 6', 
    slug = 'dintubation-preforme-nasale-ab-6', 
    specifications = '{"Référence": "TUONET0060", "Type": "Sonde d''intubation préformée nasale", "Forme": "A/B (préformée anatomique)", "Diamètre interne": "6.0 mm", "Voie d''intubation": "Nasale", "Matériau": "PVC médical thermosensible", "Ballonet": "Haute compliance", "Connecteur": "15 mm ISO standard", "Radio-opacité": "Oui, ligne et repères radio-opaques", "Stérilisation": "Oxyde d''éthylène (ETO)", "Usage": "Usage unique, stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUONET0060';
UPDATE product 
SET 
    name = 'D''intubation Preforme Orale A/b 7', 
    slug = 'dintubation-preforme-orale-ab-7', 
    specifications = '{"Référence": "TUOOET0070", "Type": "Sonde d''intubation préformée orale/nasale", "Diamètre interne": "7.0 mm", "Type de courbure": "Préformée anatomique (Type A/B)", "Matériau": "PVC médical thermosensible", "Radio-opacité": "Ligne radio-opaque", "Ballonnet": "Haute conformité, basse pression", "Connecteur": "15 mm ISO standard", "Stérilisation": "Oxyde d''éthylène", "Usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOOET0070';
UPDATE product 
SET 
    name = 'Sonde D’intubation Sans Ballonnet N° 4', 
    slug = 'sonde-dintubation-sans-ballonnet-n-4', 
    specifications = '{"référence": "TUOET1040", "type": "Sonde d''intubation endotrachéale", "ballonnet": "Sans ballonnet", "calibre": "N°4", "diamètre_interne": "4,0 mm", "matériau": "PVC médical transparent radio-opaque", "connecteur": "Connecteur universel ISO 15 mm", "type_embout": "Biseauté type Murphy", "stérilisation": "Oxyde d''éthylène (ETO)", "usage": "Usage unique", "radio_opacité": "Oui"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET1040';
UPDATE product 
SET 
    name = 'Lame De Bistouri N°11 (bte 100)', 
    slug = 'lame-de-bistouri-n11-bte-100', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'SWAN MORTON'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'SW158511';
UPDATE product 
SET 
    name = 'Lame De Bistouri N°15 (bte 100)', 
    slug = 'lame-de-bistouri-n15-bte-100', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'SWAN MORTON'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'SWA158515';
UPDATE product 
SET 
    name = 'Système Clos D''aspiration Ch14', 
    slug = 'systeme-clos-daspiration-ch14', 
    specifications = '{"Référence": "TUOSCC14PVE", "Type": "Système clos d''aspiration trachéale", "Calibre": "CH14 / 14 French", "Mécanisme de contrôle": "Bouton rotatif avec valve verrouillable", "Stérilité": "Stérile, usage unique", "Type de valve": "Valve de contrôle avec fonction de verrouillage", "Matériau": "PVC médical", "Transparence": "Manchon transparent pour visualisation"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOSCC14PVE';
UPDATE product 
SET 
    name = 'Sonde D’intubation Sans Ballonnet N° 3.5', 
    slug = 'sonde-dintubation-sans-ballonnet-n-35', 
    specifications = '{"Référence": "TUOET1035", "Désignation": "Sonde d''intubation sans ballonnet", "Diamètre interne": "3.5 mm", "Type": "Sans ballonnet", "Matériau": "PVC médical transparent", "Radio-opacité": "Oui, ligne radio-opaque intégrée", "Connecteur": "15 mm ISO standard", "Graduation": "Centimétrique", "Stérilisation": "Oxyde d''éthylène", "Usage": "Usage unique", "Conditionnement": "Stérile, emballage individuel"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET1035';
UPDATE product 
SET 
    name = 'Sonde D’intubation Sans Ballonnet N° 3', 
    slug = 'sonde-dintubation-sans-ballonnet-n-3', 
    specifications = '{"Référence": "TUOET1030", "Taille": "n°3", "Type": "Sans ballonnet", "Diamètre interne": "3.0 mm", "Diamètre externe": "Environ 4.3 mm", "Longueur": "Standard pédiatrique", "Matériau": "PVC médical transparent", "Connecteur": "15 mm ISO standard", "Radio-opacité": "Oui, ligne radio-opaque intégrée", "Graduation": "Marquage centimétrique", "Stérilisation": "Oxyde d''éthylène", "Usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET1030';
UPDATE product 
SET 
    name = 'Gants De Chirurgie En Latex Non Poudrés 7.5 G Premium', 
    slug = 'gants-de-chirurgie-en-latex-non-poudres-75-g-premium', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'GUILLIN'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'GUIMTPC75';
UPDATE product 
SET 
    name = 'Gants De Chirurgie En Latex Non Poudrés 7.0 G Essential', 
    slug = 'gants-de-chirurgie-en-latex-non-poudres-70-g-essential', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'GUILLIN'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'GUILMLES70';
UPDATE product 
SET 
    name = 'Gants De Chirurgie En Latex Non Poudrés 8 G Essential', 
    slug = 'gants-de-chirurgie-en-latex-non-poudres-8-g-essential', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'GUILLIN'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'GUIMLES80';
UPDATE product 
SET 
    name = 'Gants De Chirurgie En Latex Non Poudrés 7.5 G Essential', 
    slug = 'gants-de-chirurgie-en-latex-non-poudres-75-g-essential', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'GUILLIN'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'GUIMLES75';
UPDATE product 
SET 
    name = 'Gants De Chirurgie En Latex Non Poudrés 8 G Premium', 
    slug = 'gants-de-chirurgie-en-latex-non-poudres-8-g-premium', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'GUILLIN'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'GUIMTPC80';
UPDATE product 
SET 
    name = 'Gants De Chirurgie En Latex Non Poudrés 6.5 G Essential', 
    slug = 'gants-de-chirurgie-en-latex-non-poudres-65-g-essential', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'GUILLIN'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'GUIMLES65';
UPDATE product 
SET 
    name = 'Gants De Chirurgie En Latex Non Poudrés 7.0 G Premium', 
    slug = 'gants-de-chirurgie-en-latex-non-poudres-70-g-premium', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'GUILLIN'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'GUIMTPC70';
UPDATE product 
SET 
    name = 'Gants De Chirurgie En Latex Non Poudrés 6.5 G Premium', 
    slug = 'gants-de-chirurgie-en-latex-non-poudres-65-g-premium', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'GUILLIN'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'GUIMTPC65';
UPDATE product 
SET 
    name = 'Lame De Bistouri N°24 (bte 100)', 
    slug = 'lame-de-bistouri-n24-bte-100', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'SWAN MORTON'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'SWA158524';
UPDATE product 
SET 
    name = 'Lame De Bistouri N°23 (bte 100)', 
    slug = 'lame-de-bistouri-n23-bte-100', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'SWAN MORTON'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'SWA158523';
UPDATE product 
SET 
    name = 'De Nephrostomie', 
    slug = 'de-nephrostomie', 
    specifications = '{"Official SKU": "811042", "Specifications": "12F", "Category": "Nephrostomy Kit"}',
    brand_id = (SELECT id FROM brand WHERE name = 'COPPER Medical'),
    category_id = (SELECT id FROM category WHERE slug = 'Nephrostomy Kit')
WHERE sku = 'COP811042';
UPDATE product 
SET 
    name = 'Hydrophile', 
    slug = 'hydrophile', 
    specifications = '{"Official SKU": "5615035", "Specifications": "0.035\" × 150cm (Black)", "Category": "Hydrophilic Guide"}',
    brand_id = (SELECT id FROM brand WHERE name = 'COPPER Medical'),
    category_id = (SELECT id FROM category WHERE slug = 'Hydrophilic Guide')
WHERE sku = 'COP5615135';
UPDATE product 
SET 
    name = 'Zebra', 
    slug = 'zebra', 
    specifications = '{"Official SKU": "5515035", "Specifications": "0.035\" × 150cm", "Category": "Zebra Guide"}',
    brand_id = (SELECT id FROM brand WHERE name = 'COPPER Medical'),
    category_id = (SELECT id FROM category WHERE slug = 'Zebra Guide')
WHERE sku = 'COP5515035';
UPDATE product 
SET 
    name = 'Double J Avec Guide Hydrophile', 
    slug = 'double-j-avec-guide-hydrophile', 
    specifications = '{"Official SKU": "0228074", "Specifications": "7F × 28cm", "Category": "Double J Stent (Hydrophilic Guide)"}',
    brand_id = (SELECT id FROM brand WHERE name = 'COPPER Medical'),
    category_id = (SELECT id FROM category WHERE slug = 'Double J Stent (Hydrophilic Guide)')
WHERE sku = 'COP0228074';
UPDATE product 
SET 
    name = 'Double J Avec Guide Zebra', 
    slug = 'double-j-avec-guide-zebra', 
    specifications = '{"Official SKU": "0228065", "Specifications": "6F × 28cm", "Category": "Double J Stent (Zebra Guide)"}',
    brand_id = (SELECT id FROM brand WHERE name = 'COPPER Medical'),
    category_id = (SELECT id FROM category WHERE slug = 'Double J Stent (Zebra Guide)')
WHERE sku = 'COPSDJZ6028';
UPDATE product 
SET 
    name = 'D''accès', 
    slug = 'dacces', 
    specifications = '{"Official SKU": "904160", "Specifications": "14F × 46cm", "Category": "Access Sheath"}',
    brand_id = (SELECT id FROM brand WHERE name = 'COPPER Medical'),
    category_id = (SELECT id FROM category WHERE slug = 'Access Sheath')
WHERE sku = 'COPGN1446';
UPDATE product 
SET 
    name = 'Double J Avec Poussoir Ouvert', 
    slug = 'double-j-avec-poussoir-ouvert', 
    specifications = '{"Official SKU": "0226060", "Specifications": "6F × 26cm", "Category": "Double J Stent (Open Pusher)"}',
    brand_id = (SELECT id FROM brand WHERE name = 'COPPER Medical'),
    category_id = (SELECT id FROM category WHERE slug = 'Double J Stent (Open Pusher)')
WHERE sku = 'COPDJ06026';
UPDATE product 
SET 
    name = 'Set De Stent Urétéral (stent+pousseur)', 
    slug = 'set-de-stent-ureteral-stentpousseur', 
    specifications = '{"Official SKU": "", "Specifications": "4.8F × 16cm (open-open)", "Category": "Ureteral Stent Set"}',
    brand_id = (SELECT id FROM brand WHERE name = 'COPPER Medical'),
    category_id = (SELECT id FROM category WHERE slug = 'Ureteral Stent Set')
WHERE sku = 'COPO216480';
UPDATE product 
SET 
    name = 'Lame de Bistouri Pcs 10', 
    slug = 'lame-de-bistouri-pcs-10', 
    specifications = '{"size": "10", "cond": "1", "official_sku": "PCS10", "manufacturer": "Paramount", "materials_available": "Stainless Steel, Carbon Steel", "sterility_options": "Sterile, Non-sterile", "shelf_life_years": "5", "sterilization_method": "Gamma radiation", "standards": "BS 2982:1992, ISO 7153-1:2016, ISO 7740:1985"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Surgical Blade')
WHERE sku = 'PARFGPSLSOV0PCS10';
UPDATE product 
SET 
    name = 'Casaque Renforcée Xxl 160x160cm', 
    slug = 'casaque-renforcee-xxl-160x160cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'MEDPLUS'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'MEDG2040';
UPDATE product 
SET 
    name = 'Casaque Renforcée Xl 140x160cm', 
    slug = 'casaque-renforcee-xl-140x160cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'MEDPLUS'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'MEDG2039';
UPDATE product 
SET 
    name = 'Casaque Standard Xl 140x160cm', 
    slug = 'casaque-standard-xl-140x160cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'MEDPLUS'),
    category_id = (SELECT id FROM category WHERE slug = 'bloc-operatoire')
WHERE sku = 'MEDG1039';
UPDATE product 
SET 
    name = 'Lame de Bistouri Pcs 11', 
    slug = 'lame-de-bistouri-pcs-11', 
    specifications = '{"size": "11", "cond": "1", "official_sku": "PCS11", "manufacturer": "Paramount", "materials_available": "Stainless Steel, Carbon Steel", "sterility_options": "Sterile, Non-sterile", "shelf_life_years": "5", "sterilization_method": "Gamma radiation", "standards": "BS 2982:1992, ISO 7153-1:2016, ISO 7740:1985"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Surgical Blade')
WHERE sku = 'PARFGPSLSOV0PCS11';
UPDATE product 
SET 
    name = 'Lame de Bistouri Pcs 15', 
    slug = 'lame-de-bistouri-pcs-15', 
    specifications = '{"size": "15", "cond": "1", "official_sku": "PCS15", "manufacturer": "Paramount", "materials_available": "Stainless Steel, Carbon Steel", "sterility_options": "Sterile, Non-sterile", "shelf_life_years": "5", "sterilization_method": "Gamma radiation", "standards": "BS 2982:1992, ISO 7153-1:2016, ISO 7740:1985"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Surgical Blade')
WHERE sku = 'PARFGPSLSOV0PCS15';
UPDATE product 
SET 
    name = 'Lame de Bistouri Pcs 21', 
    slug = 'lame-de-bistouri-pcs-21', 
    specifications = '{"size": "21", "cond": "1", "official_sku": "PCS21", "manufacturer": "Paramount", "materials_available": "Stainless Steel, Carbon Steel", "sterility_options": "Sterile, Non-sterile", "shelf_life_years": "5", "sterilization_method": "Gamma radiation", "standards": "BS 2982:1992, ISO 7153-1:2016, ISO 7740:1985"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Surgical Blade')
WHERE sku = 'PARFGPSLSOV0PCS21';
UPDATE product 
SET 
    name = 'Lame de Bistouri Pcs 24', 
    slug = 'lame-de-bistouri-pcs-24', 
    specifications = '{"size": "24", "cond": "1", "official_sku": "PCS24", "manufacturer": "Paramount", "materials_available": "Stainless Steel, Carbon Steel", "sterility_options": "Sterile, Non-sterile", "shelf_life_years": "5", "sterilization_method": "Gamma radiation", "standards": "BS 2982:1992, ISO 7153-1:2016, ISO 7740:1985"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Surgical Blade')
WHERE sku = 'PARFGPSLSOV0PCS24';
UPDATE product 
SET 
    name = 'Lame de Bistouri Pcs 23', 
    slug = 'lame-de-bistouri-pcs-23', 
    specifications = '{"size": "23", "cond": "1", "official_sku": "PCS23", "manufacturer": "Paramount", "materials_available": "Stainless Steel, Carbon Steel", "sterility_options": "Sterile, Non-sterile", "shelf_life_years": "5", "sterilization_method": "Gamma radiation", "standards": "BS 2982:1992, ISO 7153-1:2016, ISO 7740:1985"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Surgical Blade')
WHERE sku = 'PARFGPSLSOV0PCS23';
UPDATE product 
SET 
    name = 'Lame de Bistouri Pcs 22', 
    slug = 'lame-de-bistouri-pcs-22', 
    specifications = '{"size": "22", "cond": "1", "official_sku": "PCS22", "manufacturer": "Paramount", "materials_available": "Stainless Steel, Carbon Steel", "sterility_options": "Sterile, Non-sterile", "shelf_life_years": "5", "sterilization_method": "Gamma radiation", "standards": "BS 2982:1992, ISO 7153-1:2016, ISO 7740:1985"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Surgical Blade')
WHERE sku = 'PARFGPSLSOV0PCS22';
UPDATE product 
SET 
    name = 'À Biopsie Bps 2.5', 
    slug = 'a-biopsie-bps-25', 
    specifications = '{"cond": "1", "official_sku": "BPS2.5", "manufacturer": "Paramount", "sterile_mentioned": "true", "disposable_mentioned": "true", "packaging_type": "Blister packaging", "finish": "Micro grinding finish"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Biopsy Punch')
WHERE sku = 'PARFGPSLSOV0BPS25';
UPDATE product 
SET 
    name = 'Laryngoscope Macintosh – Cullinan | Intubation', 
    slug = 'laryngoscope-macintosh-cullinan-intubation', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'CULLINAN'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'CULCI1-042/05';
UPDATE product 
SET 
    name = 'Laryngoscope Avec Lames Tailles 4 / 3 / 2 – Cullinan', 
    slug = 'laryngoscope-avec-lames-tailles-4-3-2-cullinan', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'CULLINAN'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'HUGVL4R432';
UPDATE product 
SET 
    name = 'Laryngoscope Avec Lames Tailles 00 / 0 / 1 – Cullinan', 
    slug = 'laryngoscope-avec-lames-tailles-00-0-1-cullinan', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'CULLINAN'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'HUGVL4R0001';
UPDATE product 
SET 
    name = 'À Biopsie Bps 3.0', 
    slug = 'a-biopsie-bps-30', 
    specifications = '{"cond": "1", "official_sku": "BPS3.0", "manufacturer": "Paramount", "sterile_mentioned": "true", "disposable_mentioned": "true", "packaging_type": "Blister packaging", "finish": "Micro grinding finish"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Biopsy Punch')
WHERE sku = 'PARFGPSLSOV0BPS30';
UPDATE product 
SET 
    name = 'À Biopsie Bps 4.0', 
    slug = 'a-biopsie-bps-40', 
    specifications = '{"cond": "1", "official_sku": "BPS4.0", "manufacturer": "Paramount", "sterile_mentioned": "true", "disposable_mentioned": "true", "packaging_type": "Blister packaging", "finish": "Micro grinding finish"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Biopsy Punch')
WHERE sku = 'PARFGPSLSOV0BPS40';
UPDATE product 
SET 
    name = 'Seringue Luer Slip De 1 Ml Avec Aiguille De 27g', 
    slug = 'seringue-luer-slip-de-1-ml-avec-aiguille-de-27g', 
    specifications = '{"volume": "1ml", "needle_gauge": "27G", "needle_length": "0.5", "connection_type": "Luer Slip", "material": "Polypropylene/Polyethylene", "sterility": "true", "single_use": "true"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Seringues')
WHERE sku = 'NEO176501';
UPDATE product 
SET 
    name = 'Gants Chirurgicaux En Latex Stériles Légèrement Poudrés - Taille 8.0', 
    slug = 'gants-chirurgicaux-en-latex-steriles-legerement-poudres-taille-80', 
    specifications = '{"size": "8.0", "material": "Natural rubber latex", "sterility": "true", "powder_free": "false", "single_use": "true", "latex_free": "false"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Gants chirurgicaux')
WHERE sku = 'NEO152080';
UPDATE product 
SET 
    name = 'Gants Chirurgicaux En Latex Stériles Légèrement Poudrés - Taille 7.0', 
    slug = 'gants-chirurgicaux-en-latex-steriles-legerement-poudres-taille-70', 
    specifications = '{"size": "7.0", "material": "Natural rubber latex", "sterility": "true", "powder_free": "false", "single_use": "true", "latex_free": "false"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Gants chirurgicaux')
WHERE sku = 'NEO152070';
UPDATE product 
SET 
    name = 'Laryngoscope Avec Lames Tailles 5 / 4 / 1 – Cullinan', 
    slug = 'laryngoscope-avec-lames-tailles-5-4-1-cullinan', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'CULLINAN'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'HUGVL4R541';
UPDATE product 
SET 
    name = 'Gants Chirurgicaux En Latex Stériles Légèrement Poudrés - Taille 6.5', 
    slug = 'gants-chirurgicaux-en-latex-steriles-legerement-poudres-taille-65', 
    specifications = '{"size": "6.5", "material": "Natural rubber latex", "sterility": "true", "powder_free": "false", "single_use": "true", "latex_free": "false"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Gants chirurgicaux')
WHERE sku = 'NEO152065';
UPDATE product 
SET 
    name = 'Gants Chirurgicaux En Latex Stériles Légèrement Poudrés - Taille 7.5', 
    slug = 'gants-chirurgicaux-en-latex-steriles-legerement-poudres-taille-75', 
    specifications = '{"size": "7.5", "material": "Natural rubber latex", "sterility": "true", "powder_free": "false", "single_use": "true", "latex_free": "false"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Gants chirurgicaux')
WHERE sku = 'NEO152075';
UPDATE product 
SET 
    name = 'Masque D''anesthésie À Coque Souple - Taille 4', 
    slug = 'masque-danesthesie-a-coque-souple-taille-4', 
    specifications = '{"Type de produit": "Masque d''anesthésie gonflable", "Type de coque": "Coque souple", "Taille": "4", "Matériau": "Matériau médical souple, transparent", "Type de raccord": "Raccord standard universel 22 mm", "Transparence": "Oui", "Stérilisation": "Non stérile (usage unique recommandé)", "Latex": "Sans latex"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOAMS004';
UPDATE product 
SET 
    name = 'Seringue Luer Slip - 3 Pièces Sans Latex - 50ml', 
    slug = 'seringue-luer-slip-3-pieces-sans-latex-50ml', 
    specifications = '{"volume": "50ml", "needle_gauge": "21G", "needle_length": "1.5", "connection_type": "Luer Slip", "material": "Polypropylene/Polyethylene", "sterility": "true", "single_use": "true", "latex_free": "true"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Seringues')
WHERE sku = 'NEO176550SLIP';
UPDATE product 
SET 
    name = 'Seringue À Insuline De 1 Ml Avec Aiguille Fixe De 29g', 
    slug = 'seringue-a-insuline-de-1-ml-avec-aiguille-fixe-de-29g', 
    specifications = '{"volume": "1ml", "needle_gauge": "29G", "needle_length": "0.5", "connection_type": "Fixed Needle", "material": "Polypropylene/Polyethylene", "sterility": "true", "single_use": "true"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Seringues')
WHERE sku = 'NEO176501/29';
UPDATE product 
SET 
    name = 'Seringue Luer Slip - 3 Parties Sans Latex - 2,5 Ml', 
    slug = 'seringue-luer-slip-3-parties-sans-latex-25-ml', 
    specifications = '{"volume": "2.5ml", "needle_gauge": "21G", "connection_type": "Luer Slip", "material": "Polypropylene/Polyethylene", "sterility": "true", "single_use": "true", "latex_free": "true"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Seringues')
WHERE sku = 'NEO176525/21';
UPDATE product 
SET 
    name = 'Seringue Luer Slip - Seringue En 3 Parties Sans Latex - 20ml', 
    slug = 'seringue-luer-slip-seringue-en-3-parties-sans-latex-20ml', 
    specifications = '{"volume": "20ml", "needle_gauge": "21G", "connection_type": "Luer Slip", "material": "Polypropylene/Polyethylene", "sterility": "true", "single_use": "true", "latex_free": "true"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Seringues')
WHERE sku = 'NE176520';
UPDATE product 
SET 
    name = 'Syringe Luer Lock - 3 Parties Sans Latex - 50ml', 
    slug = 'syringe-luer-lock-3-parties-sans-latex-50ml', 
    specifications = '{"volume": "50ml", "needle_gauge": "21G", "needle_length": "1.5", "connection_type": "Luer Lock", "material": "Polypropylene/Polyethylene", "sterility": "true", "single_use": "true", "latex_free": "true"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Seringues')
WHERE sku = 'NEO176550';
UPDATE product 
SET 
    name = 'Gants D''examen Non Stériles Légèrement Poudrés - Taille S', 
    slug = 'gants-dexamen-non-steriles-legerement-poudres-taille-s', 
    specifications = '{"size": "S", "material": "Natural rubber latex", "sterility": "false", "powder_free": "false", "single_use": "true", "latex_free": "false"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Gants d''examen')
WHERE sku = 'NEO152100';
UPDATE product 
SET 
    name = 'Gants D''examen Non Stériles Légèrement Poudrés - Taille L', 
    slug = 'gants-dexamen-non-steriles-legerement-poudres-taille-l', 
    specifications = '{"size": "L", "material": "Natural rubber latex", "sterility": "false", "powder_free": "false", "single_use": "true", "latex_free": "false"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Gants d''examen')
WHERE sku = 'NEO152300';
UPDATE product 
SET 
    name = 'Syringe À Embout De Cathéter - Seringue Sans Latex En 3 Parties - 50ml', 
    slug = 'syringe-a-embout-de-catheter-seringue-sans-latex-en-3-parties-50ml', 
    specifications = '{"volume": "50ml", "needle_gauge": "21G", "connection_type": "Catheter Tip", "material": "Polypropylene/Polyethylene", "sterility": "true", "single_use": "true", "latex_free": "true"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Seringues')
WHERE sku = 'NEO176550G';
UPDATE product 
SET 
    name = 'Gants D''examen Non Stériles Légèrement Poudrés - Taille M', 
    slug = 'gants-dexamen-non-steriles-legerement-poudres-taille-m', 
    specifications = '{"size": "M", "material": "Natural rubber latex", "sterility": "false", "powder_free": "false", "single_use": "true", "latex_free": "false"}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOMEDIC'),
    category_id = (SELECT id FROM category WHERE slug = 'Gants d''examen')
WHERE sku = 'NEO152200';
UPDATE product 
SET 
    name = 'D Intubation Armee A/b 6', 
    slug = 'd-intubation-armee-ab-6', 
    specifications = '{"Référence": "TUORET0060", "Type": "Sonde d''intubation endotrachéale armée", "Diamètre intérieur": "6.0 mm", "Structure": "Renforcée avec spirale métallique", "Matériau": "PVC médical transparent", "Type de ballonnet": "Haute conformité avec valve pilote", "Connecteur": "Standard 15mm ISO", "Extrémité": "Biseautée type Murphy", "Radiopacité": "Oui, ligne radiopaque intégrée", "Stérilisation": "Oxyde d''éthylène", "Usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUORET0060';
UPDATE product 
SET 
    name = 'À Biopsie Bps 2.0', 
    slug = 'a-biopsie-bps-20', 
    specifications = '{"cond": "1", "official_sku": "BPS2.0", "manufacturer": "Paramount", "sterile_mentioned": "true", "disposable_mentioned": "true", "packaging_type": "Blister packaging", "finish": "Micro grinding finish"}',
    brand_id = (SELECT id FROM brand WHERE name = 'PARAMOUNT'),
    category_id = (SELECT id FROM category WHERE slug = 'Biopsy Punch')
WHERE sku = 'PARFGPSLSOV0BPS20';
UPDATE product 
SET 
    name = 'Kit Péridural Egemen', 
    slug = 'kit-peridural-egemen', 
    specifications = '{"Référence Produit": "TMT-EPIS18903", "Type de Kit": "Kit Péridural Complet", "Aiguille de Tuohy": "Incluse", "Cathéter Péridural": "Radio-opaque", "Seringue Perte de Résistance": "Incluse", "Filtre Antibactérien": "Inclus", "Connecteur": "Luer-Lock", "Stérilisation": "Oxyde d''éthylène", "Usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'Egemen'),
    category_id = (SELECT id FROM category WHERE slug = 'anesthesie')
WHERE sku = 'TMT-EPIS18903';
UPDATE product 
SET 
    name = 'D''aspiration Avec Valve De Controle/ Ch 14', 
    slug = 'daspiration-avec-valve-de-controle-ch-14', 
    specifications = '{"Calibre": "CH 14 (4,7 mm)", "Type de Dispositif": "Sonde d''aspiration avec valve de contrôle", "Usage": "Usage unique", "Extrémité Distale": "Atraumatique avec œillets latéraux", "Système de Contrôle": "Valve de contrôle intégrée", "Connecteur": "Universel standard", "Référence Fabricant": "POL14FG20165"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL14FG20165';
UPDATE product 
SET 
    name = 'D''aspiration Avec Valve De Controle/ Ch 16', 
    slug = 'daspiration-avec-valve-de-controle-ch-16', 
    specifications = '{"Calibre": "CH 16 (5.3 mm)", "Référence": "POL16FG20166", "Type de Sonde": "Sonde d''aspiration avec valve de contrôle", "Matériau": "PVC médical souple", "Extrémité Distale": "Atraumatique avec œillets latéraux", "Système de Contrôle": "Valve de contrôle digitale intégrée", "Connecteur": "Universel standard", "Usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL16FG20166';
UPDATE product 
SET 
    name = 'D''aspiration Avec Valve De Controle / Ch08', 
    slug = 'daspiration-avec-valve-de-controle-ch08', 
    specifications = '{"Calibre": "CH08 (French 8)", "Diamètre Externe": "2.67 mm", "Type de Valve": "Valve de contrôle digitale", "Extrémité Distale": "Atraumatique avec œillets latéraux", "Matériau": "PVC médical souple", "Usage": "Usage unique", "Stérilisation": "Stérile"}',
    brand_id = (SELECT id FROM brand WHERE name = 'POLY-MEDICURE / POLYMED'),
    category_id = (SELECT id FROM category WHERE slug = 'Medical Supplies')
WHERE sku = 'POL8FG20162';
UPDATE product 
SET 
    name = 'Sonde D’intubation Sans Ballonnet N° 5', 
    slug = 'sonde-dintubation-sans-ballonnet-n-5', 
    specifications = '{"référence": "TUOET1050", "type": "Sonde d''intubation endotrachéale", "diamètre_interne": "5,0 mm", "présence_ballonnet": "Sans ballonnet", "matériau": "PVC médical", "connecteur": "15 mm standard ISO", "radio_opacité": "Oui", "œillet_murphy": "Présent", "stérilisation": "Oxyde d''éthylène", "usage": "Usage unique"}',
    brand_id = (SELECT id FROM brand WHERE name = 'TUOREN'),
    category_id = (SELECT id FROM category WHERE slug = 'Tuoren')
WHERE sku = 'TUOET1050';
UPDATE product 
SET 
    name = 'Catalogue De Produits D''accès Vasculaire - 12 Fr X 16 Cm', 
    slug = 'catalogue-de-produits-dacces-vasculaire-12-fr-x-16-cm', 
    specifications = '{"brand": "Acute", "manufacturer": "Teleflex", "reference": "ARRCV-12122-F", "official_sku": "CV-12122-F", "size": "12 Fr x 16 cm", "product_family": "Two-Lumen Hemodialysis Catheter", "sales_quantity_case": "1"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ACUTE'),
    category_id = (SELECT id FROM category WHERE slug = 'Two-Lumen Hemodialysis Catheter')
WHERE sku = 'CV-12122-F';
UPDATE product 
SET 
    name = 'Catalogue De Produits D''accès Vasculaire - 12 Fr X 20 Cm', 
    slug = 'catalogue-de-produits-dacces-vasculaire-12-fr-x-20-cm', 
    specifications = '{"brand": "Acute", "manufacturer": "Teleflex", "reference": "ARRCV-15122-F", "official_sku": "CV-15122-F", "size": "12 Fr x 20 cm", "product_family": "Two-Lumen Hemodialysis Catheter", "sales_quantity_case": "1"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ACUTE'),
    category_id = (SELECT id FROM category WHERE slug = 'Two-Lumen Hemodialysis Catheter')
WHERE sku = 'CV-15122-F';
UPDATE product 
SET 
    name = 'Catalogue De Produits D''accès Vasculaire - 9 Fr X 13 Cm', 
    slug = 'catalogue-de-produits-dacces-vasculaire-9-fr-x-13-cm', 
    specifications = '{"brand": "Acute", "manufacturer": "Teleflex", "reference": "ARRCD-13902", "official_sku": "CD-13902", "size": "9 Fr x 13 cm", "product_family": "Two-Lumen Hemodialysis Catheter", "sales_quantity_case": "1"}',
    brand_id = (SELECT id FROM brand WHERE name = 'ACUTE'),
    category_id = (SELECT id FROM category WHERE slug = 'Two-Lumen Hemodialysis Catheter')
WHERE sku = 'CD-13902';
UPDATE product 
SET 
    name = 'Sparadrap Perforé 5m X 18cm', 
    slug = 'sparadrap-perfore-5m-x-18cm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = '';
UPDATE product 
SET 
    name = 'Neoplast® — Bande Sport En Tissu', 
    slug = 'neoplast-bande-sport-en-tissu', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Adhesive Tapes')
WHERE sku = 'NEO124550';
UPDATE product 
SET 
    name = 'Pharmafix® — Pansement De Fixation En Tissu Doux', 
    slug = 'pharmafix-pansement-de-fixation-en-tissu-doux', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Non Woven Tapes')
WHERE sku = 'FIX254550';
UPDATE product 
SET 
    name = 'Gant En Nitrile Antistatique Pour La Préparation Alimentaire', 
    slug = 'gant-en-nitrile-antistatique-pour-la-preparation-alimentaire', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'uTYfsLcRV';
UPDATE product 
SET 
    name = 'Gant D''examen Stérile En Latex Poudré Ambidextre', 
    slug = 'gant-dexamen-sterile-en-latex-poudre-ambidextre', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'AhxC3ZPzn';
UPDATE product 
SET 
    name = 'Gants D''examen En Latex Stériles À Usage Unique Sans Poudre', 
    slug = 'gants-dexamen-en-latex-steriles-a-usage-unique-sans-poudre', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = '')
WHERE sku = 'APRtF0UbCd';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Adhesive Plus', 
    slug = 'pharmaplast-espuma-adhesive-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DEKKIR';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Non-adhesive & Fibrosol® Extra Non Adhesive', 
    slug = 'pharmaplast-fibrosol-non-adhesive-fibrosol-extra-non-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZPELDD';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip', 
    slug = 'pharmaplast-cure-aid-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-A1TYVO';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmaband Cool', 
    slug = 'pharmaplast-pharmaband-cool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8LBMNH';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 8', 
    slug = 'pharmaplast-non-woven-pads-8', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TJJRJU';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 1', 
    slug = 'pharmaplast-non-woven-pads-1', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HJIUMQ';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmastrip®', 
    slug = 'pharmaplast-pharmastrip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LLZONK';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore®', 
    slug = 'pharmaplast-pharmapore', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4JWW5G';
UPDATE product 
SET 
    name = 'Pharmaplast Difa® Plus', 
    slug = 'pharmaplast-difa-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Q68VPM';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Ag Adhesive Plus', 
    slug = 'pharmaplast-espuma-ag-adhesive-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-W1M7KI';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Carbon', 
    slug = 'pharmaplast-pharma-algi-f-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Q51KQ4';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 6', 
    slug = 'pharmaplast-non-woven-pads-6', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-D4FJZ1';
UPDATE product 
SET 
    name = 'Pharmaplast Bunion Shield', 
    slug = 'pharmaplast-bunion-shield', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QLLQMK';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Friction Free', 
    slug = 'pharmaplast-cure-aid-friction-free', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OKQXX8';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Iv', 
    slug = 'pharmaplast-pharma-algi-f-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-I7AXE1';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacool', 
    slug = 'pharmaplast-pharmacool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-E3TD5B';
UPDATE product 
SET 
    name = 'Pharmaplast Bunion Shield With Toe Separator Plus', 
    slug = 'pharmaplast-bunion-shield-with-toe-separator-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-69GL4B';
UPDATE product 
SET 
    name = 'Pharmaplast Hot And Cold Pack', 
    slug = 'pharmaplast-hot-and-cold-pack', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-EOUE1V';
UPDATE product 
SET 
    name = 'Pharmaplast First Aid Large Kit', 
    slug = 'pharmaplast-first-aid-large-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-13NRMH';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle', 
    slug = 'pharmaplast-espuma-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JA68O8';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Callus Removal Discs', 
    slug = 'pharmaplast-cure-aid-callus-removal-discs', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-VA3APB';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma®ag Sealed Edges', 
    slug = 'pharmaplast-espumaag-sealed-edges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XM2RJP';
UPDATE product 
SET 
    name = 'Absoclear®', 
    slug = 'absoclear', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'ABSO5050';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Silver Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-silver-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JHF58E';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Eye Pad', 
    slug = 'pharmaplast-cure-aid-eye-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5T9MYA';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Iv Adhesive', 
    slug = 'pharmaplast-vilowond-povi-iv-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2GKZTO';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Ag Carbon', 
    slug = 'pharmaplast-vilowond-ag-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-P3MMRN';
UPDATE product 
SET 
    name = 'Pharmaplast Cavidagel®', 
    slug = 'pharmaplast-cavidagel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IC2UHD';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 7', 
    slug = 'pharmaplast-non-woven-pads-7', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4LHYQ7';
UPDATE product 
SET 
    name = 'Pharmaplast Heat Seal', 
    slug = 'pharmaplast-heat-seal', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2R5ZHQ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Cotton', 
    slug = 'pharmaplast-cure-aid-cotton', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BIJXFW';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu I.v Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-pu-iv-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-N6VNQW';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmatull®', 
    slug = 'pharmaplast-pharmatull', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PU099P';
UPDATE product 
SET 
    name = 'Pharmaplast Tubifix', 
    slug = 'pharmaplast-tubifix', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6RAP9F';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Sheer', 
    slug = 'pharmaplast-cure-aid-sheer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3TUM0S';
UPDATE product 
SET 
    name = 'Pharmaplast Folded Cup Mask', 
    slug = 'pharmaplast-folded-cup-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NXE7TQ';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Ag Plus', 
    slug = 'pharmaplast-vilowond-ag-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3LW0LE';
UPDATE product 
SET 
    name = 'Vilowond®carbon', 
    slug = 'vilowondcarbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'VILOC5050';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Adhesive Ultra', 
    slug = 'pharmaplast-pharma-algi-f-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KUKDYD';
UPDATE product 
SET 
    name = 'Pharmaplast Exsorb®', 
    slug = 'pharmaplast-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PGFQTR';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive Film F S & Fibrosol® Extra Adhesive Film F S', 
    slug = 'pharmaplast-fibrosol-adhesive-film-f-s-fibrosol-extra-adhesive-film-f-s', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DVEX27';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Deep Cleansing Pore Strips', 
    slug = 'pharmaplast-biosecrets-deep-cleansing-pore-strips', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7BB6V7';
UPDATE product 
SET 
    name = 'Pharmaplast Silotull® & Silotull® One', 
    slug = 'pharmaplast-silotull-silotull-one', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-W4MR0R';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn Adhesive', 
    slug = 'pharmaplast-aluburn-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PXJD25';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Mosquito Repellent', 
    slug = 'pharmaplast-cure-aid-mosquito-repellent', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CSW2WI';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Adhesive Ultra', 
    slug = 'pharmaplast-vilowond-povi-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-MZY8HN';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Iv Film Frame Style', 
    slug = 'pharmaplast-pharma-algi-f-iv-film-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NW3BVV';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Nose Plaster', 
    slug = 'pharmaplast-cure-aid-nose-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NICK9M';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Lipo', 
    slug = 'pharmaplast-cure-aid-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-P0I48N';
UPDATE product 
SET 
    name = 'Pharmaplast Silicone Paper', 
    slug = 'pharmaplast-silicone-paper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HMKJUR';
UPDATE product 
SET 
    name = 'Pharmaplast Plastra', 
    slug = 'pharmaplast-plastra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WMYLI3';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Algi', 
    slug = 'pharmaplast-cure-aid-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-X7Q0PT';
UPDATE product 
SET 
    name = 'Pharmaplast Neurosurgery', 
    slug = 'pharmaplast-neurosurgery', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LDJX77';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Adhesive Bandages', 
    slug = 'pharmaplast-fibrosol-ag-adhesive-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QMP2IE';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn I.v. Film', 
    slug = 'pharmaplast-aluburn-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-J9RO1A';
UPDATE product 
SET 
    name = 'Protectfilm®', 
    slug = 'protectfilm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PROT6070';
UPDATE product 
SET 
    name = 'Pharmaplast Difa Iv ® Chg Catheter Securement', 
    slug = 'pharmaplast-difa-iv-chg-catheter-securement', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8W6L89';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Gentle', 
    slug = 'pharmaplast-cure-aid-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Y858IK';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmastrip® Fabric', 
    slug = 'pharmaplast-pharmastrip-fabric', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FAXTND';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Washproof', 
    slug = 'pharmaplast-cure-aid-washproof', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Q2EQBV';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Iv & Fibrosol® Extra Iv', 
    slug = 'pharmaplast-fibrosol-iv-fibrosol-extra-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-H3THW8';
UPDATE product 
SET 
    name = 'Pharmaplast Toe Spacers', 
    slug = 'pharmaplast-toe-spacers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YHRIYQ';
UPDATE product 
SET 
    name = 'Pharmaplast Gauza & Gauza Plus', 
    slug = 'pharmaplast-gauza-gauza-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2QTBD4';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® I.v Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-iv-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YH50F9';
UPDATE product 
SET 
    name = 'Pharmaplast Flexagrip™', 
    slug = 'pharmaplast-flexagriptm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AFT229';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Lite', 
    slug = 'pharmaplast-espuma-gentle-lite', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-J1FKYW';
UPDATE product 
SET 
    name = 'Pharmaplast Alginates Fibers', 
    slug = 'pharmaplast-alginates-fibers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QGQFNF';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn Removal Disc', 
    slug = 'pharmaplast-cure-aid-corn-removal-disc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0XOYAQ';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi®f Silver Iv', 
    slug = 'pharmaplast-pharma-algif-silver-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-SCTQUZ';
UPDATE product 
SET 
    name = 'Pharmaplast Green Zipper First Aid Kit', 
    slug = 'pharmaplast-green-zipper-first-aid-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GPEAF9';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Exsorb Ag', 
    slug = 'pharmaplast-cure-aid-dressing-strip-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-L6VJCL';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive Film & Fibrosol® Extra Adhesive Film', 
    slug = 'pharmaplast-fibrosol-adhesive-film-fibrosol-extra-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TB16LX';
UPDATE product 
SET 
    name = 'Pharmaplast Vendapress', 
    slug = 'pharmaplast-vendapress', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4OPWWI';
UPDATE product 
SET 
    name = 'Pharmaplast Shoe Strap Grip', 
    slug = 'pharmaplast-shoe-strap-grip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RT6QPD';
UPDATE product 
SET 
    name = 'Pharmaplast Heat Up Gel Patch Hot', 
    slug = 'pharmaplast-heat-up-gel-patch-hot', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-I040N3';
UPDATE product 
SET 
    name = 'Pharmaplast Fabric Full Length Insole', 
    slug = 'pharmaplast-fabric-full-length-insole', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-EEL199';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Iv Silver', 
    slug = 'pharmaplast-pharmapore-iv-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XVFVWQ';
UPDATE product 
SET 
    name = 'Pharmaplast Exsorb® Algi', 
    slug = 'pharmaplast-exsorb-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KBZORZ';
UPDATE product 
SET 
    name = 'Pharmapad', 
    slug = 'pharmapad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PAD5050';
UPDATE product 
SET 
    name = 'Protectfilm® Adhesive Border', 
    slug = 'protectfilm-adhesive-border', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PFZ6070ADH';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Foam Basic & Fibrosol® Extra Foam Basic', 
    slug = 'pharmaplast-fibrosol-foam-basic-fibrosol-extra-foam-basic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NRI72M';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Adhesive', 
    slug = 'pharmaplast-espuma-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8S0MQI';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Nonwoven', 
    slug = 'pharmaplast-vilowond-nonwoven', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-61XP40';
UPDATE product 
SET 
    name = 'Pharmaplast Test', 
    slug = 'pharmaplast-test', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-95RYWR';
UPDATE product 
SET 
    name = 'Pharmaplast Cure -aid® Exsorb®', 
    slug = 'pharmaplast-cure-aid-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-M9QZBW';
UPDATE product 
SET 
    name = 'Pharmaplast Chlorhexidine Swabs', 
    slug = 'pharmaplast-chlorhexidine-swabs', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CC2XU0';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Iv & Fibrosol® Ag Extra Iv', 
    slug = 'pharmaplast-fibrosol-ag-iv-fibrosol-ag-extra-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-78K49F';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Ultra Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-ultra-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-COMGB4';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Xtra Comfort', 
    slug = 'pharmaplast-espuma-gentle-xtra-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-W1SJ1F';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll® Ag Comfort', 
    slug = 'pharmaplast-pharmacoll-ag-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FUH8FX';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Dressing Strip', 
    slug = 'pharmaplast-fibrosol-ag-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KHYS3V';
UPDATE product 
SET 
    name = 'Pharmagel® Breast Discs', 
    slug = 'pharmagel-breast-discs', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'GEL7075';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma®ag C Sealed Edges', 
    slug = 'pharmaplast-espumaag-c-sealed-edges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-C96D0T';
UPDATE product 
SET 
    name = 'Pharmaplast Cold Seal', 
    slug = 'pharmaplast-cold-seal', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XZSNWF';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Bamboo', 
    slug = 'pharmaplast-cure-aid-bamboo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-64NKNB';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Gauze', 
    slug = 'pharmaplast-vilowond-gauze', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-UM8FRQ';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn Adhesive Film Frame Style', 
    slug = 'pharmaplast-aluburn-adhesive-film-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3J6JOT';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Foam Basic & Fibrosol® Ag Extra Foam Basic', 
    slug = 'pharmaplast-fibrosol-ag-foam-basic-fibrosol-ag-extra-foam-basic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-C0LQNZ';
UPDATE product 
SET 
    name = 'Pharmaplast Red Small Zipper Kit', 
    slug = 'pharmaplast-red-small-zipper-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-O3513P';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HU36NQ';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi®f', 
    slug = 'pharmaplast-pharma-algif', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XJATLB';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Urostomy One-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-urostomy-one-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JAWAYY';
UPDATE product 
SET 
    name = 'Pharmapore® Pu I.v.', 
    slug = 'pharmapore-pu-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'IVPU76';
UPDATE product 
SET 
    name = 'Pharmaplast Silotac', 
    slug = 'pharmaplast-silotac', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DJOKV5';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blister Mixed Plasters', 
    slug = 'pharmaplast-cure-aid-blister-mixed-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LZUPD5';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Ag Xtra Comfort', 
    slug = 'pharmaplast-espuma-gentle-ag-xtra-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OVUQR6';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmatull Plus®', 
    slug = 'pharmaplast-pharmatull-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GFP3DA';
UPDATE product 
SET 
    name = 'Pharmaplast Incifilm® Iodine', 
    slug = 'pharmaplast-incifilm-iodine', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GUJSR2';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-jelly Net Silver', 
    slug = 'pharmaplast-pharma-jelly-net-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4NI7H3';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Non Adhesive & Fibrosol® Ag Extra Non Adhesive', 
    slug = 'pharmaplast-fibrosol-ag-non-adhesive-fibrosol-ag-extra-non-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LONKV5';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmaband', 
    slug = 'pharmaplast-pharmaband', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-G5ZK2D';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll® Ag', 
    slug = 'pharmaplast-pharmacoll-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CDKBMR';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blue Metal Detectable Plasters', 
    slug = 'pharmaplast-cure-aid-blue-metal-detectable-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AFV5W0';
UPDATE product 
SET 
    name = 'Pharmaplast Cavidagel® Burn Dressing', 
    slug = 'pharmaplast-cavidagel-burn-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4KUCE8';
UPDATE product 
SET 
    name = 'Pharmaplast First Aid X-large Kit', 
    slug = 'pharmaplast-first-aid-x-large-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Y850RU';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll® Comfort Plus', 
    slug = 'pharmaplast-pharmacoll-comfort-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CV4YAD';
UPDATE product 
SET 
    name = 'Pharmaplast Fevogel', 
    slug = 'pharmaplast-fevogel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CQDS0Q';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Ag', 
    slug = 'pharmaplast-vilowond-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9Z395C';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore ® Ultra Exsorb', 
    slug = 'pharmaplast-pharmapore-ultra-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6U5WNR';
UPDATE product 
SET 
    name = 'Pharmaplast Pu Films', 
    slug = 'pharmaplast-pu-films', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-UF8727';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Elastic Finger Plaster', 
    slug = 'pharmaplast-cure-aid-elastic-finger-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9XA6L4';
UPDATE product 
SET 
    name = 'Pharmaplast Synocast', 
    slug = 'pharmaplast-synocast', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-MWJHI3';
UPDATE product 
SET 
    name = 'Pharmaplast Super Healing Kit', 
    slug = 'pharmaplast-super-healing-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KMSNNQ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® X-ray Detectable Plasters', 
    slug = 'pharmaplast-cure-aid-x-ray-detectable-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-H1CJLT';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Ag', 
    slug = 'pharmaplast-pharmapore-pu-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZJCBVA';
UPDATE product 
SET 
    name = 'Pharmaplast Full Length Insole', 
    slug = 'pharmaplast-full-length-insole', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-K9C7B8';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Elastic', 
    slug = 'pharmaplast-cure-aid-elastic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IWRYHS';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip', 
    slug = 'pharmaplast-cure-aid-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZIJVH9';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmagel Comfort', 
    slug = 'pharmaplast-pharmagel-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6ABHON';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Iv Algi', 
    slug = 'pharmaplast-pharmapore-iv-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2CHDUA';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Clear', 
    slug = 'pharmaplast-cure-aid-clear', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-MW6B1L';
UPDATE product 
SET 
    name = 'Pharmaplast 3/4 Length Insole', 
    slug = 'pharmaplast-34-length-insole', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NHBSNL';
UPDATE product 
SET 
    name = 'Pharmapore ® Pu Iv Frame Style', 
    slug = 'pharmapore-pu-iv-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'IVFS76';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Wet Wipes', 
    slug = 'pharmaplast-biosecrets-wet-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OU5V5X';
UPDATE product 
SET 
    name = 'Pharmaplast Orthopedics', 
    slug = 'pharmaplast-orthopedics', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3BW8F2';
UPDATE product 
SET 
    name = 'Pharmaplast Kemagel® Conductive', 
    slug = 'pharmaplast-kemagel-conductive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-P7TSOL';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive & Fibrosol® Extra Adhesive', 
    slug = 'pharmaplast-fibrosol-adhesive-fibrosol-extra-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-E6FLNX';
UPDATE product 
SET 
    name = 'Pharmaplast Heat Up Gel Patch Cool', 
    slug = 'pharmaplast-heat-up-gel-patch-cool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XPOZJ9';
UPDATE product 
SET 
    name = 'Pharmaplast Toe Separators', 
    slug = 'pharmaplast-toe-separators', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-EL4WZP';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Foam Gentle & Fibrosol® Extra Foam Gentle', 
    slug = 'pharmaplast-fibrosol-foam-gentle-fibrosol-extra-foam-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ANFE7X';
UPDATE product 
SET 
    name = 'Pharmaplast Elastic Plaster', 
    slug = 'pharmaplast-elastic-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8TG3U4';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® I.v. Dressings', 
    slug = 'pharmaplast-absoclear-iv-dressings', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-I4WGYG';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Non-adhesive', 
    slug = 'pharmaplast-espuma-non-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GLDX68';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmaband Skin Traction Kit', 
    slug = 'pharmaplast-pharmaband-skin-traction-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DKECMG';
UPDATE product 
SET 
    name = 'Pharmaplast Linocare', 
    slug = 'pharmaplast-linocare', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Y29NUL';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Breast Pad', 
    slug = 'pharmaplast-cure-aid-breast-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FFZVWZ';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Adhesive Film Frame Style', 
    slug = 'pharmaplast-pharma-algi-f-adhesive-film-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-47S5RK';
UPDATE product 
SET 
    name = 'Vilowond® Povi Pad', 
    slug = 'vilowond-povi-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'POVIP5050';
UPDATE product 
SET 
    name = 'Pharmaplast Children Kit', 
    slug = 'pharmaplast-children-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LI8AAN';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive Bandages', 
    slug = 'pharmaplast-fibrosol-adhesive-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-EM3MZS';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma – Swab', 
    slug = 'pharmaplast-pharma-swab', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QTV42Z';
UPDATE product 
SET 
    name = 'Pharmaplast Product Test', 
    slug = 'pharmaplast-product-test', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-T7UJJ8';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Make-up Remover Wipes', 
    slug = 'pharmaplast-biosecrets-make-up-remover-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4TJ4PY';
UPDATE product 
SET 
    name = 'Pharmaplast Kemaserum', 
    slug = 'pharmaplast-kemaserum', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-R7ID7O';
UPDATE product 
SET 
    name = 'Pharmaplast Kemagel® Silicone', 
    slug = 'pharmaplast-kemagel-silicone', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BDP8ET';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Iv Film', 
    slug = 'pharmaplast-pharma-algi-f-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6O0IDU';
UPDATE product 
SET 
    name = 'Pharmaplast Fish Style Mask', 
    slug = 'pharmaplast-fish-style-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JT9HDY';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Iv Gentle', 
    slug = 'pharmaplast-pharmapore-iv-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4ITJ3O';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Iv Exsorb', 
    slug = 'pharmaplast-pharmapore-pu-iv-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LZ7U6L';
UPDATE product 
SET 
    name = 'Pharmaplast Metatarsal Pad', 
    slug = 'pharmaplast-metatarsal-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TMH5L2';
UPDATE product 
SET 
    name = 'Pharmaplast Cavidagel® Emergency Burn Gel', 
    slug = 'pharmaplast-cavidagel-emergency-burn-gel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JZDNAC';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Silver', 
    slug = 'pharmaplast-cure-aid-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0HYQC0';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 1', 
    slug = 'pharmaplast-non-woven-pads-1', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7H1R0Q';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Otc', 
    slug = 'pharmaplast-fibrosol-otc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QCG9W1';
UPDATE product 
SET 
    name = 'Pharmaplast Obstetrics', 
    slug = 'pharmaplast-obstetrics', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-A8664D';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Adhesive Film Frame Style', 
    slug = 'pharmaplast-vilowond-povi-adhesive-film-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-1HYNO8';
UPDATE product 
SET 
    name = 'Pharmaplast Surgical Face Mask', 
    slug = 'pharmaplast-surgical-face-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-441825';
UPDATE product 
SET 
    name = 'Pharmaplast Blue Zipper Kit', 
    slug = 'pharmaplast-blue-zipper-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LP2Z8P';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn Adhesive Film', 
    slug = 'pharmaplast-aluburn-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XPT2JE';
UPDATE product 
SET 
    name = 'Pharmaplast Gynecology', 
    slug = 'pharmaplast-gynecology', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZKSIOE';
UPDATE product 
SET 
    name = 'Pharmaplast Cup Mask', 
    slug = 'pharmaplast-cup-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LARKWN';
UPDATE product 
SET 
    name = 'Pharmaplast Germifree®', 
    slug = 'pharmaplast-germifree', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-E450Z2';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Algi', 
    slug = 'pharmaplast-cure-aid-dressing-strip-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HRQV8U';
UPDATE product 
SET 
    name = 'Pharmaplast Heel Cushion', 
    slug = 'pharmaplast-heel-cushion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HI3GPJ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Exsorb', 
    slug = 'pharmaplast-cure-aid-dressing-strip-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5R6IOB';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Gentle', 
    slug = 'pharmaplast-pharmapore-pu-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Q4WTJJ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Sensitive', 
    slug = 'pharmaplast-cure-aid-sensitive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ABYY37';
UPDATE product 
SET 
    name = 'Pharmaplast Insola', 
    slug = 'pharmaplast-insola', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GICB9R';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Adheisve', 
    slug = 'pharmaplast-pharma-algi-f-adheisve', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KK0MN2';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Carbon Adhesive', 
    slug = 'pharmaplast-pharma-algi-f-carbon-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-MPPUJB';
UPDATE product 
SET 
    name = 'Pharmaplast Silicone Paper', 
    slug = 'pharmaplast-silicone-paper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HUBQ5Z';
UPDATE product 
SET 
    name = 'Pharmaplast Non-surgical Isolation Gowns', 
    slug = 'pharmaplast-non-surgical-isolation-gowns', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LDMPUI';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu I.v. Gentle Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-iv-gentle-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Q34XMY';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn Cushions', 
    slug = 'pharmaplast-cure-aid-corn-cushions', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-N37RIK';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Skin Barrier', 
    slug = 'pharmaplast-cure-aid-skin-barrier', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-93EGUF';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapad Carbon Silver', 
    slug = 'pharmaplast-pharmapad-carbon-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JAEYJ6';
UPDATE product 
SET 
    name = 'Pharmaplast First Aid Kit – Din 13164', 
    slug = 'pharmaplast-first-aid-kit-din-13164', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-U6XXU7';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Exsorb®', 
    slug = 'pharmaplast-pharmapore-pu-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BUMO0X';
UPDATE product 
SET 
    name = 'Pharmaplast And Maxillofacial', 
    slug = 'pharmaplast-and-maxillofacial', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8G6PDX';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Gentle', 
    slug = 'pharmaplast-cure-aid-dressing-strip-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6YF9X6';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore®pu Iv Silver', 
    slug = 'pharmaplast-pharmaporepu-iv-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TGFYUO';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Bunion Plasters', 
    slug = 'pharmaplast-cure-aid-bunion-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OKMPCN';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Ag', 
    slug = 'pharmaplast-espuma-gentle-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KT1A2K';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Plus & Fibrosol® Ag Extra Plus', 
    slug = 'pharmaplast-fibrosol-ag-plus-fibrosol-ag-extra-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CF03VJ';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 5', 
    slug = 'pharmaplast-non-woven-pads-5', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OFOXCN';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Make-up Remover Wipes', 
    slug = 'pharmaplast-biosecrets-make-up-remover-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2W384J';
UPDATE product 
SET 
    name = 'Pharmapore® I.v.', 
    slug = 'pharmapore-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'IVNW76';
UPDATE product 
SET 
    name = 'Pharmapad Carbon', 
    slug = 'pharmapad-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PADC5050';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 2', 
    slug = 'pharmaplast-non-woven-pads-2', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-A9E2C5';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-pop', 
    slug = 'pharmaplast-pharma-pop', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XUDPH5';
UPDATE product 
SET 
    name = 'Pharmaplast Flexinet', 
    slug = 'pharmaplast-flexinet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7EUODI';
UPDATE product 
SET 
    name = 'Vilowond® Povi Gauze', 
    slug = 'vilowond-povi-gauze', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'POVIG5050';
UPDATE product 
SET 
    name = 'Airoplast®', 
    slug = 'airoplast', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'AIRO124550';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Iv Film & Fibrosol® Extra Iv Film', 
    slug = 'pharmaplast-fibrosol-iv-film-fibrosol-extra-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-M13SZR';
UPDATE product 
SET 
    name = 'Pharmaplast Alginates Fibers', 
    slug = 'pharmaplast-alginates-fibers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AUIG83';
UPDATE product 
SET 
    name = 'Pharmaplast Red Medium Zipper Kit', 
    slug = 'pharmaplast-red-medium-zipper-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GXQ1S6';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® I.v Dressings Chg', 
    slug = 'pharmaplast-absoclear-iv-dressings-chg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-S2D1GQ';
UPDATE product 
SET 
    name = 'Pharmaplast Fibers', 
    slug = 'pharmaplast-fibers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5JWYCA';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Carbon Adhesive Film', 
    slug = 'pharmaplast-pharma-algi-f-carbon-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0UZPVR';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blister Medium Plasters', 
    slug = 'pharmaplast-cure-aid-blister-medium-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9WW8RJ';
UPDATE product 
SET 
    name = 'Protectfilm® Frame Style', 
    slug = 'protectfilm-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PRFS6070';
UPDATE product 
SET 
    name = 'Pharmaplast Episera®', 
    slug = 'pharmaplast-episera', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-07XG8P';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Ileostomy Two-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-ileostomy-two-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6L5VJT';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 1', 
    slug = 'pharmaplast-non-woven-pads-1', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZL8P6W';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® Otc', 
    slug = 'pharmaplast-absoclear-otc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RRQER8';
UPDATE product 
SET 
    name = 'Pharmaplast Alginates Fibers', 
    slug = 'pharmaplast-alginates-fibers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LY1653';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Iv Algi', 
    slug = 'pharmaplast-pharmapore-pu-iv-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0VDP56';
UPDATE product 
SET 
    name = 'Pharmaplast Heel Grip', 
    slug = 'pharmaplast-heel-grip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KAI179';
UPDATE product 
SET 
    name = 'Pharmaplast Bunion Shield With Toe Separator', 
    slug = 'pharmaplast-bunion-shield-with-toe-separator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NZR0M6';
UPDATE product 
SET 
    name = 'Pharmaplast Mother Kit', 
    slug = 'pharmaplast-mother-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DEC44H';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Silver', 
    slug = 'pharmaplast-cure-aid-dressing-strip-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-048VLK';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 3', 
    slug = 'pharmaplast-non-woven-pads-3', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YBCJVM';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn Treatment Kit', 
    slug = 'pharmaplast-cure-aid-corn-treatment-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HTANB3';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 4', 
    slug = 'pharmaplast-non-woven-pads-4', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-L2XP6K';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Adhesive Film', 
    slug = 'pharmaplast-vilowond-povi-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-K62Q04';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Dressing Strip Elastic', 
    slug = 'pharmaplast-cure-aid-dressing-strip-elastic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ER4VNY';
UPDATE product 
SET 
    name = 'Pharmaplast Cavidagel® Ag', 
    slug = 'pharmaplast-cavidagel-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OKP5UH';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-pu-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-J5U8MB';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Silver Carbon', 
    slug = 'pharmaplast-pharma-algi-f-silver-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-952P3K';
UPDATE product 
SET 
    name = 'Pharmaplast Silomed', 
    slug = 'pharmaplast-silomed', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-SUVQRL';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma Algi® Ag', 
    slug = 'pharmaplast-pharma-algi-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IKT9FG';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Adhesive Film', 
    slug = 'pharmaplast-pharma-algi-f-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WLPB66';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Kids', 
    slug = 'pharmaplast-cure-aid-kids', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OEW0NP';
UPDATE product 
SET 
    name = 'Pharmaplast Vendapress Foam', 
    slug = 'pharmaplast-vendapress-foam', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-670U2U';
UPDATE product 
SET 
    name = 'Pharmaplast Duckbill Mask', 
    slug = 'pharmaplast-duckbill-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-A43CK5';
UPDATE product 
SET 
    name = 'All Wound Dressing', 
    slug = 'all-wound-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'ALLW7575';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® C Lipo', 
    slug = 'pharmaplast-espuma-c-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BXT8X2';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Scar Reduction Patch', 
    slug = 'pharmaplast-cure-aid-scar-reduction-patch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-06NYCV';
UPDATE product 
SET 
    name = 'Pharmapore® Ultra Gentle', 
    slug = 'pharmapore-ultra-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'POREUG5070';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Adhesive', 
    slug = 'pharmaplast-vilowond-povi-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-MERQMY';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma – Undercast Pad', 
    slug = 'pharmaplast-pharma-undercast-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FQ44P0';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Baby Wipes', 
    slug = 'pharmaplast-biosecrets-baby-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-562WRK';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Ag Adhesive', 
    slug = 'pharmaplast-espuma-ag-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RKFBRO';
UPDATE product 
SET 
    name = 'Pharmaplast Hydrocolloids', 
    slug = 'pharmaplast-hydrocolloids', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-F95D0L';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Nose Plaster', 
    slug = 'pharmaplast-cure-aid-nose-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AJ803H';
UPDATE product 
SET 
    name = 'Pharmamed®', 
    slug = 'pharmamed', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'MED124550';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmaband Skin Traction Kit', 
    slug = 'pharmaplast-pharmaband-skin-traction-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QCWR66';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn I.v.', 
    slug = 'pharmaplast-aluburn-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-R7QNYA';
UPDATE product 
SET 
    name = 'Pharmaplast Les Pansements Espuma® Ag Non-adhesive Ne Doivent Pas Être Appliqués Sur Des Plaies Atteignant Les Os Ou Les Muscles.', 
    slug = 'pharmaplast-les-pansements-espuma-ag-non-adhesive-ne-doivent-pas-etre-appliques-sur-des-plaies-atteignant-les-os-ou-les-muscles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YESHAC';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Lite Comfort Flex', 
    slug = 'pharmaplast-espuma-gentle-lite-comfort-flex', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0MHPBC';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Povi', 
    slug = 'pharmaplast-cure-aid-dressing-strip-povi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-50E9NL';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Exsorb Carbon Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-exsorb-carbon-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-63JBIG';
UPDATE product 
SET 
    name = 'Pharmaplast Cavicoll®', 
    slug = 'pharmaplast-cavicoll', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TQAE1J';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Waterproof', 
    slug = 'pharmaplast-cure-aid-waterproof', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RDHXKR';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Ag Carbon Plus', 
    slug = 'pharmaplast-vilowond-ag-carbon-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5DDIWM';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Dressing Strip Washproof', 
    slug = 'pharmaplast-cure-aid-dressing-strip-washproof', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RNJ884';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid Acne Patches & Cure-aid Cold Sore Patches', 
    slug = 'pharmaplast-cure-aid-acne-patches-cure-aid-cold-sore-patches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9LQ739';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Exsorb® Ag Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-exsorb-ag-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YP3QJJ';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmafix® Pu', 
    slug = 'pharmaplast-pharmafix-pu', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2CX8GL';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Ultra Silver', 
    slug = 'pharmaplast-pharmapore-ultra-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QZ3IJU';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn Adhesive Ultra', 
    slug = 'pharmaplast-aluburn-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YAGOIT';
UPDATE product 
SET 
    name = 'Absoclear® Comfort', 
    slug = 'absoclear-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'ABSOC75100';
UPDATE product 
SET 
    name = 'Pharmaplast Cushion Pads', 
    slug = 'pharmaplast-cushion-pads', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-UJP96J';
UPDATE product 
SET 
    name = 'Pharmagel', 
    slug = 'pharmagel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'GEL100100';
UPDATE product 
SET 
    name = 'Pharmaplast Difa® Ag With Exulock Technology', 
    slug = 'pharmaplast-difa-ag-with-exulock-technology', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IXEKYP';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Nose Plaster', 
    slug = 'pharmaplast-cure-aid-nose-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6LYWC1';
UPDATE product 
SET 
    name = 'Pharmaplast Elementor #15923', 
    slug = 'pharmaplast-elementor-15923', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FHJPQM';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Transfer', 
    slug = 'pharmaplast-espuma-gentle-transfer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-T0LJMQ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure -aid® Exsorb® Ag', 
    slug = 'pharmaplast-cure-aid-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-K0J0UP';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll®thin And Pharmacoll® Extra Thin', 
    slug = 'pharmaplast-pharmacollthin-and-pharmacoll-extra-thin', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9P2J1S';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma-vie Hydrocolloid Base Plate Disc', 
    slug = 'pharmaplast-stoma-vie-hydrocolloid-base-plate-disc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-109SZB';
UPDATE product 
SET 
    name = 'Pharmaplast Exsorb® Ag', 
    slug = 'pharmaplast-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-1QQ9K0';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Lipo', 
    slug = 'pharmaplast-cure-aid-dressing-strip-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-SB0EGW';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu', 
    slug = 'pharmaplast-pharmapore-pu', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DCW5YJ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Gentle', 
    slug = 'pharmaplast-cure-aid-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JDDDGP';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blue Metal & X-ray Detectable Dressing Strip', 
    slug = 'pharmaplast-cure-aid-blue-metal-x-ray-detectable-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-P0GKB3';
UPDATE product 
SET 
    name = 'Pharmaplast Benzalkonium Chloride Swabs', 
    slug = 'pharmaplast-benzalkonium-chloride-swabs', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LUAM5E';
UPDATE product 
SET 
    name = 'Pharmaplast Foams', 
    slug = 'pharmaplast-foams', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CN75YJ';
UPDATE product 
SET 
    name = 'Pharmaplast Kitchen Kit', 
    slug = 'pharmaplast-kitchen-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-M9BZ04';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll® Cushion', 
    slug = 'pharmaplast-pharmacoll-cushion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PIQJMT';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Iv Adhesive Film', 
    slug = 'pharmaplast-vilowond-povi-iv-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-26EQUB';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets® Crack Care', 
    slug = 'pharmaplast-biosecrets-crack-care', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-12J72M';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets® Lanolin Ointment', 
    slug = 'pharmaplast-biosecrets-lanolin-ointment', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YDE1XC';
UPDATE product 
SET 
    name = 'Pharmaplast Plastic Boxes', 
    slug = 'pharmaplast-plastic-boxes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-77YDXM';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Callus Plasters', 
    slug = 'pharmaplast-cure-aid-callus-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YOGC50';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma-vie Colostomy One-piece Closed Pouches', 
    slug = 'pharmaplast-stoma-vie-colostomy-one-piece-closed-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5I79W7';
UPDATE product 
SET 
    name = 'Pharmaplast Medical Paper', 
    slug = 'pharmaplast-medical-paper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-G4ESQB';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Ileostomy One-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-ileostomy-one-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-A6S0YC';
UPDATE product 
SET 
    name = 'Pharmaplast Unnaplast', 
    slug = 'pharmaplast-unnaplast', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8BA79T';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Carbon Adhesive Ultra', 
    slug = 'pharmaplast-pharma-algi-f-carbon-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NG4R24';
UPDATE product 
SET 
    name = 'Pharmaplast Cardiothoracic', 
    slug = 'pharmaplast-cardiothoracic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KT53UP';
UPDATE product 
SET 
    name = 'Vilowond®', 
    slug = 'vilowond', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'VILO5050';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Foot Care Plasters', 
    slug = 'pharmaplast-cure-aid-foot-care-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KU00MF';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HUJ33K';
UPDATE product 
SET 
    name = 'Pharmaplast Cardiovascular', 
    slug = 'pharmaplast-cardiovascular', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WIIJ6O';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Iv Exsorb', 
    slug = 'pharmaplast-pharmapore-iv-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-MSI9EL';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Urostomy One-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-urostomy-one-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WVZXM9';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-jelly Net', 
    slug = 'pharmaplast-pharma-jelly-net', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PKD1PV';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma®lipo', 
    slug = 'pharmaplast-espumalipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-85EXRT';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Dressing Strip', 
    slug = 'pharmaplast-fibrosol-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3GOLDA';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Lipo', 
    slug = 'pharmaplast-vilowond-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2ZJMUC';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi®f Ag I.v Film', 
    slug = 'pharmaplast-pharma-algif-ag-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-N3WGJO';
UPDATE product 
SET 
    name = 'Pharmaplast Toe Spreader', 
    slug = 'pharmaplast-toe-spreader', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CNXUG0';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Silver', 
    slug = 'pharmaplast-pharma-algi-f-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-724ZN3';
UPDATE product 
SET 
    name = 'Pharmapore® Gentle', 
    slug = 'pharmapore-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'POREG5070';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Foam Gentle & Fibrosol® Ag Extra Foam Gentle', 
    slug = 'pharmaplast-fibrosol-ag-foam-gentle-fibrosol-ag-extra-foam-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XM3CBZ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid®', 
    slug = 'pharmaplast-cure-aid', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6QP157';
UPDATE product 
SET 
    name = 'Pharmaplast Linocare Cream', 
    slug = 'pharmaplast-linocare-cream', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RA13NV';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Silver', 
    slug = 'pharmaplast-cure-aid-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RE4AO9';
UPDATE product 
SET 
    name = 'Pharmaplast Urology', 
    slug = 'pharmaplast-urology', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HVZMMU';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Urostomy Two-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-urostomy-two-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2OU7OT';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid®povi', 
    slug = 'pharmaplast-cure-aidpovi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LAMGZQ';
UPDATE product 
SET 
    name = 'Pharmaplast Spunlaced Non-woven', 
    slug = 'pharmaplast-spunlaced-non-woven', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HXG29H';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore ® Pu Exsorb Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-exsorb-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7RTQSY';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn', 
    slug = 'pharmaplast-aluburn', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-O4EEQR';
UPDATE product 
SET 
    name = 'Pharmaplast Protectfilm® Gentle', 
    slug = 'pharmaplast-protectfilm-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TELWNQ';
UPDATE product 
SET 
    name = 'Pharmaplast Kemagel® Ag', 
    slug = 'pharmaplast-kemagel-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0A5ZYD';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmagel Ag', 
    slug = 'pharmaplast-pharmagel-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FO5BKT';
UPDATE product 
SET 
    name = 'Pharmaplast Fevokool', 
    slug = 'pharmaplast-fevokool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2RM6WS';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn', 
    slug = 'pharmaplast-cure-aid-corn', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-H5IVUV';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma-vie Colostomy Two-piece Closed Pouch', 
    slug = 'pharmaplast-stoma-vie-colostomy-two-piece-closed-pouch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3DJ74Y';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Lipo', 
    slug = 'pharmaplast-cure-aid-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-B6VX5A';
UPDATE product 
SET 
    name = 'Pharmaplast Thermapatch', 
    slug = 'pharmaplast-thermapatch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AY2WUY';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn', 
    slug = 'pharmaplast-cure-aid-corn', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WN4RI9';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll®', 
    slug = 'pharmaplast-pharmacoll', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JEQL7B';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Sealed Edges', 
    slug = 'pharmaplast-espuma-sealed-edges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OY0NTO';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma Kt', 
    slug = 'pharmaplast-pharma-kt', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KHUUA2';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Lite Comfort', 
    slug = 'pharmaplast-espuma-gentle-lite-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IXQI1J';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® C Comfort Lipo', 
    slug = 'pharmaplast-espuma-c-comfort-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-N8ZX03';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Ag Comfort', 
    slug = 'pharmaplast-espuma-gentle-ag-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TFDLPN';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Iv Gentle', 
    slug = 'pharmaplast-pharmapore-pu-iv-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QSCTDU';
UPDATE product 
SET 
    name = 'Pharmaplast Pe Films', 
    slug = 'pharmaplast-pe-films', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GBJTUZ';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets® Lanolin Ointment', 
    slug = 'pharmaplast-biosecrets-lanolin-ointment', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BANE4R';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid Acne Patches & Cure-aid Cold Sore Patches', 
    slug = 'pharmaplast-cure-aid-acne-patches-cure-aid-cold-sore-patches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AO37PY';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Ultra Exsorb Carbon', 
    slug = 'pharmaplast-pharmapore-ultra-exsorb-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NY98BN';
UPDATE product 
SET 
    name = 'Pharmaplast Solution', 
    slug = 'pharmaplast-solution', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XHLD28';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Foot Care Plasters', 
    slug = 'pharmaplast-cure-aid-foot-care-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8QXATW';
UPDATE product 
SET 
    name = 'Pharmaplast Kemagel®', 
    slug = 'pharmaplast-kemagel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TS4ICX';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blue Metal Detectable Plasters', 
    slug = 'pharmaplast-cure-aid-blue-metal-detectable-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Q7PQDO';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore®ag', 
    slug = 'pharmaplast-pharmaporeag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-K645JF';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Frame Style Gentle', 
    slug = 'pharmaplast-pharmapore-pu-frame-style-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OJERTS';
UPDATE product 
SET 
    name = 'Pharmaplast Difa® Iodine', 
    slug = 'pharmaplast-difa-iodine', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QFOWMV';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Iv Film & Fibrosol® Ag Extra Iv Film', 
    slug = 'pharmaplast-fibrosol-ag-iv-film-fibrosol-ag-extra-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RE7LC9';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapovi Swab', 
    slug = 'pharmaplast-pharmapovi-swab', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-S6EXXR';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmagel® Ag Comfort', 
    slug = 'pharmaplast-pharmagel-ag-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-I73P3A';
UPDATE product 
SET 
    name = 'Pharmaplast Alcohol-free Wipes', 
    slug = 'pharmaplast-alcohol-free-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PG7E8P';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapad Silver', 
    slug = 'pharmaplast-pharmapad-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BVKQ9X';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma-vie Colostomy Two-piece Closed Pouch', 
    slug = 'pharmaplast-stoma-vie-colostomy-two-piece-closed-pouch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7VN36B';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Comfort Lipo', 
    slug = 'pharmaplast-espuma-comfort-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6JS8I6';
UPDATE product 
SET 
    name = 'Pharmaplast Salicol®', 
    slug = 'pharmaplast-salicol', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-W4PGS5';
UPDATE product 
SET 
    name = 'Pharmaplast Toe & Finger Gel Protector', 
    slug = 'pharmaplast-toe-finger-gel-protector', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3LPIKB';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive Ultra & Fibrosol® Extra Adhesive Ultra', 
    slug = 'pharmaplast-fibrosol-adhesive-ultra-fibrosol-extra-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NSHV8B';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid Wart Removal Plaster', 
    slug = 'pharmaplast-cure-aid-wart-removal-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XQ8XRX';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Scar Reduction Patch', 
    slug = 'pharmaplast-cure-aid-scar-reduction-patch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6SWXOW';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets® Antimicrobial Wipes', 
    slug = 'pharmaplast-biosecrets-antimicrobial-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0O5MVQ';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Xtra Comfort Flex', 
    slug = 'pharmaplast-espuma-gentle-xtra-comfort-flex', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RMVPMS';
UPDATE product 
SET 
    name = 'Pharmaplast General Surgery', 
    slug = 'pharmaplast-general-surgery', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XI66J4';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Ileostomy Two-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-ileostomy-two-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-POBWUC';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® Cushion Tracheostomy', 
    slug = 'pharmaplast-absoclear-cushion-tracheostomy', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-U0RA32';
UPDATE product 
SET 
    name = 'Incifilm®', 
    slug = 'incifilm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'IN100100';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Ultra', 
    slug = 'pharmaplast-pharmapore-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-603XY8';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Hydrogel Bandages', 
    slug = 'pharmaplast-cure-aid-hydrogel-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YRNQE5';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Exsorb Carbon', 
    slug = 'pharmaplast-pharmapore-exsorb-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WO3IKS';
UPDATE product 
SET 
    name = 'Silkplast®', 
    slug = 'silkplast', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'SILK124550';
UPDATE product 
SET 
    name = 'Pharmaplast Toe Hammer Cushion', 
    slug = 'pharmaplast-toe-hammer-cushion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NOOQ50';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Wart Removal Plaster', 
    slug = 'pharmaplast-cure-aid-wart-removal-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-UEHV6A';
UPDATE product 
SET 
    name = 'Pharmaplast Travel Kit', 
    slug = 'pharmaplast-travel-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-REVFA2';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn Plasters', 
    slug = 'pharmaplast-cure-aid-corn-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WI3257';
UPDATE product 
SET 
    name = 'Pharmaplast Overshoes / Overhead', 
    slug = 'pharmaplast-overshoes-overhead', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TO2R13';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Bite & Sting Relief Patches', 
    slug = 'pharmaplast-cure-aid-bite-sting-relief-patches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-F4HEYL';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® Cushion Rings', 
    slug = 'pharmaplast-absoclear-cushion-rings', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PHB5V8';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Algi', 
    slug = 'pharmaplast-cure-aid-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0GFMLF';
UPDATE product 
SET 
    name = 'Greatcare Wooden Tongue Depressor', 
    slug = 'greatcare-wooden-tongue-depressor', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0X11F0';
UPDATE product 
SET 
    name = 'Greatcare Jet Nebulizer Set', 
    slug = 'greatcare-jet-nebulizer-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-09HG2F';
UPDATE product 
SET 
    name = 'Greatcare Combined Spinal & Epidural Block', 
    slug = 'greatcare-combined-spinal-epidural-block', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T6MGOM';
UPDATE product 
SET 
    name = 'Greatcare Disposable Urine Bags', 
    slug = 'greatcare-disposable-urine-bags', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EUFYCB';
UPDATE product 
SET 
    name = 'Greatcare Hydrocolloid Wound Dressing', 
    slug = 'greatcare-hydrocolloid-wound-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BCX1BH';
UPDATE product 
SET 
    name = 'Greatcare Silicone Anesthesia Mask', 
    slug = 'greatcare-silicone-anesthesia-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RUNW7Z';
UPDATE product 
SET 
    name = 'Greatcare Hot Water Bag', 
    slug = 'greatcare-hot-water-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KUAKBS';
UPDATE product 
SET 
    name = 'Greatcare Id Band', 
    slug = 'greatcare-id-band', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AQ84ZB';
UPDATE product 
SET 
    name = 'Greatcare Buck Neurological Hammer', 
    slug = 'greatcare-buck-neurological-hammer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XL90FR';
UPDATE product 
SET 
    name = 'Greatcare Disposable Biopsy Forceps', 
    slug = 'greatcare-disposable-biopsy-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AZ8CB0';
UPDATE product 
SET 
    name = 'Greatcare Walking Stick', 
    slug = 'greatcare-walking-stick', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-L104Z4';
UPDATE product 
SET 
    name = 'Greatcare Folding Screen', 
    slug = 'greatcare-folding-screen', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MWW4NW';
UPDATE product 
SET 
    name = 'Greatcare Disposable Pcnl Kit', 
    slug = 'greatcare-disposable-pcnl-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Y33LN2';
UPDATE product 
SET 
    name = 'Greatcare Stomach Tube', 
    slug = 'greatcare-stomach-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LF8TB2';
UPDATE product 
SET 
    name = 'Greatcare Test Pin', 
    slug = 'greatcare-test-pin', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9SYMYZ';
UPDATE product 
SET 
    name = 'Greatcare Manual Resuscitator', 
    slug = 'greatcare-manual-resuscitator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-O7MIRO';
UPDATE product 
SET 
    name = 'Greatcare Disposable Electrosurgical Pencil', 
    slug = 'greatcare-disposable-electrosurgical-pencil', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AD75N1';
UPDATE product 
SET 
    name = 'Greatcare Central Venous Catheter', 
    slug = 'greatcare-central-venous-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-O8UFPY';
UPDATE product 
SET 
    name = 'Greatcare Nebulizer Mask', 
    slug = 'greatcare-nebulizer-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-K6E49R';
UPDATE product 
SET 
    name = 'Greatcare Foley Catheter', 
    slug = 'greatcare-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8J8WXQ';
UPDATE product 
SET 
    name = 'Greatcare Dispense Holder For Vomit Bag', 
    slug = 'greatcare-dispense-holder-for-vomit-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-POSR0B';
UPDATE product 
SET 
    name = 'Greatcare Hollow Fiber Hemodialyze', 
    slug = 'greatcare-hollow-fiber-hemodialyze', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-P3Q4N9';
UPDATE product 
SET 
    name = 'Greatcare Cold Light Operation Lamp (build-in Type, Tungsten Halogen Bulb)', 
    slug = 'greatcare-cold-light-operation-lamp-build-in-type-tungsten-halogen-bulb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-C1A176';
UPDATE product 
SET 
    name = 'Greatcare Mobile Dining Table', 
    slug = 'greatcare-mobile-dining-table', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-X6YNPW';
UPDATE product 
SET 
    name = 'Greatcare Irrigation Bag', 
    slug = 'greatcare-irrigation-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CSP9SQ';
UPDATE product 
SET 
    name = 'Greatcare Disposable Ureteral Access Sheath', 
    slug = 'greatcare-disposable-ureteral-access-sheath', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DBO5QB';
UPDATE product 
SET 
    name = 'Greatcare Skin Marker', 
    slug = 'greatcare-skin-marker', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YTS39W';
UPDATE product 
SET 
    name = 'Greatcare Micropore Surgical Tape', 
    slug = 'greatcare-micropore-surgical-tape', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3ZV5U1';
UPDATE product 
SET 
    name = 'Greatcare Endotracheal Tube (tape Type)', 
    slug = 'greatcare-endotracheal-tube-tape-type', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-I2C2AP';
UPDATE product 
SET 
    name = 'Greatcare Disposable Vaginal Speculum', 
    slug = 'greatcare-disposable-vaginal-speculum', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ABRAKQ';
UPDATE product 
SET 
    name = 'Greatcare Disposable Slipper', 
    slug = 'greatcare-disposable-slipper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XA0W7S';
UPDATE product 
SET 
    name = 'Greatcare Latex Tubing', 
    slug = 'greatcare-latex-tubing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-O71H8E';
UPDATE product 
SET 
    name = 'Greatcare Safety Scalp Vein Set', 
    slug = 'greatcare-safety-scalp-vein-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UHVBIE';
UPDATE product 
SET 
    name = 'Greatcare Queen Square Hammer', 
    slug = 'greatcare-queen-square-hammer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7TF62W';
UPDATE product 
SET 
    name = 'Greatcare Cotton Ball', 
    slug = 'greatcare-cotton-ball', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CNJZUA';
UPDATE product 
SET 
    name = 'Greatcare Nurse Watch', 
    slug = 'greatcare-nurse-watch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HUPCO6';
UPDATE product 
SET 
    name = 'Greatcare Drainage Bag', 
    slug = 'greatcare-drainage-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8SE6I2';
UPDATE product 
SET 
    name = 'Greatcare Umbilical Catheter', 
    slug = 'greatcare-umbilical-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IGZTSM';
UPDATE product 
SET 
    name = 'Greatcare Pillow-shaped Absorbent Gauze Roll', 
    slug = 'greatcare-pillow-shaped-absorbent-gauze-roll', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SVL7VV';
UPDATE product 
SET 
    name = 'Greatcare Cervical Collar', 
    slug = 'greatcare-cervical-collar', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HTYG7D';
UPDATE product 
SET 
    name = 'Greatcare Oxygen Inhaler', 
    slug = 'greatcare-oxygen-inhaler', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Y3A3SW';
UPDATE product 
SET 
    name = 'Greatcare Disposable Kidney Basin', 
    slug = 'greatcare-disposable-kidney-basin', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZQSRFU';
UPDATE product 
SET 
    name = 'Greatcare High Flow Mask', 
    slug = 'greatcare-high-flow-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GSSHQJ';
UPDATE product 
SET 
    name = 'Greatcare Face Shield', 
    slug = 'greatcare-face-shield', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FQX29E';
UPDATE product 
SET 
    name = 'Greatcare Gauze Sponges', 
    slug = 'greatcare-gauze-sponges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FRTAO5';
UPDATE product 
SET 
    name = 'Greatcare Examination Sheets', 
    slug = 'greatcare-examination-sheets', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9TLWR0';
UPDATE product 
SET 
    name = 'Greatcare Bed Pan', 
    slug = 'greatcare-bed-pan', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WP62O9';
UPDATE product 
SET 
    name = 'Greatcare Babinski Hammer', 
    slug = 'greatcare-babinski-hammer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JQX7EG';
UPDATE product 
SET 
    name = 'Greatcare Disposable Blood Transfusion Sets', 
    slug = 'greatcare-disposable-blood-transfusion-sets', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-N1MQNG';
UPDATE product 
SET 
    name = 'Greatcare Wooden Cervical Scraper', 
    slug = 'greatcare-wooden-cervical-scraper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8JZWMG';
UPDATE product 
SET 
    name = 'Greatcare Selvaged Cotton Gauze Bandages', 
    slug = 'greatcare-selvaged-cotton-gauze-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-I0W6J4';
UPDATE product 
SET 
    name = 'Greatcare Easy Laryngeal Mask Airway', 
    slug = 'greatcare-easy-laryngeal-mask-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GK9QCB';
UPDATE product 
SET 
    name = 'Greatcare Transparent Surgical Tape', 
    slug = 'greatcare-transparent-surgical-tape', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YIT9GE';
UPDATE product 
SET 
    name = 'Greatcare Non-invasive Tibial Nerve Stimultion', 
    slug = 'greatcare-non-invasive-tibial-nerve-stimultion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-K924HZ';
UPDATE product 
SET 
    name = 'Greatcare Sponge Cleaning Stick', 
    slug = 'greatcare-sponge-cleaning-stick', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XWB52R';
UPDATE product 
SET 
    name = 'Greatcare Silk Surgical Tape', 
    slug = 'greatcare-silk-surgical-tape', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3XP1EZ';
UPDATE product 
SET 
    name = 'Greatcare Dental Bids', 
    slug = 'greatcare-dental-bids', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BLQSRT';
UPDATE product 
SET 
    name = 'Greatcare Disposable Syringe', 
    slug = 'greatcare-disposable-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DRM9W3';
UPDATE product 
SET 
    name = 'Greatcare Malecot Catheter', 
    slug = 'greatcare-malecot-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BDYABE';
UPDATE product 
SET 
    name = 'Greatcare Disinfecting Cap', 
    slug = 'greatcare-disinfecting-cap', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RSKUYS';
UPDATE product 
SET 
    name = 'Greatcare Heart Hugger', 
    slug = 'greatcare-heart-hugger', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-P5WUTU';
UPDATE product 
SET 
    name = 'Greatcare Scoop Stretcher', 
    slug = 'greatcare-scoop-stretcher', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XFVCGA';
UPDATE product 
SET 
    name = 'Greatcare Microscope Slides', 
    slug = 'greatcare-microscope-slides', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-W8P2KG';
UPDATE product 
SET 
    name = 'Greatcare Disposable Apron', 
    slug = 'greatcare-disposable-apron', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DI4WOI';
UPDATE product 
SET 
    name = 'Greatcare Flow Regulator', 
    slug = 'greatcare-flow-regulator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FDRLU6';
UPDATE product 
SET 
    name = 'Greatcare Corrugated Anesthesia Circuit', 
    slug = 'greatcare-corrugated-anesthesia-circuit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YSX70Z';
UPDATE product 
SET 
    name = 'Greatcare Stomach Tube 3 Way Double Balloon (latex)', 
    slug = 'greatcare-stomach-tube-3-way-double-balloon-latex', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MK4ECI';
UPDATE product 
SET 
    name = 'Greatcare Oxygen Mask', 
    slug = 'greatcare-oxygen-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-O3BUSO';
UPDATE product 
SET 
    name = 'Greatcare Opaque Syringe', 
    slug = 'greatcare-opaque-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9Z9K7J';
UPDATE product 
SET 
    name = 'Greatcare Plastic Blood Lancet', 
    slug = 'greatcare-plastic-blood-lancet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HXKYS3';
UPDATE product 
SET 
    name = 'Greatcare Triple-lumen Silicone Foley Catheter With Mercier Tip', 
    slug = 'greatcare-triple-lumen-silicone-foley-catheter-with-mercier-tip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HGR4PY';
UPDATE product 
SET 
    name = 'Greatcare Lemon Glycerin Swabsticks', 
    slug = 'greatcare-lemon-glycerin-swabsticks', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZDXDQ9';
UPDATE product 
SET 
    name = 'Greatcare N95 Mask With Belts', 
    slug = 'greatcare-n95-mask-with-belts', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EHXEAI';
UPDATE product 
SET 
    name = 'Greatcare Aluminum Wheelchair', 
    slug = 'greatcare-aluminum-wheelchair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZB9BIK';
UPDATE product 
SET 
    name = 'Greatcare Urine Meter Drainage Bag', 
    slug = 'greatcare-urine-meter-drainage-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WHN4E8';
UPDATE product 
SET 
    name = 'Greatcare Cotton Eye Pads', 
    slug = 'greatcare-cotton-eye-pads', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FVU0R1';
UPDATE product 
SET 
    name = 'Greatcare Air Cushion', 
    slug = 'greatcare-air-cushion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FG0GJ9';
UPDATE product 
SET 
    name = 'Greatcare Intubating Stylet', 
    slug = 'greatcare-intubating-stylet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8336IQ';
UPDATE product 
SET 
    name = 'Greatcare Overall Reflect Operation Lamp', 
    slug = 'greatcare-overall-reflect-operation-lamp', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-05TX6U';
UPDATE product 
SET 
    name = 'Greatcare Spinal Board (plastic Stretcher)', 
    slug = 'greatcare-spinal-board-plastic-stretcher', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-20MXM8';
UPDATE product 
SET 
    name = 'Greatcare Tissue Forceps', 
    slug = 'greatcare-tissue-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JZMVT9';
UPDATE product 
SET 
    name = 'Greatcare Steel Wheelchair', 
    slug = 'greatcare-steel-wheelchair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-G09GXF';
UPDATE product 
SET 
    name = 'Greatcare Vacuum Blood Collection', 
    slug = 'greatcare-vacuum-blood-collection', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0HX2SF';
UPDATE product 
SET 
    name = 'Greatcare Basic Dressing Set (pds-dht-166-set)', 
    slug = 'greatcare-basic-dressing-set-pds-dht-166-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JW77AE';
UPDATE product 
SET 
    name = 'Greatcare Polyurethane Nasogastric Tube', 
    slug = 'greatcare-polyurethane-nasogastric-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-33QYV6';
UPDATE product 
SET 
    name = 'Greatcare Disposable Air Cushion Mask', 
    slug = 'greatcare-disposable-air-cushion-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-55TF5W';
UPDATE product 
SET 
    name = 'Greatcare Disposable Vaccum-assisted Ureteral Access Sheath', 
    slug = 'greatcare-disposable-vaccum-assisted-ureteral-access-sheath', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-88DEF7';
UPDATE product 
SET 
    name = 'Greatcare Stainless Steel Surgical Scalpel Handle', 
    slug = 'greatcare-stainless-steel-surgical-scalpel-handle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MV2R9F';
UPDATE product 
SET 
    name = 'Greatcare Nebulizer With Mouthpiece', 
    slug = 'greatcare-nebulizer-with-mouthpiece', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VUMHJS';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Tube Holder', 
    slug = 'greatcare-tracheostomy-tube-holder', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-I0IBP0';
UPDATE product 
SET 
    name = 'Greatcare Aneroid Sphygmomanometer', 
    slug = 'greatcare-aneroid-sphygmomanometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OIF0EV';
UPDATE product 
SET 
    name = 'Greatcare Laryngeal Mask Airway', 
    slug = 'greatcare-laryngeal-mask-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-W90U9C';
UPDATE product 
SET 
    name = 'Greatcare Double Lumen Foley Catheter', 
    slug = 'greatcare-double-lumen-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9AK98V';
UPDATE product 
SET 
    name = 'Greatcare Bacterial Viral Filter', 
    slug = 'greatcare-bacterial-viral-filter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KP997C';
UPDATE product 
SET 
    name = 'Greatcare Double-lumen Silicone Foley Catheter With Tiemann Tip', 
    slug = 'greatcare-double-lumen-silicone-foley-catheter-with-tiemann-tip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WOFDNT';
UPDATE product 
SET 
    name = 'Greatcare Walking Aids', 
    slug = 'greatcare-walking-aids', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Y5JCCU';
UPDATE product 
SET 
    name = 'Greatcare Disposable Cervical Ripening Balloon', 
    slug = 'greatcare-disposable-cervical-ripening-balloon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9MDHEZ';
UPDATE product 
SET 
    name = 'Greatcare Central Venous Catheter Kit', 
    slug = 'greatcare-central-venous-catheter-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-69ZPNR';
UPDATE product 
SET 
    name = 'Greatcare Silicone Gastrostomy Tube', 
    slug = 'greatcare-silicone-gastrostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EQES46';
UPDATE product 
SET 
    name = 'Greatcare Triangle Testing Pin', 
    slug = 'greatcare-triangle-testing-pin', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-L8X29N';
UPDATE product 
SET 
    name = 'Greatcare Tube', 
    slug = 'greatcare-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2UBBXV';
UPDATE product 
SET 
    name = 'Greatcare Non-woven Eye Pads', 
    slug = 'greatcare-non-woven-eye-pads', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UA7TGT';
UPDATE product 
SET 
    name = 'Greatcare Basic Dressing Set For Pd', 
    slug = 'greatcare-basic-dressing-set-for-pd', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PPIHQP';
UPDATE product 
SET 
    name = 'Greatcare Nasopharyngeal Airway', 
    slug = 'greatcare-nasopharyngeal-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CFOH8C';
UPDATE product 
SET 
    name = 'Greatcare Auto Disable Syringe', 
    slug = 'greatcare-auto-disable-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IIVWOW';
UPDATE product 
SET 
    name = 'Greatcare Leg Bag Strap', 
    slug = 'greatcare-leg-bag-strap', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-D8VODG';
UPDATE product 
SET 
    name = 'Greatcare Baby Weighing Balance', 
    slug = 'greatcare-baby-weighing-balance', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OQMYCY';
UPDATE product 
SET 
    name = 'Greatcare Three-way Stopcock', 
    slug = 'greatcare-three-way-stopcock', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0F6OSC';
UPDATE product 
SET 
    name = 'Greatcare Venturi Mask', 
    slug = 'greatcare-venturi-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0NF8RR';
UPDATE product 
SET 
    name = 'Greatcare Disposable Insulin Pen Needles', 
    slug = 'greatcare-disposable-insulin-pen-needles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-69YOBW';
UPDATE product 
SET 
    name = 'Greatcare Blood Bag', 
    slug = 'greatcare-blood-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GULHYD';
UPDATE product 
SET 
    name = 'Greatcare Disposable Urological Zebra Guidewire', 
    slug = 'greatcare-disposable-urological-zebra-guidewire', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QIX8MB';
UPDATE product 
SET 
    name = 'Greatcare Disposable Enema Bags', 
    slug = 'greatcare-disposable-enema-bags', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-M10BFK';
UPDATE product 
SET 
    name = 'Greatcare Embedding Cassette', 
    slug = 'greatcare-embedding-cassette', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VWJC01';
UPDATE product 
SET 
    name = 'Greatcare Aerochamber With Masks', 
    slug = 'greatcare-aerochamber-with-masks', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HRY7FL';
UPDATE product 
SET 
    name = 'Greatcare Endotracheal Tube Introducers', 
    slug = 'greatcare-endotracheal-tube-introducers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6UKF5C';
UPDATE product 
SET 
    name = 'Greatcare Enteral Feeding Container', 
    slug = 'greatcare-enteral-feeding-container', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GV6WZT';
UPDATE product 
SET 
    name = 'Greatcare Red Rubber Urethral Catheter', 
    slug = 'greatcare-red-rubber-urethral-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7GA990';
UPDATE product 
SET 
    name = 'Greatcare Blood Collection Needle (pen Type)', 
    slug = 'greatcare-blood-collection-needle-pen-type', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KC3DAC';
UPDATE product 
SET 
    name = 'Greatcare Belt', 
    slug = 'greatcare-belt', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7I2XAR';
UPDATE product 
SET 
    name = 'Greatcare Urethral Dilator', 
    slug = 'greatcare-urethral-dilator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OY0FGR';
UPDATE product 
SET 
    name = 'Greatcare Absorbent Cotton Wool', 
    slug = 'greatcare-absorbent-cotton-wool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3CI0NK';
UPDATE product 
SET 
    name = 'Greatcare Gynecological Sets', 
    slug = 'greatcare-gynecological-sets', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-E61VB4';
UPDATE product 
SET 
    name = 'Greatcare Shoe Covers', 
    slug = 'greatcare-shoe-covers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-J02APF';
UPDATE product 
SET 
    name = 'Greatcare Disposable Fistula Needle', 
    slug = 'greatcare-disposable-fistula-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BURIK1';
UPDATE product 
SET 
    name = 'Greatcare Carbon Face Mask', 
    slug = 'greatcare-carbon-face-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0JI82Q';
UPDATE product 
SET 
    name = 'Greatcare Enteral Gravity Feeding Bags', 
    slug = 'greatcare-enteral-gravity-feeding-bags', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FW4V4W';
UPDATE product 
SET 
    name = 'Greatcare Disposable 2-segment Stone Retrieval Basket', 
    slug = 'greatcare-disposable-2-segment-stone-retrieval-basket', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-I66KFE';
UPDATE product 
SET 
    name = 'Greatcare Cleansing Enema Set', 
    slug = 'greatcare-cleansing-enema-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VGQ063';
UPDATE product 
SET 
    name = 'Greatcare Face Shield', 
    slug = 'greatcare-face-shield', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QTFFKI';
UPDATE product 
SET 
    name = 'Greatcare Disposable Laryngoscope', 
    slug = 'greatcare-disposable-laryngoscope', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GB8ISM';
UPDATE product 
SET 
    name = 'Greatcare Urine Meter Bag', 
    slug = 'greatcare-urine-meter-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SBRIF6';
UPDATE product 
SET 
    name = 'Greatcare Petri Dish', 
    slug = 'greatcare-petri-dish', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-NU2UOZ';
UPDATE product 
SET 
    name = 'Greatcare Disposable Urethral Dilators', 
    slug = 'greatcare-disposable-urethral-dilators', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JXY8FN';
UPDATE product 
SET 
    name = 'Greatcare Disposable Multi-band Ligator', 
    slug = 'greatcare-disposable-multi-band-ligator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WWPT3G';
UPDATE product 
SET 
    name = 'Greatcare Microcentrifuge Tube', 
    slug = 'greatcare-microcentrifuge-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RFZ6VT';
UPDATE product 
SET 
    name = 'Greatcare Cataract Pack', 
    slug = 'greatcare-cataract-pack', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Z2ZYXA';
UPDATE product 
SET 
    name = 'Greatcare Head Stethoscope', 
    slug = 'greatcare-head-stethoscope', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2Z8L6V';
UPDATE product 
SET 
    name = 'Greatcare Dental Needles', 
    slug = 'greatcare-dental-needles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9CZWXO';
UPDATE product 
SET 
    name = 'Greatcare Protecting Glasses', 
    slug = 'greatcare-protecting-glasses', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2QH576';
UPDATE product 
SET 
    name = 'Greatcare Catheter Mount', 
    slug = 'greatcare-catheter-mount', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CLN4IB';
UPDATE product 
SET 
    name = 'Greatcare Pe Gloves', 
    slug = 'greatcare-pe-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-K8XVV9';
UPDATE product 
SET 
    name = 'Greatcare Disposable Underpad', 
    slug = 'greatcare-disposable-underpad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0A5A74';
UPDATE product 
SET 
    name = 'Greatcare Colostomy Bag', 
    slug = 'greatcare-colostomy-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CM2WIA';
UPDATE product 
SET 
    name = 'Greatcare Sampling Nasal Cannula', 
    slug = 'greatcare-sampling-nasal-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-5HW25Q';
UPDATE product 
SET 
    name = 'Greatcare Nasal Irrigator', 
    slug = 'greatcare-nasal-irrigator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-N3O0UC';
UPDATE product 
SET 
    name = 'Greatcare First-aid Kit', 
    slug = 'greatcare-first-aid-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Q3FKUA';
UPDATE product 
SET 
    name = 'Greatcare Zig-zag Cotton', 
    slug = 'greatcare-zig-zag-cotton', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YUW6HW';
UPDATE product 
SET 
    name = 'Greatcare Nasal Oxygen Cannula', 
    slug = 'greatcare-nasal-oxygen-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-74WL0T';
UPDATE product 
SET 
    name = 'Greatcare Anesthesia Easy Mask', 
    slug = 'greatcare-anesthesia-easy-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VQJPX8';
UPDATE product 
SET 
    name = 'Greatcare Disposable Spinal Needle', 
    slug = 'greatcare-disposable-spinal-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-K6P03O';
UPDATE product 
SET 
    name = 'Greatcare Adjustable Automatic Lancing Device', 
    slug = 'greatcare-adjustable-automatic-lancing-device', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SHBVA5';
UPDATE product 
SET 
    name = 'Greatcare Cervical Brush', 
    slug = 'greatcare-cervical-brush', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ADQ33D';
UPDATE product 
SET 
    name = 'Greatcare Urine Drainage Leg Bag', 
    slug = 'greatcare-urine-drainage-leg-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DTL9BG';
UPDATE product 
SET 
    name = 'Greatcare Silicone Stomach Tube', 
    slug = 'greatcare-silicone-stomach-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-B3SOVG';
UPDATE product 
SET 
    name = 'Greatcare Non-woven Working Caps', 
    slug = 'greatcare-non-woven-working-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FSELBR';
UPDATE product 
SET 
    name = 'Greatcare Disposable Endoscopic Mouthpiece', 
    slug = 'greatcare-disposable-endoscopic-mouthpiece', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-649YLN';
UPDATE product 
SET 
    name = 'Greatcare Irrigation Syringes', 
    slug = 'greatcare-irrigation-syringes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0ZNVSW';
UPDATE product 
SET 
    name = 'Greatcare Stair Chair', 
    slug = 'greatcare-stair-chair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8ORFDW';
UPDATE product 
SET 
    name = 'Greatcare Syringe Filter', 
    slug = 'greatcare-syringe-filter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GZ0Y08';
UPDATE product 
SET 
    name = 'Greatcare Heat Moisture Exchanger Filter', 
    slug = 'greatcare-heat-moisture-exchanger-filter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CKZ1NL';
UPDATE product 
SET 
    name = 'Greatcare Basic Dressing Set(pds-drs-066-set)', 
    slug = 'greatcare-basic-dressing-setpds-drs-066-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6GGLVC';
UPDATE product 
SET 
    name = 'Greatcare Plastic Scissors', 
    slug = 'greatcare-plastic-scissors', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EOLFHH';
UPDATE product 
SET 
    name = 'Greatcare Leg Bag Holder', 
    slug = 'greatcare-leg-bag-holder', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UPSTWL';
UPDATE product 
SET 
    name = 'Greatcare Astronaut Caps', 
    slug = 'greatcare-astronaut-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-R4LR0P';
UPDATE product 
SET 
    name = 'Greatcare Laparotomy Sponges', 
    slug = 'greatcare-laparotomy-sponges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OMAZA1';
UPDATE product 
SET 
    name = 'Greatcare Disposable Surgical Blades', 
    slug = 'greatcare-disposable-surgical-blades', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MA573T';
UPDATE product 
SET 
    name = 'Greatcare Wartenberg Pinwheel', 
    slug = 'greatcare-wartenberg-pinwheel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-X873OS';
UPDATE product 
SET 
    name = 'Greatcare Flip Flow Valve', 
    slug = 'greatcare-flip-flow-valve', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T113HX';
UPDATE product 
SET 
    name = 'Greatcare Lubricant Jelly', 
    slug = 'greatcare-lubricant-jelly', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ITUKYN';
UPDATE product 
SET 
    name = 'Greatcare Elastic Bandages', 
    slug = 'greatcare-elastic-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-G1B0WR';
UPDATE product 
SET 
    name = 'Greatcare Spun-lanced Dressing Tape', 
    slug = 'greatcare-spun-lanced-dressing-tape', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HT0RWN';
UPDATE product 
SET 
    name = 'Greatcare Triangular Bandages', 
    slug = 'greatcare-triangular-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VB9OXB';
UPDATE product 
SET 
    name = 'Greatcare Latex Male External Catheter', 
    slug = 'greatcare-latex-male-external-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2Z3LAI';
UPDATE product 
SET 
    name = 'Greatcare Wound Drainage Reservoir', 
    slug = 'greatcare-wound-drainage-reservoir', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-NU86KL';
UPDATE product 
SET 
    name = 'Greatcare Basic Dressing Set', 
    slug = 'greatcare-basic-dressing-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UNKS0C';
UPDATE product 
SET 
    name = 'Greatcare Nose Nasal Speculum', 
    slug = 'greatcare-nose-nasal-speculum', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Z2R5B6';
UPDATE product 
SET 
    name = 'Greatcare Disposable Stitch Cutter Blades', 
    slug = 'greatcare-disposable-stitch-cutter-blades', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6L31D3';
UPDATE product 
SET 
    name = 'Greatcare Etco2/o2 Nasal Cannula', 
    slug = 'greatcare-etco2o2-nasal-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-68FBUG';
UPDATE product 
SET 
    name = 'Greatcare Disposable Isolation Gown', 
    slug = 'greatcare-disposable-isolation-gown', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SUUNVQ';
UPDATE product 
SET 
    name = 'Greatcare Infant Mucus Extractor', 
    slug = 'greatcare-infant-mucus-extractor', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8QS5P7';
UPDATE product 
SET 
    name = 'Greatcare Weight & Height Balance', 
    slug = 'greatcare-weight-height-balance', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OWPLED';
UPDATE product 
SET 
    name = 'Greatcare Silicone Coated Latex Foley Catheter', 
    slug = 'greatcare-silicone-coated-latex-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CBAO5C';
UPDATE product 
SET 
    name = 'Greatcare Disposable Ecg Electrode', 
    slug = 'greatcare-disposable-ecg-electrode', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TZ008U';
UPDATE product 
SET 
    name = 'Greatcare Tube Brush', 
    slug = 'greatcare-tube-brush', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FC4BMX';
UPDATE product 
SET 
    name = 'Greatcare Male Nelaton Catheter', 
    slug = 'greatcare-male-nelaton-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OTYYJS';
UPDATE product 
SET 
    name = 'Greatcare Post-op Elbow Brace', 
    slug = 'greatcare-post-op-elbow-brace', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2S08XZ';
UPDATE product 
SET 
    name = 'Greatcare Power Wheelchair', 
    slug = 'greatcare-power-wheelchair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BMBT2J';
UPDATE product 
SET 
    name = 'Greatcare Pregnancy Test-hcg', 
    slug = 'greatcare-pregnancy-test-hcg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LRQDRX';
UPDATE product 
SET 
    name = 'Greatcare Cervix Forceps', 
    slug = 'greatcare-cervix-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ITT0MN';
UPDATE product 
SET 
    name = 'Greatcare Digital Thermometer', 
    slug = 'greatcare-digital-thermometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ATZCIF';
UPDATE product 
SET 
    name = 'Greatcare Oxygen Humidifier', 
    slug = 'greatcare-oxygen-humidifier', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MISO8U';
UPDATE product 
SET 
    name = 'Greatcare Disposable Humidifier', 
    slug = 'greatcare-disposable-humidifier', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-28UPD1';
UPDATE product 
SET 
    name = 'Greatcare First Aid Band', 
    slug = 'greatcare-first-aid-band', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-40X5DI';
UPDATE product 
SET 
    name = 'Greatcare Electronic Baby Weighing Balance', 
    slug = 'greatcare-electronic-baby-weighing-balance', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-O59FDA';
UPDATE product 
SET 
    name = 'Greatcare Urine Bag Hanger', 
    slug = 'greatcare-urine-bag-hanger', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LOKG0H';
UPDATE product 
SET 
    name = 'Greatcare Stainless Steel Blood Lancet', 
    slug = 'greatcare-stainless-steel-blood-lancet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WY1XNR';
UPDATE product 
SET 
    name = 'Greatcare Adjustable Venturi Mask', 
    slug = 'greatcare-adjustable-venturi-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-5HEBEQ';
UPDATE product 
SET 
    name = 'Greatcare Transparent Dressing Paste', 
    slug = 'greatcare-transparent-dressing-paste', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0AX3IT';
UPDATE product 
SET 
    name = 'Greatcare Emergency Blanket', 
    slug = 'greatcare-emergency-blanket', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-P349FJ';
UPDATE product 
SET 
    name = 'Greatcare Cohesive Elastic Bandages(non-woven)', 
    slug = 'greatcare-cohesive-elastic-bandagesnon-woven', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8P4B7F';
UPDATE product 
SET 
    name = 'Greatcare Pulse Oximeter', 
    slug = 'greatcare-pulse-oximeter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KYSBPP';
UPDATE product 
SET 
    name = 'Greatcare Boot Covers', 
    slug = 'greatcare-boot-covers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-E7U5BT';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Tube', 
    slug = 'greatcare-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-531EPW';
UPDATE product 
SET 
    name = 'Greatcare Surgical Hemostatic Forceps', 
    slug = 'greatcare-surgical-hemostatic-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KVT9WW';
UPDATE product 
SET 
    name = 'Greatcare Cotton Applicator(wooden Handle)', 
    slug = 'greatcare-cotton-applicatorwooden-handle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GW1WKC';
UPDATE product 
SET 
    name = 'Greatcare Double J Ureteral Stent', 
    slug = 'greatcare-double-j-ureteral-stent', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-U2K4G9';
UPDATE product 
SET 
    name = 'Greatcare Hydrophilic Latex Foley Catheter', 
    slug = 'greatcare-hydrophilic-latex-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1Z2801';
UPDATE product 
SET 
    name = 'Greatcare Mouth Opener', 
    slug = 'greatcare-mouth-opener', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QN2WSN';
UPDATE product 
SET 
    name = 'Greatcare Catheter Clamps', 
    slug = 'greatcare-catheter-clamps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SFWE5O';
UPDATE product 
SET 
    name = 'Greatcare Paper', 
    slug = 'greatcare-paper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7HQ3IL';
UPDATE product 
SET 
    name = 'Greatcare Aspirator Nasal', 
    slug = 'greatcare-aspirator-nasal', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8362KB';
UPDATE product 
SET 
    name = 'Greatcare Nipple Set(for Baby)', 
    slug = 'greatcare-nipple-setfor-baby', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6HXQZA';
UPDATE product 
SET 
    name = 'Greatcare Dental Mirror', 
    slug = 'greatcare-dental-mirror', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-48NSCT';
UPDATE product 
SET 
    name = 'Greatcare Surgical Gloves', 
    slug = 'greatcare-surgical-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-91FVZT';
UPDATE product 
SET 
    name = 'Greatcare Alcohol Swabs', 
    slug = 'greatcare-alcohol-swabs', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9L422X';
UPDATE product 
SET 
    name = 'Greatcare Rectal Tube', 
    slug = 'greatcare-rectal-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9I8NX3';
UPDATE product 
SET 
    name = 'Greatcare Pen Light', 
    slug = 'greatcare-pen-light', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BX1S7V';
UPDATE product 
SET 
    name = 'Greatcare Urostomy Bag', 
    slug = 'greatcare-urostomy-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0ATPU9';
UPDATE product 
SET 
    name = 'Greatcare Infusion Plaster', 
    slug = 'greatcare-infusion-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YYICQH';
UPDATE product 
SET 
    name = 'Greatcare Latex Foley Catheter', 
    slug = 'greatcare-latex-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZTRGAA';
UPDATE product 
SET 
    name = 'Greatcare Bath Bench', 
    slug = 'greatcare-bath-bench', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-NHVFK9';
UPDATE product 
SET 
    name = 'Greatcare Non-mercury Thermometer', 
    slug = 'greatcare-non-mercury-thermometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8EBEZD';
UPDATE product 
SET 
    name = 'Greatcare Bandage Scissors', 
    slug = 'greatcare-bandage-scissors', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Y165JX';
UPDATE product 
SET 
    name = 'Greatcare Electronic Balance', 
    slug = 'greatcare-electronic-balance', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7UUGUB';
UPDATE product 
SET 
    name = 'Greatcare Mask', 
    slug = 'greatcare-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-N1SQ1R';
UPDATE product 
SET 
    name = 'Greatcare Disposable Skin Graft Blades', 
    slug = 'greatcare-disposable-skin-graft-blades', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6ZGAVV';
UPDATE product 
SET 
    name = 'Greatcare Dining Table', 
    slug = 'greatcare-dining-table', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Y120KR';
UPDATE product 
SET 
    name = 'Greatcare Net Tubular Elastic Bandages', 
    slug = 'greatcare-net-tubular-elastic-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AZY02O';
UPDATE product 
SET 
    name = 'Greatcare Needle Holder', 
    slug = 'greatcare-needle-holder', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SVZ41U';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Tube With Suction Lumen', 
    slug = 'greatcare-tracheostomy-tube-with-suction-lumen', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KQM2K3';
UPDATE product 
SET 
    name = 'Greatcare Disposable Anesthetic Needle', 
    slug = 'greatcare-disposable-anesthetic-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-5T4BKI';
UPDATE product 
SET 
    name = 'Greatcare I.v. Stand', 
    slug = 'greatcare-iv-stand', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1VVQKF';
UPDATE product 
SET 
    name = 'Greatcare Paraffin Gauze', 
    slug = 'greatcare-paraffin-gauze', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6ECL46';
UPDATE product 
SET 
    name = 'Greatcare Safety Syringes', 
    slug = 'greatcare-safety-syringes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-N3L523';
UPDATE product 
SET 
    name = 'Greatcare Mercury-free Sphygmomanometer', 
    slug = 'greatcare-mercury-free-sphygmomanometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1Q9BPK';
UPDATE product 
SET 
    name = 'Greatcare Disposable 4-wire Stone Retrieval Basket', 
    slug = 'greatcare-disposable-4-wire-stone-retrieval-basket', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VR5Y1Y';
UPDATE product 
SET 
    name = 'Greatcare Face Mask(with Transparent Shield)', 
    slug = 'greatcare-face-maskwith-transparent-shield', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8BUG9E';
UPDATE product 
SET 
    name = 'Greatcare Transfer Pipette', 
    slug = 'greatcare-transfer-pipette', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PPLF94';
UPDATE product 
SET 
    name = 'Greatcare Silicone Foley Catheter', 
    slug = 'greatcare-silicone-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Y7YNW6';
UPDATE product 
SET 
    name = 'Greatcare Face Mask', 
    slug = 'greatcare-face-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BLT7CE';
UPDATE product 
SET 
    name = 'Greatcare Gas Sampling Line', 
    slug = 'greatcare-gas-sampling-line', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3NI3KC';
UPDATE product 
SET 
    name = 'Greatcare Hydrophilic Nelaton Catheter', 
    slug = 'greatcare-hydrophilic-nelaton-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-46J6WM';
UPDATE product 
SET 
    name = 'Greatcare Nitrile Gloves', 
    slug = 'greatcare-nitrile-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6SGR6K';
UPDATE product 
SET 
    name = 'Greatcare Urine Bottle', 
    slug = 'greatcare-urine-bottle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6BCWQJ';
UPDATE product 
SET 
    name = 'Greatcare Self-adhesive Wound Dressing', 
    slug = 'greatcare-self-adhesive-wound-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0VPPZ8';
UPDATE product 
SET 
    name = 'Greatcare Bathroom Scale', 
    slug = 'greatcare-bathroom-scale', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-58FUUZ';
UPDATE product 
SET 
    name = 'Greatcare Non-rebreather Mask', 
    slug = 'greatcare-non-rebreather-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6HIEC8';
UPDATE product 
SET 
    name = 'Greatcare Examination Gloves', 
    slug = 'greatcare-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9YFW7D';
UPDATE product 
SET 
    name = 'Greatcare Disposable Surgical Scalpel', 
    slug = 'greatcare-disposable-surgical-scalpel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-P62GSO';
UPDATE product 
SET 
    name = 'Greatcare Suction Catheter', 
    slug = 'greatcare-suction-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RI40BF';
UPDATE product 
SET 
    name = 'Greatcare Disposable Syringe Cleaners', 
    slug = 'greatcare-disposable-syringe-cleaners', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QBCT4U';
UPDATE product 
SET 
    name = 'Greatcare Digital Sphygmomanometer', 
    slug = 'greatcare-digital-sphygmomanometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CJ1Y57';
UPDATE product 
SET 
    name = 'Greatcare Bouffant Caps', 
    slug = 'greatcare-bouffant-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FAW9DE';
UPDATE product 
SET 
    name = 'Greatcare Ultrasound Gel', 
    slug = 'greatcare-ultrasound-gel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BRRZXE';
UPDATE product 
SET 
    name = 'Greatcare Feeding Tube', 
    slug = 'greatcare-feeding-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EBCGRM';
UPDATE product 
SET 
    name = 'Greatcare Penrose Tube', 
    slug = 'greatcare-penrose-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3JACAO';
UPDATE product 
SET 
    name = 'Greatcare Doctor''s Caps', 
    slug = 'greatcare-doctors-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YTTQNU';
UPDATE product 
SET 
    name = 'Greatcare Breathing Mask With One Way Valve', 
    slug = 'greatcare-breathing-mask-with-one-way-valve', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9BNRDM';
UPDATE product 
SET 
    name = 'Greatcare Extension Set', 
    slug = 'greatcare-extension-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZY2680';
UPDATE product 
SET 
    name = 'Greatcare Cotton Applicator(plastic Handle)', 
    slug = 'greatcare-cotton-applicatorplastic-handle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DI17F7';
UPDATE product 
SET 
    name = 'Greatcare Infrared Ear Thermometer', 
    slug = 'greatcare-infrared-ear-thermometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MHQJ0K';
UPDATE product 
SET 
    name = 'Greatcare Oral Suction Tube', 
    slug = 'greatcare-oral-suction-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EFSIWX';
UPDATE product 
SET 
    name = 'Greatcare Beard Cover', 
    slug = 'greatcare-beard-cover', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IV8251';
UPDATE product 
SET 
    name = 'Greatcare Coldlight Shadowless Operation Lamp With Supplementary Lamp', 
    slug = 'greatcare-coldlight-shadowless-operation-lamp-with-supplementary-lamp', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6TEUAE';
UPDATE product 
SET 
    name = 'Greatcare Tension-free Urethral Sling', 
    slug = 'greatcare-tension-free-urethral-sling', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-V9LWM5';
UPDATE product 
SET 
    name = 'Greatcare Disposable Balloon Dilatation Catheter', 
    slug = 'greatcare-disposable-balloon-dilatation-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7SKB2T';
UPDATE product 
SET 
    name = 'Greatcare Double-cuff Tracheostomy Tube', 
    slug = 'greatcare-double-cuff-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-01MFCR';
UPDATE product 
SET 
    name = 'Greatcare Infusion Sets', 
    slug = 'greatcare-infusion-sets', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-N32YQC';
UPDATE product 
SET 
    name = 'Greatcare Medical Isolation Safety Goggles', 
    slug = 'greatcare-medical-isolation-safety-goggles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VNK1KR';
UPDATE product 
SET 
    name = 'Greatcare Irrigation Needles', 
    slug = 'greatcare-irrigation-needles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SK89I4';
UPDATE product 
SET 
    name = 'Greatcare Universal Bottle Adapter', 
    slug = 'greatcare-universal-bottle-adapter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EHAT25';
UPDATE product 
SET 
    name = 'Greatcare Breast Pump(simple)', 
    slug = 'greatcare-breast-pumpsimple', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9KMMQI';
UPDATE product 
SET 
    name = 'Greatcare Feeding Bottle', 
    slug = 'greatcare-feeding-bottle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WO2MUV';
UPDATE product 
SET 
    name = 'Greatcare Absorbent Cotton Gauze Roll', 
    slug = 'greatcare-absorbent-cotton-gauze-roll', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IUJPHG';
UPDATE product 
SET 
    name = 'Greatcare Disposable Bone Marrow Needle', 
    slug = 'greatcare-disposable-bone-marrow-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-5OYC1H';
UPDATE product 
SET 
    name = 'Greatcare Extended-length Tracheostomy Tube', 
    slug = 'greatcare-extended-length-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4Q4468';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Tube Inner Cannula', 
    slug = 'greatcare-tracheostomy-tube-inner-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SWXOIO';
UPDATE product 
SET 
    name = 'Greatcare Hydrocolloid Foam Dressing', 
    slug = 'greatcare-hydrocolloid-foam-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LMGXEJ';
UPDATE product 
SET 
    name = 'Greatcare Metrical Rod', 
    slug = 'greatcare-metrical-rod', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8PEFSF';
UPDATE product 
SET 
    name = 'Greatcare Plastic Forceps', 
    slug = 'greatcare-plastic-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XDJRE8';
UPDATE product 
SET 
    name = 'Greatcare Taylor Percussion Hammer', 
    slug = 'greatcare-taylor-percussion-hammer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1UT1FC';
UPDATE product 
SET 
    name = 'Greatcare Head Immobilizer', 
    slug = 'greatcare-head-immobilizer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-O13FSJ';
UPDATE product 
SET 
    name = 'Greatcare Zinc Oxide Plaster', 
    slug = 'greatcare-zinc-oxide-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9MXAAC';
UPDATE product 
SET 
    name = 'Greatcare Sleeve Covers', 
    slug = 'greatcare-sleeve-covers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HGXHU8';
UPDATE product 
SET 
    name = 'Greatcare Fracture Walker', 
    slug = 'greatcare-fracture-walker', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6JUWDM';
UPDATE product 
SET 
    name = 'Greatcare Tubercle Bacillus Syringe', 
    slug = 'greatcare-tubercle-bacillus-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WZFD1E';
UPDATE product 
SET 
    name = 'Greatcare Silicone Male External Catheter', 
    slug = 'greatcare-silicone-male-external-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2TZF19';
UPDATE product 
SET 
    name = 'Greatcare Radial Artery Compression Tourniquet', 
    slug = 'greatcare-radial-artery-compression-tourniquet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6IPT5E';
UPDATE product 
SET 
    name = 'Greatcare Hospital Bed', 
    slug = 'greatcare-hospital-bed', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EXIV4C';
UPDATE product 
SET 
    name = 'Greatcare Nelaton Catheter', 
    slug = 'greatcare-nelaton-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Y63W85';
UPDATE product 
SET 
    name = 'Greatcare Plaster Of Paris Bandages', 
    slug = 'greatcare-plaster-of-paris-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BJTEKI';
UPDATE product 
SET 
    name = 'Greatcare Wash Brush', 
    slug = 'greatcare-wash-brush', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YVIFAB';
UPDATE product 
SET 
    name = 'Greatcare Oropharyngeal Airway', 
    slug = 'greatcare-oropharyngeal-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1OKH27';
UPDATE product 
SET 
    name = 'Greatcare T-tube', 
    slug = 'greatcare-t-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DOKCWT';
UPDATE product 
SET 
    name = 'Greatcare Hospital Bedside Table', 
    slug = 'greatcare-hospital-bedside-table', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-NBUMSN';
UPDATE product 
SET 
    name = 'Greatcare Disposable Multi-stage Balloon Dilatation Catheter', 
    slug = 'greatcare-disposable-multi-stage-balloon-dilatation-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BA2DOA';
UPDATE product 
SET 
    name = 'Greatcare Disposable Infusion Pump', 
    slug = 'greatcare-disposable-infusion-pump', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KU6E8D';
UPDATE product 
SET 
    name = 'Greatcare Needle Holder For Blood Collection', 
    slug = 'greatcare-needle-holder-for-blood-collection', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-C0HWWO';
UPDATE product 
SET 
    name = 'Greatcare Oxygen Tubing', 
    slug = 'greatcare-oxygen-tubing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-66QYZC';
UPDATE product 
SET 
    name = 'Greatcare Disposable Endoscopic Stone Retrieval Basket', 
    slug = 'greatcare-disposable-endoscopic-stone-retrieval-basket', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HZ4APP';
UPDATE product 
SET 
    name = 'Greatcare Conforming Bandages', 
    slug = 'greatcare-conforming-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-F48PZF';
UPDATE product 
SET 
    name = 'Greatcare Disposable Coveralls', 
    slug = 'greatcare-disposable-coveralls', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZH7ZJ6';
UPDATE product 
SET 
    name = 'Greatcare Plastic Tongue Depressor', 
    slug = 'greatcare-plastic-tongue-depressor', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TJ451G';
UPDATE product 
SET 
    name = 'Greatcare Centrifuge Tube', 
    slug = 'greatcare-centrifuge-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZC5SIS';
UPDATE product 
SET 
    name = 'Greatcare Hinged Knee Support', 
    slug = 'greatcare-hinged-knee-support', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UCQ99R';
UPDATE product 
SET 
    name = 'Greatcare Duodenal Feeding Tube', 
    slug = 'greatcare-duodenal-feeding-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YK0FKS';
UPDATE product 
SET 
    name = 'Greatcare Safety Blood Lancet', 
    slug = 'greatcare-safety-blood-lancet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7ERSD6';
UPDATE product 
SET 
    name = 'Greatcare Non-woven Sponges', 
    slug = 'greatcare-non-woven-sponges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HPEDNH';
UPDATE product 
SET 
    name = 'Greatcare Robinson Nelaton Catheter', 
    slug = 'greatcare-robinson-nelaton-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6WQ4V3';
UPDATE product 
SET 
    name = 'Greatcare Vomit Bag', 
    slug = 'greatcare-vomit-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0SE5RD';
UPDATE product 
SET 
    name = 'Greatcare Reinforced Tracheostomy Tube', 
    slug = 'greatcare-reinforced-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-G6AH09';
UPDATE product 
SET 
    name = 'Greatcare Gauze Ball', 
    slug = 'greatcare-gauze-ball', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CC71IO';
UPDATE product 
SET 
    name = 'Greatcare Endotracheal Tube', 
    slug = 'greatcare-endotracheal-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PENWPB';
UPDATE product 
SET 
    name = 'Greatcare Epidural Anesthesia Kit', 
    slug = 'greatcare-epidural-anesthesia-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9K5969';
UPDATE product 
SET 
    name = 'Greatcare Catheter Spigot', 
    slug = 'greatcare-catheter-spigot', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LIQ1X6';
UPDATE product 
SET 
    name = 'Greatcare Alcohol Disinfectant', 
    slug = 'greatcare-alcohol-disinfectant', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UXZN5M';
UPDATE product 
SET 
    name = 'Greatcare Double Lumen Endobronchial Tube', 
    slug = 'greatcare-double-lumen-endobronchial-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CJ8KLY';
UPDATE product 
SET 
    name = 'Greatcare Reclining Wheelchair', 
    slug = 'greatcare-reclining-wheelchair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OLO4N6';
UPDATE product 
SET 
    name = 'Greatcare Disposable Medical Razor', 
    slug = 'greatcare-disposable-medical-razor', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6W21CH';
UPDATE product 
SET 
    name = 'Greatcare Hot/cold Pack', 
    slug = 'greatcare-hotcold-pack', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SSSCRL';
UPDATE product 
SET 
    name = 'Greatcare Needle Luer Adapter', 
    slug = 'greatcare-needle-luer-adapter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QWLYWB';
UPDATE product 
SET 
    name = 'Greatcare Disposable Nasal Biliary Drainage Catheter', 
    slug = 'greatcare-disposable-nasal-biliary-drainage-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3DW827';
UPDATE product 
SET 
    name = 'Greatcare Closed Suction Catheter', 
    slug = 'greatcare-closed-suction-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6TG2AK';
UPDATE product 
SET 
    name = 'Greatcare Coldlight Shadowless Operating Lamp With 5 Reflectors', 
    slug = 'greatcare-coldlight-shadowless-operating-lamp-with-5-reflectors', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7R6XJ0';
UPDATE product 
SET 
    name = 'Greatcare Gloves', 
    slug = 'greatcare-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BSJXG4';
UPDATE product 
SET 
    name = 'Greatcare Disposable Puncture Set For Local Anesthesia', 
    slug = 'greatcare-disposable-puncture-set-for-local-anesthesia', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-N08ZFJ';
UPDATE product 
SET 
    name = 'Greatcare Sterile Microinjector Syringe', 
    slug = 'greatcare-sterile-microinjector-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-5SV5O9';
UPDATE product 
SET 
    name = 'Greatcare Nose Clip', 
    slug = 'greatcare-nose-clip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-K8Z6RR';
UPDATE product 
SET 
    name = 'Greatcare Disposable Infusion Bag For Parenteral Nutrition', 
    slug = 'greatcare-disposable-infusion-bag-for-parenteral-nutrition', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DSLJG1';
UPDATE product 
SET 
    name = 'Greatcare Eye Cold Pack', 
    slug = 'greatcare-eye-cold-pack', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ALFYWA';
UPDATE product 
SET 
    name = 'Greatcare Endotracheal Tube Holder', 
    slug = 'greatcare-endotracheal-tube-holder', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-D45ZVB';
UPDATE product 
SET 
    name = 'Greatcare Insulin Syringe', 
    slug = 'greatcare-insulin-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2UK8BI';
UPDATE product 
SET 
    name = 'Greatcare Infusion Connector Protector', 
    slug = 'greatcare-infusion-connector-protector', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QFLTZA';
UPDATE product 
SET 
    name = 'Greatcare Pediatric Urine Collector', 
    slug = 'greatcare-pediatric-urine-collector', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QY77KY';
UPDATE product 
SET 
    name = 'Greatcare Cover Glass', 
    slug = 'greatcare-cover-glass', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CVL4B9';
UPDATE product 
SET 
    name = 'Greatcare Nasal Splint With Airway', 
    slug = 'greatcare-nasal-splint-with-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-X4OXLR';
UPDATE product 
SET 
    name = 'Greatcare Urine Drainage Bag', 
    slug = 'greatcare-urine-drainage-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-G5CDPV';
UPDATE product 
SET 
    name = 'Greatcare Feces Container', 
    slug = 'greatcare-feces-container', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DAUOIA';
UPDATE product 
SET 
    name = 'Greatcare Mask', 
    slug = 'greatcare-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Q1HXON';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Mask', 
    slug = 'greatcare-tracheostomy-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HHMR9T';
UPDATE product 
SET 
    name = 'Greatcare Combined Spinal And Eqidural Anaesthesia Kit', 
    slug = 'greatcare-combined-spinal-and-eqidural-anaesthesia-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OZZLFH';
UPDATE product 
SET 
    name = 'Greatcare Cotton Bandages', 
    slug = 'greatcare-cotton-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-504UOZ';
UPDATE product 
SET 
    name = 'Greatcare Aero Chamber With Mask', 
    slug = 'greatcare-aero-chamber-with-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TR36OW';
UPDATE product 
SET 
    name = 'Greatcare Heparin Cap', 
    slug = 'greatcare-heparin-cap', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9QWQH4';
UPDATE product 
SET 
    name = 'Greatcare Disposable Blood Lines', 
    slug = 'greatcare-disposable-blood-lines', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AVASCF';
UPDATE product 
SET 
    name = 'Greatcare Enteral Feeding Pump Set', 
    slug = 'greatcare-enteral-feeding-pump-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MQ0187';
UPDATE product 
SET 
    name = 'Greatcare Wound Dressing Tray', 
    slug = 'greatcare-wound-dressing-tray', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WHJ4Y3';
UPDATE product 
SET 
    name = 'Greatcare Povidone Iodine Swab', 
    slug = 'greatcare-povidone-iodine-swab', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9PFAD7';
UPDATE product 
SET 
    name = 'Greatcare I.v Dressing', 
    slug = 'greatcare-iv-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JCM2AJ';
UPDATE product 
SET 
    name = 'Greatcare Umbilical Cord Clamp', 
    slug = 'greatcare-umbilical-cord-clamp', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TNTC2U';
UPDATE product 
SET 
    name = 'Greatcare Aluminum Ambulance Stretcher', 
    slug = 'greatcare-aluminum-ambulance-stretcher', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3DQ0S0';
UPDATE product 
SET 
    name = 'Greatcare Veritical Cold Light Operation Lamp With 4 Reflectors', 
    slug = 'greatcare-veritical-cold-light-operation-lamp-with-4-reflectors', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OT4NOH';
UPDATE product 
SET 
    name = 'Greatcare Nail Brush', 
    slug = 'greatcare-nail-brush', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SCUJHB';
UPDATE product 
SET 
    name = 'Greatcare Dust Mask', 
    slug = 'greatcare-dust-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZZ9CTM';
UPDATE product 
SET 
    name = 'Greatcare Anesthesia Circuit Kit', 
    slug = 'greatcare-anesthesia-circuit-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CPJCOH';
UPDATE product 
SET 
    name = 'Greatcare Clip Caps', 
    slug = 'greatcare-clip-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VO6JOT';
UPDATE product 
SET 
    name = 'Greatcare Ice Bag', 
    slug = 'greatcare-ice-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LO85AZ';
UPDATE product 
SET 
    name = 'Greatcare I.v Catheter', 
    slug = 'greatcare-iv-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ISYW56';
UPDATE product 
SET 
    name = 'Greatcare Red Rubber Catheter', 
    slug = 'greatcare-red-rubber-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LCT2W7';
UPDATE product 
SET 
    name = 'Greatcare Disposable Epidural Needle', 
    slug = 'greatcare-disposable-epidural-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PSE5ZK';
UPDATE product 
SET 
    name = 'Greatcare Elastic Tube Bandage', 
    slug = 'greatcare-elastic-tube-bandage', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BNXWXI';
UPDATE product 
SET 
    name = 'Greatcare Disposable Ear Speculum', 
    slug = 'greatcare-disposable-ear-speculum', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CKFPVX';
UPDATE product 
SET 
    name = 'Greatcare Surgical Gown', 
    slug = 'greatcare-surgical-gown', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OH175S';
UPDATE product 
SET 
    name = 'Greatcare Cotton Wow Gauze Bandages', 
    slug = 'greatcare-cotton-wow-gauze-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YHGR34';
UPDATE product 
SET 
    name = 'Greatcare Suture Removal Kit', 
    slug = 'greatcare-suture-removal-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RFG5P8';
UPDATE product 
SET 
    name = 'Greatcare Povidone Iodine Prep Pad', 
    slug = 'greatcare-povidone-iodine-prep-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IZC46V';
UPDATE product 
SET 
    name = 'Greatcare Yankauer Handle', 
    slug = 'greatcare-yankauer-handle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FUP11J';
UPDATE product 
SET 
    name = 'Greatcare Disposable Urological Hydrophilic Guidewire', 
    slug = 'greatcare-disposable-urological-hydrophilic-guidewire', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0PIPW5';
UPDATE product 
SET 
    name = 'Greatcare Drainage Tube', 
    slug = 'greatcare-drainage-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-81EQHX';
UPDATE product 
SET 
    name = 'Greatcare Mini Hydrophilic Intermittent Catheter', 
    slug = 'greatcare-mini-hydrophilic-intermittent-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-M78QEG';
UPDATE product 
SET 
    name = 'Greatcare Suction Connecting Tube', 
    slug = 'greatcare-suction-connecting-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UP82MX';
UPDATE product 
SET 
    name = 'Greatcare Lab Coat', 
    slug = 'greatcare-lab-coat', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-5NH4PO';
UPDATE product 
SET 
    name = 'Greatcare Sharps Container', 
    slug = 'greatcare-sharps-container', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-47YZXD';
UPDATE product 
SET 
    name = 'Greatcare Double Folding Stretcher', 
    slug = 'greatcare-double-folding-stretcher', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TNYL1P';
UPDATE product 
SET 
    name = 'Greatcare Disposable Needle', 
    slug = 'greatcare-disposable-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-NSNJVI';
UPDATE product 
SET 
    name = 'Greatcare Gloves', 
    slug = 'greatcare-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-R9CY0Y';
UPDATE product 
SET 
    name = 'Greatcare Stainless Examining Bed', 
    slug = 'greatcare-stainless-examining-bed', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-O2Q89W';
UPDATE product 
SET 
    name = 'Greatcare Blood Collection Needles(multi-sample)', 
    slug = 'greatcare-blood-collection-needlesmulti-sample', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XRQ0Z7';
UPDATE product 
SET 
    name = 'Greatcare Extension Line', 
    slug = 'greatcare-extension-line', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LZDUY1';
UPDATE product 
SET 
    name = 'Greatcare Luer Lock Connector', 
    slug = 'greatcare-luer-lock-connector', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-26AJ4B';
UPDATE product 
SET 
    name = 'Greatcare Lifting Pole', 
    slug = 'greatcare-lifting-pole', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TPCM5E';
UPDATE product 
SET 
    name = 'Greatcare Urine Container', 
    slug = 'greatcare-urine-container', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-J0BZ6H';
UPDATE product 
SET 
    name = 'Greatcare Percutaneous Dilation Tracheostomy Tube', 
    slug = 'greatcare-percutaneous-dilation-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T9USJX';
UPDATE product 
SET 
    name = 'Greatcare Arterial Cannula', 
    slug = 'greatcare-arterial-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JT0HEJ';
UPDATE product 
SET 
    name = 'Greatcare Respiratory Exerciser', 
    slug = 'greatcare-respiratory-exerciser', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BIM3V3';
UPDATE product 
SET 
    name = 'Fitone Single-use Sterile Powder Free Latex Examination Gloves', 
    slug = 'fitone-single-use-sterile-powder-free-latex-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-FOYACH';
UPDATE product 
SET 
    name = 'Fitone Anti Static Nitrile Latex Glove For Food Prep', 
    slug = 'fitone-anti-static-nitrile-latex-glove-for-food-prep', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-FOZ5I7';
UPDATE product 
SET 
    name = 'Fitone Single-use Sterile Powder Free Latex Examination Gloves', 
    slug = 'fitone-single-use-sterile-powder-free-latex-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-S5BEY8';
UPDATE product 
SET 
    name = 'Fitone Anti Static Nitrile Latex Glove For Food Prep', 
    slug = 'fitone-anti-static-nitrile-latex-glove-for-food-prep', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-OW12DB';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Adhesive Plus', 
    slug = 'pharmaplast-espuma-adhesive-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NO1C4R';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Non-adhesive & Fibrosol® Extra Non Adhesive', 
    slug = 'pharmaplast-fibrosol-non-adhesive-fibrosol-extra-non-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-N8595I';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip', 
    slug = 'pharmaplast-cure-aid-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8ABTX2';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmaband Cool', 
    slug = 'pharmaplast-pharmaband-cool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GW72ED';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 8', 
    slug = 'pharmaplast-non-woven-pads-8', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GGHJP6';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 1', 
    slug = 'pharmaplast-non-woven-pads-1', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TCF3KK';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmastrip®', 
    slug = 'pharmaplast-pharmastrip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WFPQQG';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore®', 
    slug = 'pharmaplast-pharmapore', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3FINL3';
UPDATE product 
SET 
    name = 'Pharmaplast Difa® Plus', 
    slug = 'pharmaplast-difa-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-91L29K';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Ag Adhesive Plus', 
    slug = 'pharmaplast-espuma-ag-adhesive-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NRSJ4H';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Carbon', 
    slug = 'pharmaplast-pharma-algi-f-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-W0IL2O';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 6', 
    slug = 'pharmaplast-non-woven-pads-6', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YK2V97';
UPDATE product 
SET 
    name = 'Pharmaplast Bunion Shield', 
    slug = 'pharmaplast-bunion-shield', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JWNQ2Y';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Friction Free', 
    slug = 'pharmaplast-cure-aid-friction-free', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-96G7O8';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Iv', 
    slug = 'pharmaplast-pharma-algi-f-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-67899Y';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacool', 
    slug = 'pharmaplast-pharmacool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NUWQN9';
UPDATE product 
SET 
    name = 'Pharmaplast Bunion Shield With Toe Separator Plus', 
    slug = 'pharmaplast-bunion-shield-with-toe-separator-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-A2U34A';
UPDATE product 
SET 
    name = 'Pharmaplast Hot And Cold Pack', 
    slug = 'pharmaplast-hot-and-cold-pack', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-EIEEPP';
UPDATE product 
SET 
    name = 'Pharmaplast First Aid Large Kit', 
    slug = 'pharmaplast-first-aid-large-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FDNKR4';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle', 
    slug = 'pharmaplast-espuma-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BZSN1I';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Callus Removal Discs', 
    slug = 'pharmaplast-cure-aid-callus-removal-discs', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-I5JM8Z';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma®ag Sealed Edges', 
    slug = 'pharmaplast-espumaag-sealed-edges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-E9W2B2';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Silver Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-silver-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GZSW0E';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Eye Pad', 
    slug = 'pharmaplast-cure-aid-eye-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JBQDOR';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Iv Adhesive', 
    slug = 'pharmaplast-vilowond-povi-iv-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8A5VLB';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Ag Carbon', 
    slug = 'pharmaplast-vilowond-ag-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-190UCW';
UPDATE product 
SET 
    name = 'Pharmaplast Cavidagel®', 
    slug = 'pharmaplast-cavidagel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZYE57M';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 7', 
    slug = 'pharmaplast-non-woven-pads-7', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4VJ9R2';
UPDATE product 
SET 
    name = 'Pharmaplast Heat Seal', 
    slug = 'pharmaplast-heat-seal', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ROZFXV';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Cotton', 
    slug = 'pharmaplast-cure-aid-cotton', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-80OT5Q';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu I.v Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-pu-iv-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-36UW9W';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmatull®', 
    slug = 'pharmaplast-pharmatull', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-U1OX4V';
UPDATE product 
SET 
    name = 'Pharmaplast Tubifix', 
    slug = 'pharmaplast-tubifix', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-C716V3';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Sheer', 
    slug = 'pharmaplast-cure-aid-sheer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-L4T3B7';
UPDATE product 
SET 
    name = 'Pharmaplast Folded Cup Mask', 
    slug = 'pharmaplast-folded-cup-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IC4XSK';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Ag Plus', 
    slug = 'pharmaplast-vilowond-ag-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-78D6EY';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Adhesive Ultra', 
    slug = 'pharmaplast-pharma-algi-f-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WEWCK2';
UPDATE product 
SET 
    name = 'Pharmaplast Exsorb®', 
    slug = 'pharmaplast-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-1AEWEZ';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive Film F S & Fibrosol® Extra Adhesive Film F S', 
    slug = 'pharmaplast-fibrosol-adhesive-film-f-s-fibrosol-extra-adhesive-film-f-s', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8NW0NU';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Deep Cleansing Pore Strips', 
    slug = 'pharmaplast-biosecrets-deep-cleansing-pore-strips', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AK5AYZ';
UPDATE product 
SET 
    name = 'Pharmaplast Silotull® & Silotull® One', 
    slug = 'pharmaplast-silotull-silotull-one', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-E8NGDF';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn Adhesive', 
    slug = 'pharmaplast-aluburn-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JDNRPY';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Mosquito Repellent', 
    slug = 'pharmaplast-cure-aid-mosquito-repellent', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-SRRAME';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Adhesive Ultra', 
    slug = 'pharmaplast-vilowond-povi-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ES2T6R';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Iv Film Frame Style', 
    slug = 'pharmaplast-pharma-algi-f-iv-film-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-UUXT6U';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Nose Plaster', 
    slug = 'pharmaplast-cure-aid-nose-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LUKTLG';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Lipo', 
    slug = 'pharmaplast-cure-aid-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RAIWOQ';
UPDATE product 
SET 
    name = 'Pharmaplast Silicone Paper', 
    slug = 'pharmaplast-silicone-paper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7D8HZL';
UPDATE product 
SET 
    name = 'Pharmaplast Plastra', 
    slug = 'pharmaplast-plastra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AJWHV1';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Algi', 
    slug = 'pharmaplast-cure-aid-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-J5EL46';
UPDATE product 
SET 
    name = 'Pharmaplast Neurosurgery', 
    slug = 'pharmaplast-neurosurgery', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JAWI7T';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Adhesive Bandages', 
    slug = 'pharmaplast-fibrosol-ag-adhesive-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OZWIJV';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn I.v. Film', 
    slug = 'pharmaplast-aluburn-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8YFJPO';
UPDATE product 
SET 
    name = 'Pharmaplast Difa Iv ® Chg Catheter Securement', 
    slug = 'pharmaplast-difa-iv-chg-catheter-securement', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CF0EDJ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Gentle', 
    slug = 'pharmaplast-cure-aid-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ND1QJA';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmastrip® Fabric', 
    slug = 'pharmaplast-pharmastrip-fabric', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WN4UJM';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Washproof', 
    slug = 'pharmaplast-cure-aid-washproof', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-F02C21';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Iv & Fibrosol® Extra Iv', 
    slug = 'pharmaplast-fibrosol-iv-fibrosol-extra-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XCSDPP';
UPDATE product 
SET 
    name = 'Pharmaplast Toe Spacers', 
    slug = 'pharmaplast-toe-spacers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9TS3HD';
UPDATE product 
SET 
    name = 'Pharmaplast Gauza & Gauza Plus', 
    slug = 'pharmaplast-gauza-gauza-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-297E8T';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® I.v Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-iv-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NRKQF0';
UPDATE product 
SET 
    name = 'Pharmaplast Flexagrip™', 
    slug = 'pharmaplast-flexagriptm', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-B5RSO9';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Lite', 
    slug = 'pharmaplast-espuma-gentle-lite', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TJZQCP';
UPDATE product 
SET 
    name = 'Pharmaplast Alginates Fibers', 
    slug = 'pharmaplast-alginates-fibers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TVBH9K';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn Removal Disc', 
    slug = 'pharmaplast-cure-aid-corn-removal-disc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IG330M';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi®f Silver Iv', 
    slug = 'pharmaplast-pharma-algif-silver-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-I8FXPI';
UPDATE product 
SET 
    name = 'Pharmaplast Green Zipper First Aid Kit', 
    slug = 'pharmaplast-green-zipper-first-aid-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-D9JSIQ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Exsorb Ag', 
    slug = 'pharmaplast-cure-aid-dressing-strip-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-68RVQZ';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive Film & Fibrosol® Extra Adhesive Film', 
    slug = 'pharmaplast-fibrosol-adhesive-film-fibrosol-extra-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0TKQ4I';
UPDATE product 
SET 
    name = 'Pharmaplast Vendapress', 
    slug = 'pharmaplast-vendapress', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HXIG8B';
UPDATE product 
SET 
    name = 'Pharmaplast Shoe Strap Grip', 
    slug = 'pharmaplast-shoe-strap-grip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KVZJZK';
UPDATE product 
SET 
    name = 'Pharmaplast Heat Up Gel Patch Hot', 
    slug = 'pharmaplast-heat-up-gel-patch-hot', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-J5567U';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Iv Silver', 
    slug = 'pharmaplast-pharmapore-iv-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8F30UH';
UPDATE product 
SET 
    name = 'Pharmaplast Exsorb® Algi', 
    slug = 'pharmaplast-exsorb-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-R7YGOZ';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Foam Basic & Fibrosol® Extra Foam Basic', 
    slug = 'pharmaplast-fibrosol-foam-basic-fibrosol-extra-foam-basic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-EPC1NO';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Adhesive', 
    slug = 'pharmaplast-espuma-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QNG6O5';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Nonwoven', 
    slug = 'pharmaplast-vilowond-nonwoven', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PCG9FK';
UPDATE product 
SET 
    name = 'Pharmaplast Test', 
    slug = 'pharmaplast-test', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7IESIJ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure -aid® Exsorb®', 
    slug = 'pharmaplast-cure-aid-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FSXXFE';
UPDATE product 
SET 
    name = 'Pharmaplast Chlorhexidine Swabs', 
    slug = 'pharmaplast-chlorhexidine-swabs', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XHQ1KN';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Iv & Fibrosol® Ag Extra Iv', 
    slug = 'pharmaplast-fibrosol-ag-iv-fibrosol-ag-extra-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-L3SDLZ';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Ultra Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-ultra-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-V18RMV';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Xtra Comfort', 
    slug = 'pharmaplast-espuma-gentle-xtra-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KDHU53';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll® Ag Comfort', 
    slug = 'pharmaplast-pharmacoll-ag-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-UJ9MQW';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Dressing Strip', 
    slug = 'pharmaplast-fibrosol-ag-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8YYEYS';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma®ag C Sealed Edges', 
    slug = 'pharmaplast-espumaag-c-sealed-edges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WJ6WKD';
UPDATE product 
SET 
    name = 'Pharmaplast Cold Seal', 
    slug = 'pharmaplast-cold-seal', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2DLGVI';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Bamboo', 
    slug = 'pharmaplast-cure-aid-bamboo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6HPCDQ';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Gauze', 
    slug = 'pharmaplast-vilowond-gauze', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-A6OB2L';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn Adhesive Film Frame Style', 
    slug = 'pharmaplast-aluburn-adhesive-film-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DF0GA0';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Foam Basic & Fibrosol® Ag Extra Foam Basic', 
    slug = 'pharmaplast-fibrosol-ag-foam-basic-fibrosol-ag-extra-foam-basic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-VXZ657';
UPDATE product 
SET 
    name = 'Pharmaplast Red Small Zipper Kit', 
    slug = 'pharmaplast-red-small-zipper-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2B3TEV';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-SQNB0T';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi®f', 
    slug = 'pharmaplast-pharma-algif', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-C2X1U8';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Urostomy One-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-urostomy-one-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-S6L9BI';
UPDATE product 
SET 
    name = 'Pharmaplast Silotac', 
    slug = 'pharmaplast-silotac', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JJFJFZ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blister Mixed Plasters', 
    slug = 'pharmaplast-cure-aid-blister-mixed-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TRU9NI';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Ag Xtra Comfort', 
    slug = 'pharmaplast-espuma-gentle-ag-xtra-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4T56L3';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmatull Plus®', 
    slug = 'pharmaplast-pharmatull-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YF4K2J';
UPDATE product 
SET 
    name = 'Pharmaplast Incifilm® Iodine', 
    slug = 'pharmaplast-incifilm-iodine', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-VV83Z0';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-jelly Net Silver', 
    slug = 'pharmaplast-pharma-jelly-net-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-H8A0D2';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Non Adhesive & Fibrosol® Ag Extra Non Adhesive', 
    slug = 'pharmaplast-fibrosol-ag-non-adhesive-fibrosol-ag-extra-non-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5RLHZL';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmaband', 
    slug = 'pharmaplast-pharmaband', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-1ZAKHG';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll® Ag', 
    slug = 'pharmaplast-pharmacoll-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8MBCTF';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blue Metal Detectable Plasters', 
    slug = 'pharmaplast-cure-aid-blue-metal-detectable-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HBZHYD';
UPDATE product 
SET 
    name = 'Pharmaplast Cavidagel® Burn Dressing', 
    slug = 'pharmaplast-cavidagel-burn-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-B8258E';
UPDATE product 
SET 
    name = 'Pharmaplast First Aid X-large Kit', 
    slug = 'pharmaplast-first-aid-x-large-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-E0Q91M';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll® Comfort Plus', 
    slug = 'pharmaplast-pharmacoll-comfort-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-L1U83M';
UPDATE product 
SET 
    name = 'Pharmaplast Fevogel', 
    slug = 'pharmaplast-fevogel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YRKA8V';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Ag', 
    slug = 'pharmaplast-vilowond-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RETC6I';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore ® Ultra Exsorb', 
    slug = 'pharmaplast-pharmapore-ultra-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NPIQC5';
UPDATE product 
SET 
    name = 'Pharmaplast Pu Films', 
    slug = 'pharmaplast-pu-films', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-SWABY4';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Elastic Finger Plaster', 
    slug = 'pharmaplast-cure-aid-elastic-finger-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-S9K5QC';
UPDATE product 
SET 
    name = 'Pharmaplast Synocast', 
    slug = 'pharmaplast-synocast', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JJ0EQ1';
UPDATE product 
SET 
    name = 'Pharmaplast Super Healing Kit', 
    slug = 'pharmaplast-super-healing-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WK1Y5J';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® X-ray Detectable Plasters', 
    slug = 'pharmaplast-cure-aid-x-ray-detectable-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-W0LWWU';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Ag', 
    slug = 'pharmaplast-pharmapore-pu-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IOKH7O';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Elastic', 
    slug = 'pharmaplast-cure-aid-elastic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5PZ28W';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip', 
    slug = 'pharmaplast-cure-aid-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-EY5YP1';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmagel Comfort', 
    slug = 'pharmaplast-pharmagel-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XNLHK7';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Iv Algi', 
    slug = 'pharmaplast-pharmapore-iv-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QR2NEC';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Clear', 
    slug = 'pharmaplast-cure-aid-clear', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-VRLSDM';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Wet Wipes', 
    slug = 'pharmaplast-biosecrets-wet-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IF6QYM';
UPDATE product 
SET 
    name = 'Pharmaplast Orthopedics', 
    slug = 'pharmaplast-orthopedics', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-J7XCCT';
UPDATE product 
SET 
    name = 'Pharmaplast Kemagel® Conductive', 
    slug = 'pharmaplast-kemagel-conductive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-480PSR';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive & Fibrosol® Extra Adhesive', 
    slug = 'pharmaplast-fibrosol-adhesive-fibrosol-extra-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-1SPRIM';
UPDATE product 
SET 
    name = 'Pharmaplast Heat Up Gel Patch Cool', 
    slug = 'pharmaplast-heat-up-gel-patch-cool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YXD3B2';
UPDATE product 
SET 
    name = 'Pharmaplast Toe Separators', 
    slug = 'pharmaplast-toe-separators', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QP1AMP';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Foam Gentle & Fibrosol® Extra Foam Gentle', 
    slug = 'pharmaplast-fibrosol-foam-gentle-fibrosol-extra-foam-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7LYFJG';
UPDATE product 
SET 
    name = 'Pharmaplast Elastic Plaster', 
    slug = 'pharmaplast-elastic-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0FE9ET';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® I.v. Dressings', 
    slug = 'pharmaplast-absoclear-iv-dressings', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-1LDWQC';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Non-adhesive', 
    slug = 'pharmaplast-espuma-non-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-W9AQHK';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmaband Skin Traction Kit', 
    slug = 'pharmaplast-pharmaband-skin-traction-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3BZQZP';
UPDATE product 
SET 
    name = 'Pharmaplast Linocare', 
    slug = 'pharmaplast-linocare', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YQYMRR';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Breast Pad', 
    slug = 'pharmaplast-cure-aid-breast-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-F94JL0';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Adhesive Film Frame Style', 
    slug = 'pharmaplast-pharma-algi-f-adhesive-film-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QS13KV';
UPDATE product 
SET 
    name = 'Pharmaplast Children Kit', 
    slug = 'pharmaplast-children-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-010INA';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive Bandages', 
    slug = 'pharmaplast-fibrosol-adhesive-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-V9PT61';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma – Swab', 
    slug = 'pharmaplast-pharma-swab', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TLAGZ3';
UPDATE product 
SET 
    name = 'Pharmaplast Product Test', 
    slug = 'pharmaplast-product-test', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ORLSTY';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Make-up Remover Wipes', 
    slug = 'pharmaplast-biosecrets-make-up-remover-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XHOXWL';
UPDATE product 
SET 
    name = 'Pharmaplast Kemaserum', 
    slug = 'pharmaplast-kemaserum', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6GK00U';
UPDATE product 
SET 
    name = 'Pharmaplast Kemagel® Silicone', 
    slug = 'pharmaplast-kemagel-silicone', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-REEVVA';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Iv Film', 
    slug = 'pharmaplast-pharma-algi-f-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-I5ZI8I';
UPDATE product 
SET 
    name = 'Pharmaplast Fish Style Mask', 
    slug = 'pharmaplast-fish-style-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RHPML9';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Iv Gentle', 
    slug = 'pharmaplast-pharmapore-iv-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7SJ45G';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Iv Exsorb', 
    slug = 'pharmaplast-pharmapore-pu-iv-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FKZ1PM';
UPDATE product 
SET 
    name = 'Pharmaplast Metatarsal Pad', 
    slug = 'pharmaplast-metatarsal-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DHIVB4';
UPDATE product 
SET 
    name = 'Pharmaplast Cavidagel® Emergency Burn Gel', 
    slug = 'pharmaplast-cavidagel-emergency-burn-gel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DC6USM';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Silver', 
    slug = 'pharmaplast-cure-aid-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-UDTF17';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 1', 
    slug = 'pharmaplast-non-woven-pads-1', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KUW17M';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Otc', 
    slug = 'pharmaplast-fibrosol-otc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-V5J8OX';
UPDATE product 
SET 
    name = 'Pharmaplast Obstetrics', 
    slug = 'pharmaplast-obstetrics', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6HOE95';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Adhesive Film Frame Style', 
    slug = 'pharmaplast-vilowond-povi-adhesive-film-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QTMYRD';
UPDATE product 
SET 
    name = 'Pharmaplast Surgical Face Mask', 
    slug = 'pharmaplast-surgical-face-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Z32FCE';
UPDATE product 
SET 
    name = 'Pharmaplast Blue Zipper Kit', 
    slug = 'pharmaplast-blue-zipper-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZKI2W4';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn Adhesive Film', 
    slug = 'pharmaplast-aluburn-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-VU2ATC';
UPDATE product 
SET 
    name = 'Pharmaplast Gynecology', 
    slug = 'pharmaplast-gynecology', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HVB67Y';
UPDATE product 
SET 
    name = 'Pharmaplast Cup Mask', 
    slug = 'pharmaplast-cup-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9ACQPJ';
UPDATE product 
SET 
    name = 'Pharmaplast Germifree®', 
    slug = 'pharmaplast-germifree', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9CWCJX';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Algi', 
    slug = 'pharmaplast-cure-aid-dressing-strip-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BFDYLN';
UPDATE product 
SET 
    name = 'Pharmaplast Heel Cushion', 
    slug = 'pharmaplast-heel-cushion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-76PGDV';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Exsorb', 
    slug = 'pharmaplast-cure-aid-dressing-strip-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IFA746';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Gentle', 
    slug = 'pharmaplast-pharmapore-pu-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HFIVMN';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Sensitive', 
    slug = 'pharmaplast-cure-aid-sensitive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YBLPBQ';
UPDATE product 
SET 
    name = 'Pharmaplast Insola', 
    slug = 'pharmaplast-insola', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2X2NB5';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Adheisve', 
    slug = 'pharmaplast-pharma-algi-f-adheisve', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-54FNY4';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Carbon Adhesive', 
    slug = 'pharmaplast-pharma-algi-f-carbon-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BDYKQ4';
UPDATE product 
SET 
    name = 'Pharmaplast Silicone Paper', 
    slug = 'pharmaplast-silicone-paper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2JT6HD';
UPDATE product 
SET 
    name = 'Pharmaplast Non-surgical Isolation Gowns', 
    slug = 'pharmaplast-non-surgical-isolation-gowns', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-1VRDIC';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu I.v. Gentle Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-iv-gentle-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TT9AYY';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn Cushions', 
    slug = 'pharmaplast-cure-aid-corn-cushions', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QSO1KA';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Skin Barrier', 
    slug = 'pharmaplast-cure-aid-skin-barrier', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9QIHE4';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapad Carbon Silver', 
    slug = 'pharmaplast-pharmapad-carbon-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9TC7MU';
UPDATE product 
SET 
    name = 'Pharmaplast First Aid Kit – Din 13164', 
    slug = 'pharmaplast-first-aid-kit-din-13164', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CDSOAW';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Exsorb®', 
    slug = 'pharmaplast-pharmapore-pu-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-P5DRCY';
UPDATE product 
SET 
    name = 'Pharmaplast And Maxillofacial', 
    slug = 'pharmaplast-and-maxillofacial', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YVFHX5';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Gentle', 
    slug = 'pharmaplast-cure-aid-dressing-strip-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LOO83T';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore®pu Iv Silver', 
    slug = 'pharmaplast-pharmaporepu-iv-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-P54YU8';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Bunion Plasters', 
    slug = 'pharmaplast-cure-aid-bunion-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XLEBD5';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Ag', 
    slug = 'pharmaplast-espuma-gentle-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6HMRLG';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Plus & Fibrosol® Ag Extra Plus', 
    slug = 'pharmaplast-fibrosol-ag-plus-fibrosol-ag-extra-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-95NBYG';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 5', 
    slug = 'pharmaplast-non-woven-pads-5', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PEUPFR';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Make-up Remover Wipes', 
    slug = 'pharmaplast-biosecrets-make-up-remover-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NZWDUZ';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 2', 
    slug = 'pharmaplast-non-woven-pads-2', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PWODNF';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-pop', 
    slug = 'pharmaplast-pharma-pop', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JP86MD';
UPDATE product 
SET 
    name = 'Pharmaplast Flexinet', 
    slug = 'pharmaplast-flexinet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-74EO7B';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Iv Film & Fibrosol® Extra Iv Film', 
    slug = 'pharmaplast-fibrosol-iv-film-fibrosol-extra-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-538YOG';
UPDATE product 
SET 
    name = 'Pharmaplast Alginates Fibers', 
    slug = 'pharmaplast-alginates-fibers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FRR0OZ';
UPDATE product 
SET 
    name = 'Pharmaplast Red Medium Zipper Kit', 
    slug = 'pharmaplast-red-medium-zipper-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RTFKC3';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® I.v Dressings Chg', 
    slug = 'pharmaplast-absoclear-iv-dressings-chg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-O1IK68';
UPDATE product 
SET 
    name = 'Pharmaplast Fibers', 
    slug = 'pharmaplast-fibers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-526QYV';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Carbon Adhesive Film', 
    slug = 'pharmaplast-pharma-algi-f-carbon-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OP0N4S';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blister Medium Plasters', 
    slug = 'pharmaplast-cure-aid-blister-medium-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3IF9BA';
UPDATE product 
SET 
    name = 'Pharmaplast Episera®', 
    slug = 'pharmaplast-episera', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QV7P0D';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Ileostomy Two-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-ileostomy-two-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BMDVRA';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 1', 
    slug = 'pharmaplast-non-woven-pads-1', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-R35284';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® Otc', 
    slug = 'pharmaplast-absoclear-otc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BC14ZE';
UPDATE product 
SET 
    name = 'Pharmaplast Alginates Fibers', 
    slug = 'pharmaplast-alginates-fibers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JT27IV';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Iv Algi', 
    slug = 'pharmaplast-pharmapore-pu-iv-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZUZ4A6';
UPDATE product 
SET 
    name = 'Pharmaplast Heel Grip', 
    slug = 'pharmaplast-heel-grip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-S09WRK';
UPDATE product 
SET 
    name = 'Pharmaplast Bunion Shield With Toe Separator', 
    slug = 'pharmaplast-bunion-shield-with-toe-separator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LP6U7P';
UPDATE product 
SET 
    name = 'Pharmaplast Mother Kit', 
    slug = 'pharmaplast-mother-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BK2QLO';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Silver', 
    slug = 'pharmaplast-cure-aid-dressing-strip-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OCWYHO';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 3', 
    slug = 'pharmaplast-non-woven-pads-3', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7QUXZ1';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn Treatment Kit', 
    slug = 'pharmaplast-cure-aid-corn-treatment-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-NOS2KK';
UPDATE product 
SET 
    name = 'Pharmaplast Non Woven Pads 4', 
    slug = 'pharmaplast-non-woven-pads-4', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZTBQBJ';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Adhesive Film', 
    slug = 'pharmaplast-vilowond-povi-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5Z9E5E';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Dressing Strip Elastic', 
    slug = 'pharmaplast-cure-aid-dressing-strip-elastic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7A1QFA';
UPDATE product 
SET 
    name = 'Pharmaplast Cavidagel® Ag', 
    slug = 'pharmaplast-cavidagel-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6K9ZM7';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Exsorb® Ag', 
    slug = 'pharmaplast-pharmapore-pu-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZOK1NC';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Silver Carbon', 
    slug = 'pharmaplast-pharma-algi-f-silver-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0W08R2';
UPDATE product 
SET 
    name = 'Pharmaplast Silomed', 
    slug = 'pharmaplast-silomed', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2X77RE';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma Algi® Ag', 
    slug = 'pharmaplast-pharma-algi-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4V1FP4';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Adhesive Film', 
    slug = 'pharmaplast-pharma-algi-f-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0YP6RC';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Kids', 
    slug = 'pharmaplast-cure-aid-kids', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-F4U3V5';
UPDATE product 
SET 
    name = 'Pharmaplast Vendapress Foam', 
    slug = 'pharmaplast-vendapress-foam', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-32I5TL';
UPDATE product 
SET 
    name = 'Pharmaplast Duckbill Mask', 
    slug = 'pharmaplast-duckbill-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-R4X7JL';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® C Lipo', 
    slug = 'pharmaplast-espuma-c-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JVN3JJ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Scar Reduction Patch', 
    slug = 'pharmaplast-cure-aid-scar-reduction-patch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HLFY5R';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Adhesive', 
    slug = 'pharmaplast-vilowond-povi-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5CN35N';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma – Undercast Pad', 
    slug = 'pharmaplast-pharma-undercast-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OLTBM1';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets Baby Wipes', 
    slug = 'pharmaplast-biosecrets-baby-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-D9IOYY';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Ag Adhesive', 
    slug = 'pharmaplast-espuma-ag-adhesive', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6L9EZH';
UPDATE product 
SET 
    name = 'Pharmaplast Hydrocolloids', 
    slug = 'pharmaplast-hydrocolloids', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WXY6NN';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Nose Plaster', 
    slug = 'pharmaplast-cure-aid-nose-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WU63N9';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmaband Skin Traction Kit', 
    slug = 'pharmaplast-pharmaband-skin-traction-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BFY40P';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn I.v.', 
    slug = 'pharmaplast-aluburn-iv', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6BJYC6';
UPDATE product 
SET 
    name = 'Pharmaplast Les Pansements Espuma® Ag Non-adhesive Ne Doivent Pas Être Appliqués Sur Des Plaies Atteignant Les Os Ou Les Muscles.', 
    slug = 'pharmaplast-les-pansements-espuma-ag-non-adhesive-ne-doivent-pas-etre-appliques-sur-des-plaies-atteignant-les-os-ou-les-muscles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-1N809C';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Lite Comfort Flex', 
    slug = 'pharmaplast-espuma-gentle-lite-comfort-flex', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-R8Z9PE';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Povi', 
    slug = 'pharmaplast-cure-aid-dressing-strip-povi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-X63DO0';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Exsorb Carbon Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-exsorb-carbon-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-O3RABS';
UPDATE product 
SET 
    name = 'Pharmaplast Cavicoll®', 
    slug = 'pharmaplast-cavicoll', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-16CT63';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Waterproof', 
    slug = 'pharmaplast-cure-aid-waterproof', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-C1CIMN';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Ag Carbon Plus', 
    slug = 'pharmaplast-vilowond-ag-carbon-plus', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FU46ZO';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Dressing Strip Washproof', 
    slug = 'pharmaplast-cure-aid-dressing-strip-washproof', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3J8J8D';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid Acne Patches & Cure-aid Cold Sore Patches', 
    slug = 'pharmaplast-cure-aid-acne-patches-cure-aid-cold-sore-patches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ZQHW87';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Exsorb® Ag Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-exsorb-ag-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-ATSZIU';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmafix® Pu', 
    slug = 'pharmaplast-pharmafix-pu', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-EI50ZR';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Ultra Silver', 
    slug = 'pharmaplast-pharmapore-ultra-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9WMFRS';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn Adhesive Ultra', 
    slug = 'pharmaplast-aluburn-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-G4DWTZ';
UPDATE product 
SET 
    name = 'Pharmaplast Cushion Pads', 
    slug = 'pharmaplast-cushion-pads', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YB5HM2';
UPDATE product 
SET 
    name = 'Pharmaplast Difa® Ag With Exulock Technology', 
    slug = 'pharmaplast-difa-ag-with-exulock-technology', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-DZL6VW';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Nose Plaster', 
    slug = 'pharmaplast-cure-aid-nose-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-MX271Y';
UPDATE product 
SET 
    name = 'Pharmaplast Elementor #15923', 
    slug = 'pharmaplast-elementor-15923', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-T1QL74';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Transfer', 
    slug = 'pharmaplast-espuma-gentle-transfer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-LVJODF';
UPDATE product 
SET 
    name = 'Pharmaplast Cure -aid® Exsorb® Ag', 
    slug = 'pharmaplast-cure-aid-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9J94RE';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll®thin And Pharmacoll® Extra Thin', 
    slug = 'pharmaplast-pharmacollthin-and-pharmacoll-extra-thin', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7JXOHC';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma-vie Hydrocolloid Base Plate Disc', 
    slug = 'pharmaplast-stoma-vie-hydrocolloid-base-plate-disc', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-628UHL';
UPDATE product 
SET 
    name = 'Pharmaplast Exsorb® Ag', 
    slug = 'pharmaplast-exsorb-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AQIOUM';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Dressing Strip Lipo', 
    slug = 'pharmaplast-cure-aid-dressing-strip-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-H4QXCB';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu', 
    slug = 'pharmaplast-pharmapore-pu', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-M0NM39';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Gentle', 
    slug = 'pharmaplast-cure-aid-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-X0PWE1';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blue Metal & X-ray Detectable Dressing Strip', 
    slug = 'pharmaplast-cure-aid-blue-metal-x-ray-detectable-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-AKTZIS';
UPDATE product 
SET 
    name = 'Pharmaplast Benzalkonium Chloride Swabs', 
    slug = 'pharmaplast-benzalkonium-chloride-swabs', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-91CRWU';
UPDATE product 
SET 
    name = 'Pharmaplast Foams', 
    slug = 'pharmaplast-foams', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6IR1PB';
UPDATE product 
SET 
    name = 'Pharmaplast Kitchen Kit', 
    slug = 'pharmaplast-kitchen-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-68Y5V6';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll® Cushion', 
    slug = 'pharmaplast-pharmacoll-cushion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KQSXJD';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Povi Iv Adhesive Film', 
    slug = 'pharmaplast-vilowond-povi-iv-adhesive-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-UV4VUU';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets® Crack Care', 
    slug = 'pharmaplast-biosecrets-crack-care', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YINYZK';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets® Lanolin Ointment', 
    slug = 'pharmaplast-biosecrets-lanolin-ointment', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FLUY4X';
UPDATE product 
SET 
    name = 'Pharmaplast Plastic Boxes', 
    slug = 'pharmaplast-plastic-boxes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GJ02IM';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Callus Plasters', 
    slug = 'pharmaplast-cure-aid-callus-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-STZC0I';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma-vie Colostomy One-piece Closed Pouches', 
    slug = 'pharmaplast-stoma-vie-colostomy-one-piece-closed-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TIC5XJ';
UPDATE product 
SET 
    name = 'Pharmaplast Medical Paper', 
    slug = 'pharmaplast-medical-paper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6QFDSW';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Ileostomy One-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-ileostomy-one-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2JPFU1';
UPDATE product 
SET 
    name = 'Pharmaplast Unnaplast', 
    slug = 'pharmaplast-unnaplast', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-6OL738';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi ® F Carbon Adhesive Ultra', 
    slug = 'pharmaplast-pharma-algi-f-carbon-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BLY8M8';
UPDATE product 
SET 
    name = 'Pharmaplast Cardiothoracic', 
    slug = 'pharmaplast-cardiothoracic', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-RMQ9DA';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Foot Care Plasters', 
    slug = 'pharmaplast-cure-aid-foot-care-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-1F3L0L';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-H7C9G5';
UPDATE product 
SET 
    name = 'Pharmaplast Cardiovascular', 
    slug = 'pharmaplast-cardiovascular', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-978QMI';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Iv Exsorb', 
    slug = 'pharmaplast-pharmapore-iv-exsorb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PFA9ES';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Urostomy One-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-urostomy-one-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HL4ACS';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-jelly Net', 
    slug = 'pharmaplast-pharma-jelly-net', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-54T14E';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma®lipo', 
    slug = 'pharmaplast-espumalipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-EZF4Q4';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Dressing Strip', 
    slug = 'pharmaplast-fibrosol-dressing-strip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3UBXO4';
UPDATE product 
SET 
    name = 'Pharmaplast Vilowond® Lipo', 
    slug = 'pharmaplast-vilowond-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TXS1JR';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi®f Ag I.v Film', 
    slug = 'pharmaplast-pharma-algif-ag-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YEBC4J';
UPDATE product 
SET 
    name = 'Pharmaplast Toe Spreader', 
    slug = 'pharmaplast-toe-spreader', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-66VZEU';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma-algi® F Silver', 
    slug = 'pharmaplast-pharma-algi-f-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-281LRS';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Foam Gentle & Fibrosol® Ag Extra Foam Gentle', 
    slug = 'pharmaplast-fibrosol-ag-foam-gentle-fibrosol-ag-extra-foam-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-MDE5EV';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid®', 
    slug = 'pharmaplast-cure-aid', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-JJ65GR';
UPDATE product 
SET 
    name = 'Pharmaplast Linocare Cream', 
    slug = 'pharmaplast-linocare-cream', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-UZ1GN6';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Silver', 
    slug = 'pharmaplast-cure-aid-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2FH5BM';
UPDATE product 
SET 
    name = 'Pharmaplast Urology', 
    slug = 'pharmaplast-urology', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-PV7OVL';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Urostomy Two-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-urostomy-two-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FIS5Y0';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid®povi', 
    slug = 'pharmaplast-cure-aidpovi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-4KC6EV';
UPDATE product 
SET 
    name = 'Pharmaplast Spunlaced Non-woven', 
    slug = 'pharmaplast-spunlaced-non-woven', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-E2IGM7';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore ® Pu Exsorb Frame Style', 
    slug = 'pharmaplast-pharmapore-pu-exsorb-frame-style', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-Y2QRPH';
UPDATE product 
SET 
    name = 'Pharmaplast Aluburn', 
    slug = 'pharmaplast-aluburn', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-O4IXEA';
UPDATE product 
SET 
    name = 'Pharmaplast Protectfilm® Gentle', 
    slug = 'pharmaplast-protectfilm-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-SVKW3L';
UPDATE product 
SET 
    name = 'Pharmaplast Kemagel® Ag', 
    slug = 'pharmaplast-kemagel-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-7POO5V';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmagel Ag', 
    slug = 'pharmaplast-pharmagel-ag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-05KPY1';
UPDATE product 
SET 
    name = 'Pharmaplast Fevokool', 
    slug = 'pharmaplast-fevokool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-BOSFRC';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn', 
    slug = 'pharmaplast-cure-aid-corn', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QPXJO1';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma-vie Colostomy Two-piece Closed Pouch', 
    slug = 'pharmaplast-stoma-vie-colostomy-two-piece-closed-pouch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-0LH3RT';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Lipo', 
    slug = 'pharmaplast-cure-aid-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-CP3LQC';
UPDATE product 
SET 
    name = 'Pharmaplast Thermapatch', 
    slug = 'pharmaplast-thermapatch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-30AVKE';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn', 
    slug = 'pharmaplast-cure-aid-corn', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-SIF6NJ';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmacoll®', 
    slug = 'pharmaplast-pharmacoll', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GZHQKE';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Sealed Edges', 
    slug = 'pharmaplast-espuma-sealed-edges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-32ONX7';
UPDATE product 
SET 
    name = 'Pharmaplast Pharma Kt', 
    slug = 'pharmaplast-pharma-kt', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-MYAYLD';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Lite Comfort', 
    slug = 'pharmaplast-espuma-gentle-lite-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-HU1617';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® C Comfort Lipo', 
    slug = 'pharmaplast-espuma-c-comfort-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-93HKF6';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Ag Comfort', 
    slug = 'pharmaplast-espuma-gentle-ag-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-FROH96';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Iv Gentle', 
    slug = 'pharmaplast-pharmapore-pu-iv-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-VYQTN4';
UPDATE product 
SET 
    name = 'Pharmaplast Pe Films', 
    slug = 'pharmaplast-pe-films', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-VRWL62';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets® Lanolin Ointment', 
    slug = 'pharmaplast-biosecrets-lanolin-ointment', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-R83MZS';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid Acne Patches & Cure-aid Cold Sore Patches', 
    slug = 'pharmaplast-cure-aid-acne-patches-cure-aid-cold-sore-patches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-N85AQ2';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Ultra Exsorb Carbon', 
    slug = 'pharmaplast-pharmapore-ultra-exsorb-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-5I1A4K';
UPDATE product 
SET 
    name = 'Pharmaplast Solution', 
    slug = 'pharmaplast-solution', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WUSJ06';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Foot Care Plasters', 
    slug = 'pharmaplast-cure-aid-foot-care-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KSOH1F';
UPDATE product 
SET 
    name = 'Pharmaplast Kemagel®', 
    slug = 'pharmaplast-kemagel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OPFF2I';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Blue Metal Detectable Plasters', 
    slug = 'pharmaplast-cure-aid-blue-metal-detectable-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-3W2VL9';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore®ag', 
    slug = 'pharmaplast-pharmaporeag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-S2H3EN';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Pu Frame Style Gentle', 
    slug = 'pharmaplast-pharmapore-pu-frame-style-gentle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-9WB4CI';
UPDATE product 
SET 
    name = 'Pharmaplast Difa® Iodine', 
    slug = 'pharmaplast-difa-iodine', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-G777VC';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Ag Iv Film & Fibrosol® Ag Extra Iv Film', 
    slug = 'pharmaplast-fibrosol-ag-iv-film-fibrosol-ag-extra-iv-film', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-OV2OUZ';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapovi Swab', 
    slug = 'pharmaplast-pharmapovi-swab', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-GBXA4N';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmagel® Ag Comfort', 
    slug = 'pharmaplast-pharmagel-ag-comfort', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-44XVA4';
UPDATE product 
SET 
    name = 'Pharmaplast Alcohol-free Wipes', 
    slug = 'pharmaplast-alcohol-free-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-QFZIWU';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapad Silver', 
    slug = 'pharmaplast-pharmapad-silver', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-M9MJ7I';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma-vie Colostomy Two-piece Closed Pouch', 
    slug = 'pharmaplast-stoma-vie-colostomy-two-piece-closed-pouch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-52YL1K';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Comfort Lipo', 
    slug = 'pharmaplast-espuma-comfort-lipo', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-T7LDU4';
UPDATE product 
SET 
    name = 'Pharmaplast Salicol®', 
    slug = 'pharmaplast-salicol', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-KPI17P';
UPDATE product 
SET 
    name = 'Pharmaplast Toe & Finger Gel Protector', 
    slug = 'pharmaplast-toe-finger-gel-protector', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IVL2XU';
UPDATE product 
SET 
    name = 'Pharmaplast Fibrosol® Adhesive Ultra & Fibrosol® Extra Adhesive Ultra', 
    slug = 'pharmaplast-fibrosol-adhesive-ultra-fibrosol-extra-adhesive-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-T57KFI';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid Wart Removal Plaster', 
    slug = 'pharmaplast-cure-aid-wart-removal-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WRG4YJ';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Scar Reduction Patch', 
    slug = 'pharmaplast-cure-aid-scar-reduction-patch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-WABOJY';
UPDATE product 
SET 
    name = 'Pharmaplast Biosecrets® Antimicrobial Wipes', 
    slug = 'pharmaplast-biosecrets-antimicrobial-wipes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-M7CQJU';
UPDATE product 
SET 
    name = 'Pharmaplast Espuma® Gentle Xtra Comfort Flex', 
    slug = 'pharmaplast-espuma-gentle-xtra-comfort-flex', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2JXSO7';
UPDATE product 
SET 
    name = 'Pharmaplast General Surgery', 
    slug = 'pharmaplast-general-surgery', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-IJEX6R';
UPDATE product 
SET 
    name = 'Pharmaplast Stoma Vie Ileostomy Two-piece Drainable Pouches', 
    slug = 'pharmaplast-stoma-vie-ileostomy-two-piece-drainable-pouches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XG2LIU';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® Cushion Tracheostomy', 
    slug = 'pharmaplast-absoclear-cushion-tracheostomy', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-TZEFC4';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Ultra', 
    slug = 'pharmaplast-pharmapore-ultra', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-VN02OH';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Hydrogel Bandages', 
    slug = 'pharmaplast-cure-aid-hydrogel-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8EN2ZN';
UPDATE product 
SET 
    name = 'Pharmaplast Pharmapore® Exsorb Carbon', 
    slug = 'pharmaplast-pharmapore-exsorb-carbon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-YLLWKR';
UPDATE product 
SET 
    name = 'Pharmaplast Toe Hammer Cushion', 
    slug = 'pharmaplast-toe-hammer-cushion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-XB3JS5';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Wart Removal Plaster', 
    slug = 'pharmaplast-cure-aid-wart-removal-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-X3ZXKD';
UPDATE product 
SET 
    name = 'Pharmaplast Travel Kit', 
    slug = 'pharmaplast-travel-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-VJ2K59';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Corn Plasters', 
    slug = 'pharmaplast-cure-aid-corn-plasters', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-H4YA3T';
UPDATE product 
SET 
    name = 'Pharmaplast Overshoes / Overhead', 
    slug = 'pharmaplast-overshoes-overhead', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-J6IGR7';
UPDATE product 
SET 
    name = 'Pharmaplast Cure – Aid® Bite & Sting Relief Patches', 
    slug = 'pharmaplast-cure-aid-bite-sting-relief-patches', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-2Z9PZ7';
UPDATE product 
SET 
    name = 'Pharmaplast Absoclear® Cushion Rings', 
    slug = 'pharmaplast-absoclear-cushion-rings', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-8GI2FB';
UPDATE product 
SET 
    name = 'Pharmaplast Cure-aid® Algi', 
    slug = 'pharmaplast-cure-aid-algi', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'NEOPLAST / Pharmaplast'),
    category_id = (SELECT id FROM category WHERE slug = 'Pharmaplast')
WHERE sku = 'PHA-H3I3RE';
UPDATE product 
SET 
    name = 'Greatcare Wooden Tongue Depressor', 
    slug = 'greatcare-wooden-tongue-depressor', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2BUT1G';
UPDATE product 
SET 
    name = 'Greatcare Jet Nebulizer Set', 
    slug = 'greatcare-jet-nebulizer-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-L9VIP8';
UPDATE product 
SET 
    name = 'Greatcare Combined Spinal & Epidural Block', 
    slug = 'greatcare-combined-spinal-epidural-block', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4IEZ50';
UPDATE product 
SET 
    name = 'Greatcare Disposable Urine Bags', 
    slug = 'greatcare-disposable-urine-bags', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-A1WFDZ';
UPDATE product 
SET 
    name = 'Greatcare Hydrocolloid Wound Dressing', 
    slug = 'greatcare-hydrocolloid-wound-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TZJZR7';
UPDATE product 
SET 
    name = 'Greatcare Silicone Anesthesia Mask', 
    slug = 'greatcare-silicone-anesthesia-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KU922H';
UPDATE product 
SET 
    name = 'Greatcare Hot Water Bag', 
    slug = 'greatcare-hot-water-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BDVYRB';
UPDATE product 
SET 
    name = 'Greatcare Id Band', 
    slug = 'greatcare-id-band', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6569VT';
UPDATE product 
SET 
    name = 'Greatcare Buck Neurological Hammer', 
    slug = 'greatcare-buck-neurological-hammer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XY1BLD';
UPDATE product 
SET 
    name = 'Greatcare Disposable Biopsy Forceps', 
    slug = 'greatcare-disposable-biopsy-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RVUS6O';
UPDATE product 
SET 
    name = 'Greatcare Walking Stick', 
    slug = 'greatcare-walking-stick', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-K80M3V';
UPDATE product 
SET 
    name = 'Greatcare Folding Screen', 
    slug = 'greatcare-folding-screen', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6O16XY';
UPDATE product 
SET 
    name = 'Greatcare Disposable Pcnl Kit', 
    slug = 'greatcare-disposable-pcnl-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-38GYZR';
UPDATE product 
SET 
    name = 'Greatcare Stomach Tube', 
    slug = 'greatcare-stomach-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4DVN08';
UPDATE product 
SET 
    name = 'Greatcare Test Pin', 
    slug = 'greatcare-test-pin', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QIBEHQ';
UPDATE product 
SET 
    name = 'Greatcare Manual Resuscitator', 
    slug = 'greatcare-manual-resuscitator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9URB51';
UPDATE product 
SET 
    name = 'Greatcare Disposable Electrosurgical Pencil', 
    slug = 'greatcare-disposable-electrosurgical-pencil', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-N2W5M3';
UPDATE product 
SET 
    name = 'Greatcare Central Venous Catheter', 
    slug = 'greatcare-central-venous-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CICIMR';
UPDATE product 
SET 
    name = 'Greatcare Nebulizer Mask', 
    slug = 'greatcare-nebulizer-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OANR6E';
UPDATE product 
SET 
    name = 'Greatcare Foley Catheter', 
    slug = 'greatcare-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MZUHR7';
UPDATE product 
SET 
    name = 'Greatcare Dispense Holder For Vomit Bag', 
    slug = 'greatcare-dispense-holder-for-vomit-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VNAIPZ';
UPDATE product 
SET 
    name = 'Greatcare Hollow Fiber Hemodialyze', 
    slug = 'greatcare-hollow-fiber-hemodialyze', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QE1KAS';
UPDATE product 
SET 
    name = 'Greatcare Cold Light Operation Lamp (build-in Type, Tungsten Halogen Bulb)', 
    slug = 'greatcare-cold-light-operation-lamp-build-in-type-tungsten-halogen-bulb', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-83ABNQ';
UPDATE product 
SET 
    name = 'Greatcare Mobile Dining Table', 
    slug = 'greatcare-mobile-dining-table', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RJWBJB';
UPDATE product 
SET 
    name = 'Greatcare Irrigation Bag', 
    slug = 'greatcare-irrigation-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2C4WRN';
UPDATE product 
SET 
    name = 'Greatcare Disposable Ureteral Access Sheath', 
    slug = 'greatcare-disposable-ureteral-access-sheath', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DZM4VV';
UPDATE product 
SET 
    name = 'Greatcare Skin Marker', 
    slug = 'greatcare-skin-marker', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-90HLCS';
UPDATE product 
SET 
    name = 'Greatcare Micropore Surgical Tape', 
    slug = 'greatcare-micropore-surgical-tape', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KSW57R';
UPDATE product 
SET 
    name = 'Greatcare Endotracheal Tube (tape Type)', 
    slug = 'greatcare-endotracheal-tube-tape-type', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-S1IFG5';
UPDATE product 
SET 
    name = 'Greatcare Disposable Vaginal Speculum', 
    slug = 'greatcare-disposable-vaginal-speculum', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-D0VVL8';
UPDATE product 
SET 
    name = 'Greatcare Disposable Slipper', 
    slug = 'greatcare-disposable-slipper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UOIP5P';
UPDATE product 
SET 
    name = 'Greatcare Latex Tubing', 
    slug = 'greatcare-latex-tubing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FRNOJY';
UPDATE product 
SET 
    name = 'Greatcare Safety Scalp Vein Set', 
    slug = 'greatcare-safety-scalp-vein-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-93F7FL';
UPDATE product 
SET 
    name = 'Greatcare Queen Square Hammer', 
    slug = 'greatcare-queen-square-hammer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XOULW3';
UPDATE product 
SET 
    name = 'Greatcare Cotton Ball', 
    slug = 'greatcare-cotton-ball', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1DHFNV';
UPDATE product 
SET 
    name = 'Greatcare Nurse Watch', 
    slug = 'greatcare-nurse-watch', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DOQZRS';
UPDATE product 
SET 
    name = 'Greatcare Drainage Bag', 
    slug = 'greatcare-drainage-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XVKZF1';
UPDATE product 
SET 
    name = 'Greatcare Umbilical Catheter', 
    slug = 'greatcare-umbilical-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FRDLBT';
UPDATE product 
SET 
    name = 'Greatcare Pillow-shaped Absorbent Gauze Roll', 
    slug = 'greatcare-pillow-shaped-absorbent-gauze-roll', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2BEQFN';
UPDATE product 
SET 
    name = 'Greatcare Cervical Collar', 
    slug = 'greatcare-cervical-collar', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EXCSVJ';
UPDATE product 
SET 
    name = 'Greatcare Oxygen Inhaler', 
    slug = 'greatcare-oxygen-inhaler', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TK05TF';
UPDATE product 
SET 
    name = 'Greatcare Disposable Kidney Basin', 
    slug = 'greatcare-disposable-kidney-basin', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T8GPID';
UPDATE product 
SET 
    name = 'Greatcare High Flow Mask', 
    slug = 'greatcare-high-flow-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-P6BKJ5';
UPDATE product 
SET 
    name = 'Greatcare Face Shield', 
    slug = 'greatcare-face-shield', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YYT552';
UPDATE product 
SET 
    name = 'Greatcare Gauze Sponges', 
    slug = 'greatcare-gauze-sponges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7960ND';
UPDATE product 
SET 
    name = 'Greatcare Examination Sheets', 
    slug = 'greatcare-examination-sheets', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HL63NW';
UPDATE product 
SET 
    name = 'Greatcare Bed Pan', 
    slug = 'greatcare-bed-pan', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YY76AD';
UPDATE product 
SET 
    name = 'Greatcare Babinski Hammer', 
    slug = 'greatcare-babinski-hammer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6U6D6O';
UPDATE product 
SET 
    name = 'Greatcare Disposable Blood Transfusion Sets', 
    slug = 'greatcare-disposable-blood-transfusion-sets', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-A97SLE';
UPDATE product 
SET 
    name = 'Greatcare Wooden Cervical Scraper', 
    slug = 'greatcare-wooden-cervical-scraper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-V668UB';
UPDATE product 
SET 
    name = 'Greatcare Selvaged Cotton Gauze Bandages', 
    slug = 'greatcare-selvaged-cotton-gauze-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HM0S5D';
UPDATE product 
SET 
    name = 'Greatcare Easy Laryngeal Mask Airway', 
    slug = 'greatcare-easy-laryngeal-mask-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BHPC3Z';
UPDATE product 
SET 
    name = 'Greatcare Transparent Surgical Tape', 
    slug = 'greatcare-transparent-surgical-tape', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LHULAR';
UPDATE product 
SET 
    name = 'Greatcare Non-invasive Tibial Nerve Stimultion', 
    slug = 'greatcare-non-invasive-tibial-nerve-stimultion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4K7F7G';
UPDATE product 
SET 
    name = 'Greatcare Sponge Cleaning Stick', 
    slug = 'greatcare-sponge-cleaning-stick', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9S9H3Z';
UPDATE product 
SET 
    name = 'Greatcare Silk Surgical Tape', 
    slug = 'greatcare-silk-surgical-tape', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Q5DKEQ';
UPDATE product 
SET 
    name = 'Greatcare Dental Bids', 
    slug = 'greatcare-dental-bids', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-811G93';
UPDATE product 
SET 
    name = 'Greatcare Disposable Syringe', 
    slug = 'greatcare-disposable-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ARTGG0';
UPDATE product 
SET 
    name = 'Greatcare Malecot Catheter', 
    slug = 'greatcare-malecot-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-H71FOH';
UPDATE product 
SET 
    name = 'Greatcare Disinfecting Cap', 
    slug = 'greatcare-disinfecting-cap', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZXSS52';
UPDATE product 
SET 
    name = 'Greatcare Heart Hugger', 
    slug = 'greatcare-heart-hugger', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9N1EFE';
UPDATE product 
SET 
    name = 'Greatcare Scoop Stretcher', 
    slug = 'greatcare-scoop-stretcher', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-549V2Z';
UPDATE product 
SET 
    name = 'Greatcare Microscope Slides', 
    slug = 'greatcare-microscope-slides', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QDZWLX';
UPDATE product 
SET 
    name = 'Greatcare Disposable Apron', 
    slug = 'greatcare-disposable-apron', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VJHWOS';
UPDATE product 
SET 
    name = 'Greatcare Flow Regulator', 
    slug = 'greatcare-flow-regulator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-240USI';
UPDATE product 
SET 
    name = 'Greatcare Corrugated Anesthesia Circuit', 
    slug = 'greatcare-corrugated-anesthesia-circuit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-B2NB1G';
UPDATE product 
SET 
    name = 'Greatcare Stomach Tube 3 Way Double Balloon (latex)', 
    slug = 'greatcare-stomach-tube-3-way-double-balloon-latex', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6RD3TJ';
UPDATE product 
SET 
    name = 'Greatcare Oxygen Mask', 
    slug = 'greatcare-oxygen-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ERN6QK';
UPDATE product 
SET 
    name = 'Greatcare Opaque Syringe', 
    slug = 'greatcare-opaque-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BK9O2W';
UPDATE product 
SET 
    name = 'Greatcare Plastic Blood Lancet', 
    slug = 'greatcare-plastic-blood-lancet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IB7N4T';
UPDATE product 
SET 
    name = 'Greatcare Triple-lumen Silicone Foley Catheter With Mercier Tip', 
    slug = 'greatcare-triple-lumen-silicone-foley-catheter-with-mercier-tip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XNK2F0';
UPDATE product 
SET 
    name = 'Greatcare Lemon Glycerin Swabsticks', 
    slug = 'greatcare-lemon-glycerin-swabsticks', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-F2WWEB';
UPDATE product 
SET 
    name = 'Greatcare N95 Mask With Belts', 
    slug = 'greatcare-n95-mask-with-belts', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BPDFP9';
UPDATE product 
SET 
    name = 'Greatcare Aluminum Wheelchair', 
    slug = 'greatcare-aluminum-wheelchair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-01NT9T';
UPDATE product 
SET 
    name = 'Greatcare Urine Meter Drainage Bag', 
    slug = 'greatcare-urine-meter-drainage-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0LPN7E';
UPDATE product 
SET 
    name = 'Greatcare Cotton Eye Pads', 
    slug = 'greatcare-cotton-eye-pads', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WHWAND';
UPDATE product 
SET 
    name = 'Greatcare Air Cushion', 
    slug = 'greatcare-air-cushion', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FT0ZH8';
UPDATE product 
SET 
    name = 'Greatcare Intubating Stylet', 
    slug = 'greatcare-intubating-stylet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KA41MQ';
UPDATE product 
SET 
    name = 'Greatcare Overall Reflect Operation Lamp', 
    slug = 'greatcare-overall-reflect-operation-lamp', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-B2X996';
UPDATE product 
SET 
    name = 'Greatcare Spinal Board (plastic Stretcher)', 
    slug = 'greatcare-spinal-board-plastic-stretcher', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RTY5EB';
UPDATE product 
SET 
    name = 'Greatcare Tissue Forceps', 
    slug = 'greatcare-tissue-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XXDUTT';
UPDATE product 
SET 
    name = 'Greatcare Steel Wheelchair', 
    slug = 'greatcare-steel-wheelchair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SCTURT';
UPDATE product 
SET 
    name = 'Greatcare Vacuum Blood Collection', 
    slug = 'greatcare-vacuum-blood-collection', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-V83XBL';
UPDATE product 
SET 
    name = 'Greatcare Basic Dressing Set (pds-dht-166-set)', 
    slug = 'greatcare-basic-dressing-set-pds-dht-166-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OMI1RN';
UPDATE product 
SET 
    name = 'Greatcare Polyurethane Nasogastric Tube', 
    slug = 'greatcare-polyurethane-nasogastric-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RI4SG0';
UPDATE product 
SET 
    name = 'Greatcare Disposable Air Cushion Mask', 
    slug = 'greatcare-disposable-air-cushion-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KJ1FO8';
UPDATE product 
SET 
    name = 'Greatcare Disposable Vaccum-assisted Ureteral Access Sheath', 
    slug = 'greatcare-disposable-vaccum-assisted-ureteral-access-sheath', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HX5D2F';
UPDATE product 
SET 
    name = 'Greatcare Stainless Steel Surgical Scalpel Handle', 
    slug = 'greatcare-stainless-steel-surgical-scalpel-handle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BEKHHN';
UPDATE product 
SET 
    name = 'Greatcare Nebulizer With Mouthpiece', 
    slug = 'greatcare-nebulizer-with-mouthpiece', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-M248Q2';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Tube Holder', 
    slug = 'greatcare-tracheostomy-tube-holder', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UVETZZ';
UPDATE product 
SET 
    name = 'Greatcare Aneroid Sphygmomanometer', 
    slug = 'greatcare-aneroid-sphygmomanometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7QUEHD';
UPDATE product 
SET 
    name = 'Greatcare Laryngeal Mask Airway', 
    slug = 'greatcare-laryngeal-mask-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FPDC4C';
UPDATE product 
SET 
    name = 'Greatcare Double Lumen Foley Catheter', 
    slug = 'greatcare-double-lumen-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YH9CX5';
UPDATE product 
SET 
    name = 'Greatcare Bacterial Viral Filter', 
    slug = 'greatcare-bacterial-viral-filter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0QL5SE';
UPDATE product 
SET 
    name = 'Greatcare Double-lumen Silicone Foley Catheter With Tiemann Tip', 
    slug = 'greatcare-double-lumen-silicone-foley-catheter-with-tiemann-tip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-82GY59';
UPDATE product 
SET 
    name = 'Greatcare Walking Aids', 
    slug = 'greatcare-walking-aids', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1F7MI0';
UPDATE product 
SET 
    name = 'Greatcare Disposable Cervical Ripening Balloon', 
    slug = 'greatcare-disposable-cervical-ripening-balloon', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GH7A3U';
UPDATE product 
SET 
    name = 'Greatcare Central Venous Catheter Kit', 
    slug = 'greatcare-central-venous-catheter-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PMCPUF';
UPDATE product 
SET 
    name = 'Greatcare Silicone Gastrostomy Tube', 
    slug = 'greatcare-silicone-gastrostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IPY36K';
UPDATE product 
SET 
    name = 'Greatcare Triangle Testing Pin', 
    slug = 'greatcare-triangle-testing-pin', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6OCFCA';
UPDATE product 
SET 
    name = 'Greatcare Tube', 
    slug = 'greatcare-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-14OU7D';
UPDATE product 
SET 
    name = 'Greatcare Non-woven Eye Pads', 
    slug = 'greatcare-non-woven-eye-pads', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SQBCGZ';
UPDATE product 
SET 
    name = 'Greatcare Basic Dressing Set For Pd', 
    slug = 'greatcare-basic-dressing-set-for-pd', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FOISB8';
UPDATE product 
SET 
    name = 'Greatcare Nasopharyngeal Airway', 
    slug = 'greatcare-nasopharyngeal-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2Z75FR';
UPDATE product 
SET 
    name = 'Greatcare Auto Disable Syringe', 
    slug = 'greatcare-auto-disable-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VFKY70';
UPDATE product 
SET 
    name = 'Greatcare Leg Bag Strap', 
    slug = 'greatcare-leg-bag-strap', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-H7ZL6Y';
UPDATE product 
SET 
    name = 'Greatcare Baby Weighing Balance', 
    slug = 'greatcare-baby-weighing-balance', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-49NAXQ';
UPDATE product 
SET 
    name = 'Greatcare Three-way Stopcock', 
    slug = 'greatcare-three-way-stopcock', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KKQOYE';
UPDATE product 
SET 
    name = 'Greatcare Venturi Mask', 
    slug = 'greatcare-venturi-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9W9K4D';
UPDATE product 
SET 
    name = 'Greatcare Disposable Insulin Pen Needles', 
    slug = 'greatcare-disposable-insulin-pen-needles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RNQ5P0';
UPDATE product 
SET 
    name = 'Greatcare Blood Bag', 
    slug = 'greatcare-blood-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7QPNY0';
UPDATE product 
SET 
    name = 'Greatcare Disposable Urological Zebra Guidewire', 
    slug = 'greatcare-disposable-urological-zebra-guidewire', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-A7QWW5';
UPDATE product 
SET 
    name = 'Greatcare Disposable Enema Bags', 
    slug = 'greatcare-disposable-enema-bags', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CVJG74';
UPDATE product 
SET 
    name = 'Greatcare Embedding Cassette', 
    slug = 'greatcare-embedding-cassette', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0GB897';
UPDATE product 
SET 
    name = 'Greatcare Aerochamber With Masks', 
    slug = 'greatcare-aerochamber-with-masks', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LV9XC3';
UPDATE product 
SET 
    name = 'Greatcare Endotracheal Tube Introducers', 
    slug = 'greatcare-endotracheal-tube-introducers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-A7ULNQ';
UPDATE product 
SET 
    name = 'Greatcare Enteral Feeding Container', 
    slug = 'greatcare-enteral-feeding-container', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OOUPK4';
UPDATE product 
SET 
    name = 'Greatcare Red Rubber Urethral Catheter', 
    slug = 'greatcare-red-rubber-urethral-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3Y02D4';
UPDATE product 
SET 
    name = 'Greatcare Blood Collection Needle (pen Type)', 
    slug = 'greatcare-blood-collection-needle-pen-type', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PES6YX';
UPDATE product 
SET 
    name = 'Greatcare Belt', 
    slug = 'greatcare-belt', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DTGFPD';
UPDATE product 
SET 
    name = 'Greatcare Urethral Dilator', 
    slug = 'greatcare-urethral-dilator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WD8SPI';
UPDATE product 
SET 
    name = 'Greatcare Absorbent Cotton Wool', 
    slug = 'greatcare-absorbent-cotton-wool', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-F1FWML';
UPDATE product 
SET 
    name = 'Greatcare Gynecological Sets', 
    slug = 'greatcare-gynecological-sets', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-B20NQV';
UPDATE product 
SET 
    name = 'Greatcare Shoe Covers', 
    slug = 'greatcare-shoe-covers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IJM378';
UPDATE product 
SET 
    name = 'Greatcare Disposable Fistula Needle', 
    slug = 'greatcare-disposable-fistula-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7IT7UH';
UPDATE product 
SET 
    name = 'Greatcare Carbon Face Mask', 
    slug = 'greatcare-carbon-face-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-NSJXH1';
UPDATE product 
SET 
    name = 'Greatcare Enteral Gravity Feeding Bags', 
    slug = 'greatcare-enteral-gravity-feeding-bags', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T5EWTN';
UPDATE product 
SET 
    name = 'Greatcare Disposable 2-segment Stone Retrieval Basket', 
    slug = 'greatcare-disposable-2-segment-stone-retrieval-basket', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-X78V8E';
UPDATE product 
SET 
    name = 'Greatcare Cleansing Enema Set', 
    slug = 'greatcare-cleansing-enema-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BNNBHZ';
UPDATE product 
SET 
    name = 'Greatcare Face Shield', 
    slug = 'greatcare-face-shield', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4XL0PA';
UPDATE product 
SET 
    name = 'Greatcare Disposable Laryngoscope', 
    slug = 'greatcare-disposable-laryngoscope', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-W0B5OF';
UPDATE product 
SET 
    name = 'Greatcare Urine Meter Bag', 
    slug = 'greatcare-urine-meter-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2OIT96';
UPDATE product 
SET 
    name = 'Greatcare Petri Dish', 
    slug = 'greatcare-petri-dish', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-D2V47L';
UPDATE product 
SET 
    name = 'Greatcare Disposable Urethral Dilators', 
    slug = 'greatcare-disposable-urethral-dilators', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6B7UEO';
UPDATE product 
SET 
    name = 'Greatcare Disposable Multi-band Ligator', 
    slug = 'greatcare-disposable-multi-band-ligator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZNSQ9U';
UPDATE product 
SET 
    name = 'Greatcare Microcentrifuge Tube', 
    slug = 'greatcare-microcentrifuge-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HC2HYB';
UPDATE product 
SET 
    name = 'Greatcare Cataract Pack', 
    slug = 'greatcare-cataract-pack', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-A7RNXS';
UPDATE product 
SET 
    name = 'Greatcare Head Stethoscope', 
    slug = 'greatcare-head-stethoscope', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-U3D1YM';
UPDATE product 
SET 
    name = 'Greatcare Dental Needles', 
    slug = 'greatcare-dental-needles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7KO0HV';
UPDATE product 
SET 
    name = 'Greatcare Protecting Glasses', 
    slug = 'greatcare-protecting-glasses', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2PDGQ2';
UPDATE product 
SET 
    name = 'Greatcare Catheter Mount', 
    slug = 'greatcare-catheter-mount', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9L7LA5';
UPDATE product 
SET 
    name = 'Greatcare Pe Gloves', 
    slug = 'greatcare-pe-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PTSB2J';
UPDATE product 
SET 
    name = 'Greatcare Disposable Underpad', 
    slug = 'greatcare-disposable-underpad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HVAPU3';
UPDATE product 
SET 
    name = 'Greatcare Colostomy Bag', 
    slug = 'greatcare-colostomy-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YA0583';
UPDATE product 
SET 
    name = 'Greatcare Sampling Nasal Cannula', 
    slug = 'greatcare-sampling-nasal-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7DDNGF';
UPDATE product 
SET 
    name = 'Greatcare Nasal Irrigator', 
    slug = 'greatcare-nasal-irrigator', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-O8JJPD';
UPDATE product 
SET 
    name = 'Greatcare First-aid Kit', 
    slug = 'greatcare-first-aid-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-H66ZEP';
UPDATE product 
SET 
    name = 'Greatcare Zig-zag Cotton', 
    slug = 'greatcare-zig-zag-cotton', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GNMUFE';
UPDATE product 
SET 
    name = 'Greatcare Nasal Oxygen Cannula', 
    slug = 'greatcare-nasal-oxygen-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6DS13L';
UPDATE product 
SET 
    name = 'Greatcare Anesthesia Easy Mask', 
    slug = 'greatcare-anesthesia-easy-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-66DEC3';
UPDATE product 
SET 
    name = 'Greatcare Disposable Spinal Needle', 
    slug = 'greatcare-disposable-spinal-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4UH59K';
UPDATE product 
SET 
    name = 'Greatcare Adjustable Automatic Lancing Device', 
    slug = 'greatcare-adjustable-automatic-lancing-device', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1H7YSP';
UPDATE product 
SET 
    name = 'Greatcare Cervical Brush', 
    slug = 'greatcare-cervical-brush', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ID8FVM';
UPDATE product 
SET 
    name = 'Greatcare Urine Drainage Leg Bag', 
    slug = 'greatcare-urine-drainage-leg-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SPT3EE';
UPDATE product 
SET 
    name = 'Greatcare Silicone Stomach Tube', 
    slug = 'greatcare-silicone-stomach-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-14YIIX';
UPDATE product 
SET 
    name = 'Greatcare Non-woven Working Caps', 
    slug = 'greatcare-non-woven-working-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T1QB6K';
UPDATE product 
SET 
    name = 'Greatcare Disposable Endoscopic Mouthpiece', 
    slug = 'greatcare-disposable-endoscopic-mouthpiece', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JW4MN7';
UPDATE product 
SET 
    name = 'Greatcare Irrigation Syringes', 
    slug = 'greatcare-irrigation-syringes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TQWZP9';
UPDATE product 
SET 
    name = 'Greatcare Stair Chair', 
    slug = 'greatcare-stair-chair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VXPMBB';
UPDATE product 
SET 
    name = 'Greatcare Syringe Filter', 
    slug = 'greatcare-syringe-filter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IP9PVM';
UPDATE product 
SET 
    name = 'Greatcare Heat Moisture Exchanger Filter', 
    slug = 'greatcare-heat-moisture-exchanger-filter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JKZAKF';
UPDATE product 
SET 
    name = 'Greatcare Basic Dressing Set(pds-drs-066-set)', 
    slug = 'greatcare-basic-dressing-setpds-drs-066-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CPX2W9';
UPDATE product 
SET 
    name = 'Greatcare Plastic Scissors', 
    slug = 'greatcare-plastic-scissors', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WKGMV3';
UPDATE product 
SET 
    name = 'Greatcare Leg Bag Holder', 
    slug = 'greatcare-leg-bag-holder', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IN7OKR';
UPDATE product 
SET 
    name = 'Greatcare Astronaut Caps', 
    slug = 'greatcare-astronaut-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DZVKJ5';
UPDATE product 
SET 
    name = 'Greatcare Laparotomy Sponges', 
    slug = 'greatcare-laparotomy-sponges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OIAXQU';
UPDATE product 
SET 
    name = 'Greatcare Disposable Surgical Blades', 
    slug = 'greatcare-disposable-surgical-blades', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JNTKAP';
UPDATE product 
SET 
    name = 'Greatcare Wartenberg Pinwheel', 
    slug = 'greatcare-wartenberg-pinwheel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4AR9GJ';
UPDATE product 
SET 
    name = 'Greatcare Flip Flow Valve', 
    slug = 'greatcare-flip-flow-valve', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6O3YBJ';
UPDATE product 
SET 
    name = 'Greatcare Lubricant Jelly', 
    slug = 'greatcare-lubricant-jelly', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GZQWGR';
UPDATE product 
SET 
    name = 'Greatcare Elastic Bandages', 
    slug = 'greatcare-elastic-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QSAC3W';
UPDATE product 
SET 
    name = 'Greatcare Spun-lanced Dressing Tape', 
    slug = 'greatcare-spun-lanced-dressing-tape', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-745W16';
UPDATE product 
SET 
    name = 'Greatcare Triangular Bandages', 
    slug = 'greatcare-triangular-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-5YCN94';
UPDATE product 
SET 
    name = 'Greatcare Latex Male External Catheter', 
    slug = 'greatcare-latex-male-external-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Q2LMPE';
UPDATE product 
SET 
    name = 'Greatcare Wound Drainage Reservoir', 
    slug = 'greatcare-wound-drainage-reservoir', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-7NOSB6';
UPDATE product 
SET 
    name = 'Greatcare Basic Dressing Set', 
    slug = 'greatcare-basic-dressing-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KREABA';
UPDATE product 
SET 
    name = 'Greatcare Nose Nasal Speculum', 
    slug = 'greatcare-nose-nasal-speculum', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YIOW52';
UPDATE product 
SET 
    name = 'Greatcare Disposable Stitch Cutter Blades', 
    slug = 'greatcare-disposable-stitch-cutter-blades', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2PRPSZ';
UPDATE product 
SET 
    name = 'Greatcare Etco2/o2 Nasal Cannula', 
    slug = 'greatcare-etco2o2-nasal-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AJ9Y4T';
UPDATE product 
SET 
    name = 'Greatcare Disposable Isolation Gown', 
    slug = 'greatcare-disposable-isolation-gown', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-L3HHQ2';
UPDATE product 
SET 
    name = 'Greatcare Infant Mucus Extractor', 
    slug = 'greatcare-infant-mucus-extractor', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-V1HT9V';
UPDATE product 
SET 
    name = 'Greatcare Weight & Height Balance', 
    slug = 'greatcare-weight-height-balance', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HCLKU0';
UPDATE product 
SET 
    name = 'Greatcare Silicone Coated Latex Foley Catheter', 
    slug = 'greatcare-silicone-coated-latex-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WYMRLF';
UPDATE product 
SET 
    name = 'Greatcare Disposable Ecg Electrode', 
    slug = 'greatcare-disposable-ecg-electrode', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AF4RWV';
UPDATE product 
SET 
    name = 'Greatcare Tube Brush', 
    slug = 'greatcare-tube-brush', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-US0ZXJ';
UPDATE product 
SET 
    name = 'Greatcare Male Nelaton Catheter', 
    slug = 'greatcare-male-nelaton-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Z0CSDM';
UPDATE product 
SET 
    name = 'Greatcare Post-op Elbow Brace', 
    slug = 'greatcare-post-op-elbow-brace', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4RODJQ';
UPDATE product 
SET 
    name = 'Greatcare Power Wheelchair', 
    slug = 'greatcare-power-wheelchair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-209M7B';
UPDATE product 
SET 
    name = 'Greatcare Pregnancy Test-hcg', 
    slug = 'greatcare-pregnancy-test-hcg', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-L5VK79';
UPDATE product 
SET 
    name = 'Greatcare Cervix Forceps', 
    slug = 'greatcare-cervix-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-490SDP';
UPDATE product 
SET 
    name = 'Greatcare Digital Thermometer', 
    slug = 'greatcare-digital-thermometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-B9XXY3';
UPDATE product 
SET 
    name = 'Greatcare Oxygen Humidifier', 
    slug = 'greatcare-oxygen-humidifier', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-82J0RL';
UPDATE product 
SET 
    name = 'Greatcare Disposable Humidifier', 
    slug = 'greatcare-disposable-humidifier', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JTR239';
UPDATE product 
SET 
    name = 'Greatcare First Aid Band', 
    slug = 'greatcare-first-aid-band', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HSJKGJ';
UPDATE product 
SET 
    name = 'Greatcare Electronic Baby Weighing Balance', 
    slug = 'greatcare-electronic-baby-weighing-balance', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-M6JO58';
UPDATE product 
SET 
    name = 'Greatcare Urine Bag Hanger', 
    slug = 'greatcare-urine-bag-hanger', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3BO9X7';
UPDATE product 
SET 
    name = 'Greatcare Stainless Steel Blood Lancet', 
    slug = 'greatcare-stainless-steel-blood-lancet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-K3FG9E';
UPDATE product 
SET 
    name = 'Greatcare Adjustable Venturi Mask', 
    slug = 'greatcare-adjustable-venturi-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AKOHTD';
UPDATE product 
SET 
    name = 'Greatcare Transparent Dressing Paste', 
    slug = 'greatcare-transparent-dressing-paste', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YPN0O8';
UPDATE product 
SET 
    name = 'Greatcare Emergency Blanket', 
    slug = 'greatcare-emergency-blanket', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6XOJ9Y';
UPDATE product 
SET 
    name = 'Greatcare Cohesive Elastic Bandages(non-woven)', 
    slug = 'greatcare-cohesive-elastic-bandagesnon-woven', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZCMFH5';
UPDATE product 
SET 
    name = 'Greatcare Pulse Oximeter', 
    slug = 'greatcare-pulse-oximeter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AFXE7C';
UPDATE product 
SET 
    name = 'Greatcare Boot Covers', 
    slug = 'greatcare-boot-covers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1HUT2H';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Tube', 
    slug = 'greatcare-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TP8ZO2';
UPDATE product 
SET 
    name = 'Greatcare Surgical Hemostatic Forceps', 
    slug = 'greatcare-surgical-hemostatic-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T47V88';
UPDATE product 
SET 
    name = 'Greatcare Cotton Applicator(wooden Handle)', 
    slug = 'greatcare-cotton-applicatorwooden-handle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OMIOE1';
UPDATE product 
SET 
    name = 'Greatcare Double J Ureteral Stent', 
    slug = 'greatcare-double-j-ureteral-stent', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RJHG7J';
UPDATE product 
SET 
    name = 'Greatcare Hydrophilic Latex Foley Catheter', 
    slug = 'greatcare-hydrophilic-latex-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TOLTYN';
UPDATE product 
SET 
    name = 'Greatcare Mouth Opener', 
    slug = 'greatcare-mouth-opener', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3VLFGJ';
UPDATE product 
SET 
    name = 'Greatcare Catheter Clamps', 
    slug = 'greatcare-catheter-clamps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-V281YE';
UPDATE product 
SET 
    name = 'Greatcare Paper', 
    slug = 'greatcare-paper', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8P1P6O';
UPDATE product 
SET 
    name = 'Greatcare Aspirator Nasal', 
    slug = 'greatcare-aspirator-nasal', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RDRZRL';
UPDATE product 
SET 
    name = 'Greatcare Nipple Set(for Baby)', 
    slug = 'greatcare-nipple-setfor-baby', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PKF8GT';
UPDATE product 
SET 
    name = 'Greatcare Dental Mirror', 
    slug = 'greatcare-dental-mirror', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HFNUA4';
UPDATE product 
SET 
    name = 'Greatcare Surgical Gloves', 
    slug = 'greatcare-surgical-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-VZE625';
UPDATE product 
SET 
    name = 'Greatcare Alcohol Swabs', 
    slug = 'greatcare-alcohol-swabs', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1DU1RA';
UPDATE product 
SET 
    name = 'Greatcare Rectal Tube', 
    slug = 'greatcare-rectal-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8J9X4C';
UPDATE product 
SET 
    name = 'Greatcare Pen Light', 
    slug = 'greatcare-pen-light', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-J6Z5YU';
UPDATE product 
SET 
    name = 'Greatcare Urostomy Bag', 
    slug = 'greatcare-urostomy-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-49AEEE';
UPDATE product 
SET 
    name = 'Greatcare Infusion Plaster', 
    slug = 'greatcare-infusion-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-19GYE1';
UPDATE product 
SET 
    name = 'Greatcare Latex Foley Catheter', 
    slug = 'greatcare-latex-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-25Q6U4';
UPDATE product 
SET 
    name = 'Greatcare Bath Bench', 
    slug = 'greatcare-bath-bench', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0G41JZ';
UPDATE product 
SET 
    name = 'Greatcare Non-mercury Thermometer', 
    slug = 'greatcare-non-mercury-thermometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MSDVPT';
UPDATE product 
SET 
    name = 'Greatcare Bandage Scissors', 
    slug = 'greatcare-bandage-scissors', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TBTBEH';
UPDATE product 
SET 
    name = 'Greatcare Electronic Balance', 
    slug = 'greatcare-electronic-balance', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3UDOKR';
UPDATE product 
SET 
    name = 'Greatcare Mask', 
    slug = 'greatcare-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YLAK2K';
UPDATE product 
SET 
    name = 'Greatcare Disposable Skin Graft Blades', 
    slug = 'greatcare-disposable-skin-graft-blades', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-A2418P';
UPDATE product 
SET 
    name = 'Greatcare Dining Table', 
    slug = 'greatcare-dining-table', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PSFX4U';
UPDATE product 
SET 
    name = 'Greatcare Net Tubular Elastic Bandages', 
    slug = 'greatcare-net-tubular-elastic-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9ISQ7U';
UPDATE product 
SET 
    name = 'Greatcare Needle Holder', 
    slug = 'greatcare-needle-holder', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-00YUEM';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Tube With Suction Lumen', 
    slug = 'greatcare-tracheostomy-tube-with-suction-lumen', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8H13RS';
UPDATE product 
SET 
    name = 'Greatcare Disposable Anesthetic Needle', 
    slug = 'greatcare-disposable-anesthetic-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-1VKMET';
UPDATE product 
SET 
    name = 'Greatcare I.v. Stand', 
    slug = 'greatcare-iv-stand', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-AHVU9E';
UPDATE product 
SET 
    name = 'Greatcare Paraffin Gauze', 
    slug = 'greatcare-paraffin-gauze', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-5O1RJU';
UPDATE product 
SET 
    name = 'Greatcare Safety Syringes', 
    slug = 'greatcare-safety-syringes', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T6ZR79';
UPDATE product 
SET 
    name = 'Greatcare Mercury-free Sphygmomanometer', 
    slug = 'greatcare-mercury-free-sphygmomanometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T75XY6';
UPDATE product 
SET 
    name = 'Greatcare Disposable 4-wire Stone Retrieval Basket', 
    slug = 'greatcare-disposable-4-wire-stone-retrieval-basket', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BDF3IT';
UPDATE product 
SET 
    name = 'Greatcare Face Mask(with Transparent Shield)', 
    slug = 'greatcare-face-maskwith-transparent-shield', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8RVV9I';
UPDATE product 
SET 
    name = 'Greatcare Transfer Pipette', 
    slug = 'greatcare-transfer-pipette', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OK70EH';
UPDATE product 
SET 
    name = 'Greatcare Silicone Foley Catheter', 
    slug = 'greatcare-silicone-foley-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OOMWLE';
UPDATE product 
SET 
    name = 'Greatcare Face Mask', 
    slug = 'greatcare-face-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LCXQ3E';
UPDATE product 
SET 
    name = 'Greatcare Gas Sampling Line', 
    slug = 'greatcare-gas-sampling-line', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WIJ0YW';
UPDATE product 
SET 
    name = 'Greatcare Hydrophilic Nelaton Catheter', 
    slug = 'greatcare-hydrophilic-nelaton-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YPS75C';
UPDATE product 
SET 
    name = 'Greatcare Nitrile Gloves', 
    slug = 'greatcare-nitrile-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HDHNKV';
UPDATE product 
SET 
    name = 'Greatcare Urine Bottle', 
    slug = 'greatcare-urine-bottle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OW27UH';
UPDATE product 
SET 
    name = 'Greatcare Self-adhesive Wound Dressing', 
    slug = 'greatcare-self-adhesive-wound-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LV7QCU';
UPDATE product 
SET 
    name = 'Greatcare Bathroom Scale', 
    slug = 'greatcare-bathroom-scale', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-J9UHCB';
UPDATE product 
SET 
    name = 'Greatcare Non-rebreather Mask', 
    slug = 'greatcare-non-rebreather-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LMI9OB';
UPDATE product 
SET 
    name = 'Greatcare Examination Gloves', 
    slug = 'greatcare-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2QGUQI';
UPDATE product 
SET 
    name = 'Greatcare Disposable Surgical Scalpel', 
    slug = 'greatcare-disposable-surgical-scalpel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SQ0RWW';
UPDATE product 
SET 
    name = 'Greatcare Suction Catheter', 
    slug = 'greatcare-suction-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-X3UA6S';
UPDATE product 
SET 
    name = 'Greatcare Disposable Syringe Cleaners', 
    slug = 'greatcare-disposable-syringe-cleaners', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Z80UA1';
UPDATE product 
SET 
    name = 'Greatcare Digital Sphygmomanometer', 
    slug = 'greatcare-digital-sphygmomanometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-T5HFU2';
UPDATE product 
SET 
    name = 'Greatcare Bouffant Caps', 
    slug = 'greatcare-bouffant-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4VICD5';
UPDATE product 
SET 
    name = 'Greatcare Ultrasound Gel', 
    slug = 'greatcare-ultrasound-gel', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-539IN2';
UPDATE product 
SET 
    name = 'Greatcare Feeding Tube', 
    slug = 'greatcare-feeding-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SKEZFC';
UPDATE product 
SET 
    name = 'Greatcare Penrose Tube', 
    slug = 'greatcare-penrose-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DHVXDF';
UPDATE product 
SET 
    name = 'Greatcare Doctor''s Caps', 
    slug = 'greatcare-doctors-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8I3H5T';
UPDATE product 
SET 
    name = 'Greatcare Breathing Mask With One Way Valve', 
    slug = 'greatcare-breathing-mask-with-one-way-valve', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PG185T';
UPDATE product 
SET 
    name = 'Greatcare Extension Set', 
    slug = 'greatcare-extension-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LPM3X7';
UPDATE product 
SET 
    name = 'Greatcare Cotton Applicator(plastic Handle)', 
    slug = 'greatcare-cotton-applicatorplastic-handle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-O9HVPS';
UPDATE product 
SET 
    name = 'Greatcare Infrared Ear Thermometer', 
    slug = 'greatcare-infrared-ear-thermometer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-B15VFS';
UPDATE product 
SET 
    name = 'Greatcare Oral Suction Tube', 
    slug = 'greatcare-oral-suction-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-33RNRL';
UPDATE product 
SET 
    name = 'Greatcare Beard Cover', 
    slug = 'greatcare-beard-cover', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-N8FPFV';
UPDATE product 
SET 
    name = 'Greatcare Coldlight Shadowless Operation Lamp With Supplementary Lamp', 
    slug = 'greatcare-coldlight-shadowless-operation-lamp-with-supplementary-lamp', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-H8K08P';
UPDATE product 
SET 
    name = 'Greatcare Tension-free Urethral Sling', 
    slug = 'greatcare-tension-free-urethral-sling', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ED73JO';
UPDATE product 
SET 
    name = 'Greatcare Disposable Balloon Dilatation Catheter', 
    slug = 'greatcare-disposable-balloon-dilatation-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WY5N15';
UPDATE product 
SET 
    name = 'Greatcare Double-cuff Tracheostomy Tube', 
    slug = 'greatcare-double-cuff-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-XUDBTN';
UPDATE product 
SET 
    name = 'Greatcare Infusion Sets', 
    slug = 'greatcare-infusion-sets', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2IFO00';
UPDATE product 
SET 
    name = 'Greatcare Medical Isolation Safety Goggles', 
    slug = 'greatcare-medical-isolation-safety-goggles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8ABD87';
UPDATE product 
SET 
    name = 'Greatcare Irrigation Needles', 
    slug = 'greatcare-irrigation-needles', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-4SJR85';
UPDATE product 
SET 
    name = 'Greatcare Universal Bottle Adapter', 
    slug = 'greatcare-universal-bottle-adapter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SF4YPP';
UPDATE product 
SET 
    name = 'Greatcare Breast Pump(simple)', 
    slug = 'greatcare-breast-pumpsimple', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-L1CPJJ';
UPDATE product 
SET 
    name = 'Greatcare Feeding Bottle', 
    slug = 'greatcare-feeding-bottle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Z6OUHI';
UPDATE product 
SET 
    name = 'Greatcare Absorbent Cotton Gauze Roll', 
    slug = 'greatcare-absorbent-cotton-gauze-roll', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-S516B5';
UPDATE product 
SET 
    name = 'Greatcare Disposable Bone Marrow Needle', 
    slug = 'greatcare-disposable-bone-marrow-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-38X4C1';
UPDATE product 
SET 
    name = 'Greatcare Extended-length Tracheostomy Tube', 
    slug = 'greatcare-extended-length-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Y92INC';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Tube Inner Cannula', 
    slug = 'greatcare-tracheostomy-tube-inner-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9UD1PH';
UPDATE product 
SET 
    name = 'Greatcare Hydrocolloid Foam Dressing', 
    slug = 'greatcare-hydrocolloid-foam-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8UEE4C';
UPDATE product 
SET 
    name = 'Greatcare Metrical Rod', 
    slug = 'greatcare-metrical-rod', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BLXRY0';
UPDATE product 
SET 
    name = 'Greatcare Plastic Forceps', 
    slug = 'greatcare-plastic-forceps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UC47BO';
UPDATE product 
SET 
    name = 'Greatcare Taylor Percussion Hammer', 
    slug = 'greatcare-taylor-percussion-hammer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6V3IJ5';
UPDATE product 
SET 
    name = 'Greatcare Head Immobilizer', 
    slug = 'greatcare-head-immobilizer', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9Z4DV4';
UPDATE product 
SET 
    name = 'Greatcare Zinc Oxide Plaster', 
    slug = 'greatcare-zinc-oxide-plaster', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OF8K6F';
UPDATE product 
SET 
    name = 'Greatcare Sleeve Covers', 
    slug = 'greatcare-sleeve-covers', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-195HKT';
UPDATE product 
SET 
    name = 'Greatcare Fracture Walker', 
    slug = 'greatcare-fracture-walker', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SZR6KJ';
UPDATE product 
SET 
    name = 'Greatcare Tubercle Bacillus Syringe', 
    slug = 'greatcare-tubercle-bacillus-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-K6PGI7';
UPDATE product 
SET 
    name = 'Greatcare Silicone Male External Catheter', 
    slug = 'greatcare-silicone-male-external-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ELROK7';
UPDATE product 
SET 
    name = 'Greatcare Radial Artery Compression Tourniquet', 
    slug = 'greatcare-radial-artery-compression-tourniquet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0U5WZG';
UPDATE product 
SET 
    name = 'Greatcare Hospital Bed', 
    slug = 'greatcare-hospital-bed', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-S161PP';
UPDATE product 
SET 
    name = 'Greatcare Nelaton Catheter', 
    slug = 'greatcare-nelaton-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2HWDKN';
UPDATE product 
SET 
    name = 'Greatcare Plaster Of Paris Bandages', 
    slug = 'greatcare-plaster-of-paris-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-940JZJ';
UPDATE product 
SET 
    name = 'Greatcare Wash Brush', 
    slug = 'greatcare-wash-brush', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-MJF5GR';
UPDATE product 
SET 
    name = 'Greatcare Oropharyngeal Airway', 
    slug = 'greatcare-oropharyngeal-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TJTW9Q';
UPDATE product 
SET 
    name = 'Greatcare T-tube', 
    slug = 'greatcare-t-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9S6L8M';
UPDATE product 
SET 
    name = 'Greatcare Hospital Bedside Table', 
    slug = 'greatcare-hospital-bedside-table', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-P6WVW1';
UPDATE product 
SET 
    name = 'Greatcare Disposable Multi-stage Balloon Dilatation Catheter', 
    slug = 'greatcare-disposable-multi-stage-balloon-dilatation-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LAC99A';
UPDATE product 
SET 
    name = 'Greatcare Disposable Infusion Pump', 
    slug = 'greatcare-disposable-infusion-pump', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-DKURTR';
UPDATE product 
SET 
    name = 'Greatcare Needle Holder For Blood Collection', 
    slug = 'greatcare-needle-holder-for-blood-collection', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-E57VNK';
UPDATE product 
SET 
    name = 'Greatcare Oxygen Tubing', 
    slug = 'greatcare-oxygen-tubing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-5HPTU4';
UPDATE product 
SET 
    name = 'Greatcare Disposable Endoscopic Stone Retrieval Basket', 
    slug = 'greatcare-disposable-endoscopic-stone-retrieval-basket', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JNZ0F4';
UPDATE product 
SET 
    name = 'Greatcare Conforming Bandages', 
    slug = 'greatcare-conforming-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3HD56U';
UPDATE product 
SET 
    name = 'Greatcare Disposable Coveralls', 
    slug = 'greatcare-disposable-coveralls', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-LAEROQ';
UPDATE product 
SET 
    name = 'Greatcare Plastic Tongue Depressor', 
    slug = 'greatcare-plastic-tongue-depressor', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JT3CJU';
UPDATE product 
SET 
    name = 'Greatcare Centrifuge Tube', 
    slug = 'greatcare-centrifuge-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TUINM6';
UPDATE product 
SET 
    name = 'Greatcare Hinged Knee Support', 
    slug = 'greatcare-hinged-knee-support', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YF2QBR';
UPDATE product 
SET 
    name = 'Greatcare Duodenal Feeding Tube', 
    slug = 'greatcare-duodenal-feeding-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-82KDQY';
UPDATE product 
SET 
    name = 'Greatcare Safety Blood Lancet', 
    slug = 'greatcare-safety-blood-lancet', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SWM4P2';
UPDATE product 
SET 
    name = 'Greatcare Non-woven Sponges', 
    slug = 'greatcare-non-woven-sponges', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-J0PQ5N';
UPDATE product 
SET 
    name = 'Greatcare Robinson Nelaton Catheter', 
    slug = 'greatcare-robinson-nelaton-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ATDERF';
UPDATE product 
SET 
    name = 'Greatcare Vomit Bag', 
    slug = 'greatcare-vomit-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-C1HJYQ';
UPDATE product 
SET 
    name = 'Greatcare Reinforced Tracheostomy Tube', 
    slug = 'greatcare-reinforced-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RWT3BW';
UPDATE product 
SET 
    name = 'Greatcare Gauze Ball', 
    slug = 'greatcare-gauze-ball', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-FXFRL5';
UPDATE product 
SET 
    name = 'Greatcare Endotracheal Tube', 
    slug = 'greatcare-endotracheal-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SE97YK';
UPDATE product 
SET 
    name = 'Greatcare Epidural Anesthesia Kit', 
    slug = 'greatcare-epidural-anesthesia-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IJG4H2';
UPDATE product 
SET 
    name = 'Greatcare Catheter Spigot', 
    slug = 'greatcare-catheter-spigot', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-C1UA6K';
UPDATE product 
SET 
    name = 'Greatcare Alcohol Disinfectant', 
    slug = 'greatcare-alcohol-disinfectant', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YEYGUH';
UPDATE product 
SET 
    name = 'Greatcare Double Lumen Endobronchial Tube', 
    slug = 'greatcare-double-lumen-endobronchial-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-B9Z6F0';
UPDATE product 
SET 
    name = 'Greatcare Reclining Wheelchair', 
    slug = 'greatcare-reclining-wheelchair', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3GVVP1';
UPDATE product 
SET 
    name = 'Greatcare Disposable Medical Razor', 
    slug = 'greatcare-disposable-medical-razor', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-W58ZBH';
UPDATE product 
SET 
    name = 'Greatcare Hot/cold Pack', 
    slug = 'greatcare-hotcold-pack', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-A6F7CM';
UPDATE product 
SET 
    name = 'Greatcare Needle Luer Adapter', 
    slug = 'greatcare-needle-luer-adapter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-M91AXQ';
UPDATE product 
SET 
    name = 'Greatcare Disposable Nasal Biliary Drainage Catheter', 
    slug = 'greatcare-disposable-nasal-biliary-drainage-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2GR4HM';
UPDATE product 
SET 
    name = 'Greatcare Closed Suction Catheter', 
    slug = 'greatcare-closed-suction-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KSN74X';
UPDATE product 
SET 
    name = 'Greatcare Coldlight Shadowless Operating Lamp With 5 Reflectors', 
    slug = 'greatcare-coldlight-shadowless-operating-lamp-with-5-reflectors', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ZP1N35';
UPDATE product 
SET 
    name = 'Greatcare Gloves', 
    slug = 'greatcare-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-8DFR34';
UPDATE product 
SET 
    name = 'Greatcare Disposable Puncture Set For Local Anesthesia', 
    slug = 'greatcare-disposable-puncture-set-for-local-anesthesia', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GJLXRC';
UPDATE product 
SET 
    name = 'Greatcare Sterile Microinjector Syringe', 
    slug = 'greatcare-sterile-microinjector-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2NX2A1';
UPDATE product 
SET 
    name = 'Greatcare Nose Clip', 
    slug = 'greatcare-nose-clip', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-73TXTN';
UPDATE product 
SET 
    name = 'Greatcare Disposable Infusion Bag For Parenteral Nutrition', 
    slug = 'greatcare-disposable-infusion-bag-for-parenteral-nutrition', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YVDNE3';
UPDATE product 
SET 
    name = 'Greatcare Eye Cold Pack', 
    slug = 'greatcare-eye-cold-pack', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-NTYJDY';
UPDATE product 
SET 
    name = 'Greatcare Endotracheal Tube Holder', 
    slug = 'greatcare-endotracheal-tube-holder', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TH854W';
UPDATE product 
SET 
    name = 'Greatcare Insulin Syringe', 
    slug = 'greatcare-insulin-syringe', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0F2O4O';
UPDATE product 
SET 
    name = 'Greatcare Infusion Connector Protector', 
    slug = 'greatcare-infusion-connector-protector', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-I6QEB1';
UPDATE product 
SET 
    name = 'Greatcare Pediatric Urine Collector', 
    slug = 'greatcare-pediatric-urine-collector', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-PYEU3P';
UPDATE product 
SET 
    name = 'Greatcare Cover Glass', 
    slug = 'greatcare-cover-glass', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-G2T9Q5';
UPDATE product 
SET 
    name = 'Greatcare Nasal Splint With Airway', 
    slug = 'greatcare-nasal-splint-with-airway', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-QUKPYM';
UPDATE product 
SET 
    name = 'Greatcare Urine Drainage Bag', 
    slug = 'greatcare-urine-drainage-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JJD16G';
UPDATE product 
SET 
    name = 'Greatcare Feces Container', 
    slug = 'greatcare-feces-container', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-OICDV8';
UPDATE product 
SET 
    name = 'Greatcare Mask', 
    slug = 'greatcare-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IV7KY5';
UPDATE product 
SET 
    name = 'Greatcare Tracheostomy Mask', 
    slug = 'greatcare-tracheostomy-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-YO9Y7Q';
UPDATE product 
SET 
    name = 'Greatcare Combined Spinal And Eqidural Anaesthesia Kit', 
    slug = 'greatcare-combined-spinal-and-eqidural-anaesthesia-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-SP409X';
UPDATE product 
SET 
    name = 'Greatcare Cotton Bandages', 
    slug = 'greatcare-cotton-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-BANX46';
UPDATE product 
SET 
    name = 'Greatcare Aero Chamber With Mask', 
    slug = 'greatcare-aero-chamber-with-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RE33GP';
UPDATE product 
SET 
    name = 'Greatcare Heparin Cap', 
    slug = 'greatcare-heparin-cap', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-71NR3U';
UPDATE product 
SET 
    name = 'Greatcare Disposable Blood Lines', 
    slug = 'greatcare-disposable-blood-lines', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2I0RRG';
UPDATE product 
SET 
    name = 'Greatcare Enteral Feeding Pump Set', 
    slug = 'greatcare-enteral-feeding-pump-set', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-C0LQFW';
UPDATE product 
SET 
    name = 'Greatcare Wound Dressing Tray', 
    slug = 'greatcare-wound-dressing-tray', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-68AXYB';
UPDATE product 
SET 
    name = 'Greatcare Povidone Iodine Swab', 
    slug = 'greatcare-povidone-iodine-swab', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-COHK36';
UPDATE product 
SET 
    name = 'Greatcare I.v Dressing', 
    slug = 'greatcare-iv-dressing', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HQKU8H';
UPDATE product 
SET 
    name = 'Greatcare Umbilical Cord Clamp', 
    slug = 'greatcare-umbilical-cord-clamp', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IA6B03';
UPDATE product 
SET 
    name = 'Greatcare Aluminum Ambulance Stretcher', 
    slug = 'greatcare-aluminum-ambulance-stretcher', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3PTXEK';
UPDATE product 
SET 
    name = 'Greatcare Veritical Cold Light Operation Lamp With 4 Reflectors', 
    slug = 'greatcare-veritical-cold-light-operation-lamp-with-4-reflectors', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-UXN939';
UPDATE product 
SET 
    name = 'Greatcare Nail Brush', 
    slug = 'greatcare-nail-brush', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TF1CU1';
UPDATE product 
SET 
    name = 'Greatcare Dust Mask', 
    slug = 'greatcare-dust-mask', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-U5L1LO';
UPDATE product 
SET 
    name = 'Greatcare Anesthesia Circuit Kit', 
    slug = 'greatcare-anesthesia-circuit-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0F3J2N';
UPDATE product 
SET 
    name = 'Greatcare Clip Caps', 
    slug = 'greatcare-clip-caps', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RFLV15';
UPDATE product 
SET 
    name = 'Greatcare Ice Bag', 
    slug = 'greatcare-ice-bag', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KZU23A';
UPDATE product 
SET 
    name = 'Greatcare I.v Catheter', 
    slug = 'greatcare-iv-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-EVJYHG';
UPDATE product 
SET 
    name = 'Greatcare Red Rubber Catheter', 
    slug = 'greatcare-red-rubber-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GMJZ8E';
UPDATE product 
SET 
    name = 'Greatcare Disposable Epidural Needle', 
    slug = 'greatcare-disposable-epidural-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-08NKVH';
UPDATE product 
SET 
    name = 'Greatcare Elastic Tube Bandage', 
    slug = 'greatcare-elastic-tube-bandage', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WKL6BG';
UPDATE product 
SET 
    name = 'Greatcare Disposable Ear Speculum', 
    slug = 'greatcare-disposable-ear-speculum', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-G9TT1D';
UPDATE product 
SET 
    name = 'Greatcare Surgical Gown', 
    slug = 'greatcare-surgical-gown', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-0IVUX8';
UPDATE product 
SET 
    name = 'Greatcare Cotton Wow Gauze Bandages', 
    slug = 'greatcare-cotton-wow-gauze-bandages', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-ALV5MO';
UPDATE product 
SET 
    name = 'Greatcare Suture Removal Kit', 
    slug = 'greatcare-suture-removal-kit', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HEUKBM';
UPDATE product 
SET 
    name = 'Greatcare Povidone Iodine Prep Pad', 
    slug = 'greatcare-povidone-iodine-prep-pad', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-IMIMUT';
UPDATE product 
SET 
    name = 'Greatcare Yankauer Handle', 
    slug = 'greatcare-yankauer-handle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-TO5RSN';
UPDATE product 
SET 
    name = 'Greatcare Disposable Urological Hydrophilic Guidewire', 
    slug = 'greatcare-disposable-urological-hydrophilic-guidewire', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-JSZ6CK';
UPDATE product 
SET 
    name = 'Greatcare Drainage Tube', 
    slug = 'greatcare-drainage-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-KKAYOL';
UPDATE product 
SET 
    name = 'Greatcare Mini Hydrophilic Intermittent Catheter', 
    slug = 'greatcare-mini-hydrophilic-intermittent-catheter', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9ZRCJH';
UPDATE product 
SET 
    name = 'Greatcare Suction Connecting Tube', 
    slug = 'greatcare-suction-connecting-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-2WK6ZO';
UPDATE product 
SET 
    name = 'Greatcare Lab Coat', 
    slug = 'greatcare-lab-coat', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-RTENWI';
UPDATE product 
SET 
    name = 'Greatcare Sharps Container', 
    slug = 'greatcare-sharps-container', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-GADPGF';
UPDATE product 
SET 
    name = 'Greatcare Double Folding Stretcher', 
    slug = 'greatcare-double-folding-stretcher', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-Y7DQ76';
UPDATE product 
SET 
    name = 'Greatcare Disposable Needle', 
    slug = 'greatcare-disposable-needle', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3UY9FI';
UPDATE product 
SET 
    name = 'Greatcare Gloves', 
    slug = 'greatcare-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WB8EQP';
UPDATE product 
SET 
    name = 'Greatcare Stainless Examining Bed', 
    slug = 'greatcare-stainless-examining-bed', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-6CZJA5';
UPDATE product 
SET 
    name = 'Greatcare Blood Collection Needles(multi-sample)', 
    slug = 'greatcare-blood-collection-needlesmulti-sample', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-HL2FPQ';
UPDATE product 
SET 
    name = 'Greatcare Extension Line', 
    slug = 'greatcare-extension-line', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-X14AWY';
UPDATE product 
SET 
    name = 'Greatcare Luer Lock Connector', 
    slug = 'greatcare-luer-lock-connector', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-WD2X4C';
UPDATE product 
SET 
    name = 'Greatcare Lifting Pole', 
    slug = 'greatcare-lifting-pole', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-3X1764';
UPDATE product 
SET 
    name = 'Greatcare Urine Container', 
    slug = 'greatcare-urine-container', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-A23X1T';
UPDATE product 
SET 
    name = 'Greatcare Percutaneous Dilation Tracheostomy Tube', 
    slug = 'greatcare-percutaneous-dilation-tracheostomy-tube', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-9B78E9';
UPDATE product 
SET 
    name = 'Greatcare Arterial Cannula', 
    slug = 'greatcare-arterial-cannula', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-A5YL72';
UPDATE product 
SET 
    name = 'Greatcare Respiratory Exerciser', 
    slug = 'greatcare-respiratory-exerciser', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Greatcare'),
    category_id = (SELECT id FROM category WHERE slug = 'Greatcare')
WHERE sku = 'GRE-CQ0PRH';
UPDATE product 
SET 
    name = 'Fitone Single-use Sterile Powder Free Latex Examination Gloves', 
    slug = 'fitone-single-use-sterile-powder-free-latex-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-LR2UK0';
UPDATE product 
SET 
    name = 'Fitone Anti Static Nitrile Latex Glove For Food Prep', 
    slug = 'fitone-anti-static-nitrile-latex-glove-for-food-prep', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-IYCX2T';
UPDATE product 
SET 
    name = 'Fitone Single-use Sterile Powder Free Latex Examination Gloves', 
    slug = 'fitone-single-use-sterile-powder-free-latex-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-TKQSBS';
UPDATE product 
SET 
    name = 'Fitone Anti Static Nitrile Latex Glove For Food Prep', 
    slug = 'fitone-anti-static-nitrile-latex-glove-for-food-prep', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-PVV0WW';
UPDATE product 
SET 
    name = 'Fitone Unnamed Product', 
    slug = 'fitone-unnamed-product', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-GNA70E';
UPDATE product 
SET 
    name = 'Fitone Senation Extreme Ribbed Condoms', 
    slug = 'fitone-senation-extreme-ribbed-condoms', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-2N8WZY';
UPDATE product 
SET 
    name = 'Fitone In Hospitals Heavy Duty Powdered Latex Surgical Glove', 
    slug = 'fitone-in-hospitals-heavy-duty-powdered-latex-surgical-glove', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-MZJT0C';
UPDATE product 
SET 
    name = 'Fitone Eo Sterile Natural Rubber Latex Surgical Glove', 
    slug = 'fitone-eo-sterile-natural-rubber-latex-surgical-glove', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-FPE2TK';
UPDATE product 
SET 
    name = 'Fitone Anti Static Nitrile Latex Glove For Food Prep', 
    slug = 'fitone-anti-static-nitrile-latex-glove-for-food-prep', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-TH0WCP';
UPDATE product 
SET 
    name = 'Fitone Latex Surgical Glove Powdered', 
    slug = 'fitone-latex-surgical-glove-powdered', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-DX9CVM';
UPDATE product 
SET 
    name = 'Fitone Hypoallergenic Long Cuff Latex Surgical Glove For Tanning', 
    slug = 'fitone-hypoallergenic-long-cuff-latex-surgical-glove-for-tanning', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-KT5I30';
UPDATE product 
SET 
    name = 'Fitone Unnamed Product', 
    slug = 'fitone-unnamed-product', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-I2BGVK';
UPDATE product 
SET 
    name = 'Fitone Multi-purpose Disposable Latex Surgical Glove For Mechanics', 
    slug = 'fitone-multi-purpose-disposable-latex-surgical-glove-for-mechanics', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-6H79IX';
UPDATE product 
SET 
    name = 'Fitone Rafraichissant Ice Condoms', 
    slug = 'fitone-rafraichissant-ice-condoms', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-AXIKZP';
UPDATE product 
SET 
    name = 'Fitone Chauffant Fire Condoms', 
    slug = 'fitone-chauffant-fire-condoms', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-6DWK4A';
UPDATE product 
SET 
    name = 'Fitone Plaisin Intense Big Dotted Condoms', 
    slug = 'fitone-plaisin-intense-big-dotted-condoms', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-7AAW2V';
UPDATE product 
SET 
    name = 'Fitone Contoured Condoms', 
    slug = 'fitone-contoured-condoms', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-213NO1';
UPDATE product 
SET 
    name = 'Fitone Electrical Work Heavy Duty Yellow Latex Examination Glove', 
    slug = 'fitone-electrical-work-heavy-duty-yellow-latex-examination-glove', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-GVE8PE';
UPDATE product 
SET 
    name = 'Fitone Unnamed Product', 
    slug = 'fitone-unnamed-product', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-Q3OC3N';
UPDATE product 
SET 
    name = 'Fitone Unnamed Product', 
    slug = 'fitone-unnamed-product', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-DNYU9D';
UPDATE product 
SET 
    name = 'Fitone Contoured Condoms', 
    slug = 'fitone-contoured-condoms', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-FA9Q33';
UPDATE product 
SET 
    name = 'Fitone Unnamed Product', 
    slug = 'fitone-unnamed-product', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-FWDO5S';
UPDATE product 
SET 
    name = 'Fitone Non-sterile Powder Free Latex Surgical Glove For Mechanics', 
    slug = 'fitone-non-sterile-powder-free-latex-surgical-glove-for-mechanics', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-DOZO46';
UPDATE product 
SET 
    name = 'Fitone Classic Condoms', 
    slug = 'fitone-classic-condoms', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-XUN53M';
UPDATE product 
SET 
    name = 'Fitone Plaisin Intense Big Dotted Condoms', 
    slug = 'fitone-plaisin-intense-big-dotted-condoms', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-0G8Z2E';
UPDATE product 
SET 
    name = 'Fitone Biodegradable Disposable Latex Surgical Glove For Surgery', 
    slug = 'fitone-biodegradable-disposable-latex-surgical-glove-for-surgery', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-NUXLZX';
UPDATE product 
SET 
    name = 'Fitone Multi-purpose Powdered Latex Surgical Glove For Food Prep', 
    slug = 'fitone-multi-purpose-powdered-latex-surgical-glove-for-food-prep', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-FS51FQ';
UPDATE product 
SET 
    name = 'Fitone In Hospitals Hypoallergenic Sterile Latex Surgical Glove', 
    slug = 'fitone-in-hospitals-hypoallergenic-sterile-latex-surgical-glove', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-LM6DXM';
UPDATE product 
SET 
    name = 'Fitone Electrical Work Biodegradable Blue Latex Surgical Glove', 
    slug = 'fitone-electrical-work-biodegradable-blue-latex-surgical-glove', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-D6D0BT';
UPDATE product 
SET 
    name = 'Fitone Ambidextrous Sterile Powdered Latex Examination Glove', 
    slug = 'fitone-ambidextrous-sterile-powdered-latex-examination-glove', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-6I24IH';
UPDATE product 
SET 
    name = 'Fitone Ambidextrous Sterile Powdered Latex Examination Glove', 
    slug = 'fitone-ambidextrous-sterile-powdered-latex-examination-glove', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'FITONE GROUP / Fitone'),
    category_id = (SELECT id FROM category WHERE slug = 'Fitone')
WHERE sku = 'FIT-WXMJX5';
UPDATE product 
SET 
    name = 'Sritrang Latex Powdered Examination Gloves', 
    slug = 'sritrang-latex-powdered-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Sritrang'),
    category_id = (SELECT id FROM category WHERE slug = 'Sritrang')
WHERE sku = 'SRI-1ZCYSD';
UPDATE product 
SET 
    name = 'Sritrang Gamma Ray Sterile Examination Gloves', 
    slug = 'sritrang-gamma-ray-sterile-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Sritrang'),
    category_id = (SELECT id FROM category WHERE slug = 'Sritrang')
WHERE sku = 'SRI-4TVMBG';
UPDATE product 
SET 
    name = 'Sritrang Nitrile Powder - Free Examination Gloves', 
    slug = 'sritrang-nitrile-powder-free-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Sritrang'),
    category_id = (SELECT id FROM category WHERE slug = 'Sritrang')
WHERE sku = 'SRI-M329WK';
UPDATE product 
SET 
    name = 'Sritrang Sugical Gloves', 
    slug = 'sritrang-sugical-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Sritrang'),
    category_id = (SELECT id FROM category WHERE slug = 'Sritrang')
WHERE sku = 'SRI-CXY3V6';
UPDATE product 
SET 
    name = 'Sritrang Latex Powder - Free Examination Gloves', 
    slug = 'sritrang-latex-powder-free-examination-gloves', 
    specifications = '{}',
    brand_id = (SELECT id FROM brand WHERE name = 'Sritrang'),
    category_id = (SELECT id FROM category WHERE slug = 'Sritrang')
WHERE sku = 'SRI-0V4WO2';