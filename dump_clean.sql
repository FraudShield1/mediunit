CREATE TABLE alembic_version (
	version_num VARCHAR(32) NOT NULL, 
	CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num)
);
CREATE TABLE category (
	name VARCHAR NOT NULL, 
	slug VARCHAR NOT NULL, 
	parent_id INTEGER, 
	id INTEGER NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(parent_id) REFERENCES category (id)
);
INSERT INTO category VALUES('Anesthesie','anesthesie',NULL,1);
CREATE TABLE product (
	sku VARCHAR NOT NULL, 
	name VARCHAR NOT NULL, 
	slug VARCHAR NOT NULL, 
	description VARCHAR NOT NULL, 
	category_id INTEGER NOT NULL, 
	base_unit_price NUMERIC(10, 2) NOT NULL, 
	stock_quantity INTEGER NOT NULL, 
	ce_cert_url VARCHAR, 
	tech_sheet_url VARCHAR, 
	image_url VARCHAR, 
	id INTEGER NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(category_id) REFERENCES category (id)
);
INSERT INTO product VALUES('TMT-SPPK-2590','Aiguille De Rachianesthésie À Pointe Crayon G25 - 90mm','tmt-sppk-2590-aiguille-de-rachianesthésie-à-','',1,10,100,NULL,NULL,'/images/Pencil Points different colours.jpeg',1);
INSERT INTO product VALUES('TMT-SPPK-25103','Aiguille De Rachianesthésie Pointe Crayon G25 X 103mm','tmt-sppk-25103-aiguille-de-rachianesthésie-po','',1,10,100,NULL,NULL,'/images/Pencil Points different colours.jpeg',2);
INSERT INTO product VALUES('TMT-SPPK27120','Aiguille De Rachi Anesthésie Pointe Crayon G27 X 120mm','tmt-sppk27120-aiguille-de-rachi-anesthésie-p','',1,10,100,NULL,NULL,'/images/Pencil Points different colours.jpeg',3);
INSERT INTO product VALUES('TMT-SPPK-25120','Aiguille De Rachis 25g 120 Mm','tmt-sppk-25120-aiguille-de-rachis-25g-120-mm','',1,10,100,NULL,NULL,'/images/Pencil Points different colours.jpeg',4);
INSERT INTO product VALUES('TMT-SPQ-1990','Aiguille De Ponction Lombaire G19 - 90mm','tmt-spq-1990-aiguille-de-ponction-lombaire-','',1,10,100,NULL,NULL,'/images/quincke_19g_cream.png',5);
INSERT INTO product VALUES('TMT-SPQ-2090','Aiguille De Ponction Lombaire G20 - 90mm','tmt-spq-2090-aiguille-de-ponction-lombaire-','',1,10,100,NULL,NULL,'/images/quincke_20g_yellow.png',6);
INSERT INTO product VALUES('TMT-SPQ-2290','Aiguille De Ponction Lombaire G22 - 90mm','tmt-spq-2290-aiguille-de-ponction-lombaire-','',1,10,100,NULL,NULL,'/images/quincke_22g_black.png',7);
INSERT INTO product VALUES('TMT-SPQ-2240','Aiguille Ponction Lombaire G22 - 40mm','tmt-spq-2240-aiguille-ponction-lombaire-g22','',1,10,100,NULL,NULL,'/images/quincke_22g_black.png',8);
INSERT INTO product VALUES('TMTSPQK2490','Aiguille Spinale G24- 90mm Biseau Quincke Avec Guide','tmtspqk2490-aiguille-spinale-g24--90mm-bis','',1,10,100,NULL,NULL,'/images/quincke_24g_purple.png',9);
INSERT INTO product VALUES('TMT-SPQ-2590','Aiguille De Ponction Lombaire G25 - 90mm','tmt-spq-2590-aiguille-de-ponction-lombaire-','',1,10,100,NULL,NULL,'/images/quincke_25g_orange.png',10);
INSERT INTO product VALUES('TMTSPQK2590','Aiguille Spinale G25 - 90mm Biseau Quincke Avec Guide','tmtspqk2590-aiguille-spinale-g25---90mm-bi','',1,10,100,NULL,NULL,'/images/quincke_25g_orange.png',11);
INSERT INTO product VALUES('TMTSPQK2690','Aiguille Spinale G26- 90mm Biseau Quincke Avec Guide','tmtspqk2690-aiguille-spinale-g26--90mm-bis','',1,10,100,NULL,NULL,'/images/quincke_26g_brown.png',12);
INSERT INTO product VALUES('TMTSPQK2790','Aiguille Spinale G27 - 90mm Biseau Quincke Avec Guide','tmtspqk2790-aiguille-spinale-g27---90mm-bi','',1,10,100,NULL,NULL,'/images/quincke_27g_grey.png',13);
INSERT INTO product VALUES('TMT-SPPK2690','Aiguille Rachianesthésie Pointe Crayon 26g 90mm','tmt-sppk2690-aiguille-rachianesthésie-point','',1,10,100,NULL,NULL,'/images/Pencil Points different colours.jpeg',14);
INSERT INTO product VALUES('TMT-SPPK2790','Aiguille De Rachianesthésie Pointe Crayon G27 90mm','tmt-sppk2790-aiguille-de-rachianesthésie-po','',1,10,100,NULL,NULL,'/images/Pencil Points different colours.jpeg',15);
INSERT INTO product VALUES('RUS112480-000030','Sonde D''intubation A/b Ch 3','rus112480-000030-sonde-d''intubation-a-b-ch-3','',1,10,100,NULL,NULL,'/images/AB_Tube.jpg',16);
INSERT INTO product VALUES('RUS112480-000025','Sonde D''intubation A/b Ch 2.5','rus112480-000025-sonde-d''intubation-a-b-ch-2.5','',1,10,100,NULL,NULL,'/images/AB_Tube.jpg',17);
INSERT INTO product VALUES('RUS112480-000035','Sonde D''intubation Ch 3,50','rus112480-000035-sonde-d''intubation-ch-3,50','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',18);
INSERT INTO product VALUES('RUS112480-000040','Sonde D''intubation A/b 4.00','rus112480-000040-sonde-d''intubation-a-b-4.00','',1,10,100,NULL,NULL,'/images/AB_Tube.jpg',19);
INSERT INTO product VALUES('RUS112480-000055','Sonde D''intubation A/b 5.5','rus112480-000055-sonde-d''intubation-a-b-5.5','',1,10,100,NULL,NULL,'/images/AB_Tube.jpg',20);
INSERT INTO product VALUES('RUS112480-000045','Sonde D''intubation A/b 4.50','rus112480-000045-sonde-d''intubation-a-b-4.50','',1,10,100,NULL,NULL,'/images/AB_Tube.jpg',21);
INSERT INTO product VALUES('RUS112480-000080','Sonde D''intubation A/b 8','rus112480-000080-sonde-d''intubation-a-b-8','',1,10,100,NULL,NULL,'/images/AB_Tube.jpg',22);
INSERT INTO product VALUES('RUS100380-000020','Sonde D''intubation S/b 2.00','rus100380-000020-sonde-d''intubation-s-b-2.00','',1,10,100,NULL,NULL,'/images/SB_Tube.jpg',23);
INSERT INTO product VALUES('RUS112480-000085','Sonde D''intubation A/b 8.5','rus112480-000085-sonde-d''intubation-a-b-8.5','',1,10,100,NULL,NULL,'/images/AB_Tube.jpg',24);
INSERT INTO product VALUES('RUS100380-000025','Sonde D''intubation S/b 2,50','rus100380-000025-sonde-d''intubation-s-b-2,50','',1,10,100,NULL,NULL,'/images/SB_Tube.jpg',25);
INSERT INTO product VALUES('RUS100380-000030','Sonde D''intubation 3 S/b','rus100380-000030-sonde-d''intubation-3-s-b','',1,10,100,NULL,NULL,'/images/SB_Tube.jpg',26);
INSERT INTO product VALUES('RUS100380-000035','Sonde D''intubation S/b 3.50','rus100380-000035-sonde-d''intubation-s-b-3.50','',1,10,100,NULL,NULL,'/images/SB_Tube.jpg',27);
INSERT INTO product VALUES('RUS100380-000040','Sonde D''intubation 4 S/b','rus100380-000040-sonde-d''intubation-4-s-b','',1,10,100,NULL,NULL,'/images/SB_Tube.jpg',28);
INSERT INTO product VALUES('RUS100380-000045','Sonde D''intubation S/b 4.5','rus100380-000045-sonde-d''intubation-s-b-4.5','',1,10,100,NULL,NULL,'/images/SB_Tube.jpg',29);
INSERT INTO product VALUES('RUS100380-000050','Sonde D''intubation Subglottique 5','rus100380-000050-sonde-d''intubation-subglottiqu','',1,10,100,NULL,NULL,'/images/Subglottic_Tube.png',30);
INSERT INTO product VALUES('RUS104202-000035','Sonde D''intubation Armée 3.5','rus104202-000035-sonde-d''intubation-armée-3.5','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',31);
INSERT INTO product VALUES('RUS104201-000050','Sonde D''intubation Armée 5','rus104201-000050-sonde-d''intubation-armée-5','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',32);
INSERT INTO product VALUES('RUS104201-000060','Sonde D''intubation Armée 6','rus104201-000060-sonde-d''intubation-armée-6','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',33);
INSERT INTO product VALUES('RUS104201-000065','Sonde D''intubation Armée 6.5','rus104201-000065-sonde-d''intubation-armée-6.5','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',34);
INSERT INTO product VALUES('RUS104201-000075','Sonde D''intubation Armée 7.5','rus104201-000075-sonde-d''intubation-armée-7.5','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',35);
INSERT INTO product VALUES('RUS104201-000070','Sonde D''intubation Armée 7','rus104201-000070-sonde-d''intubation-armée-7','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',36);
INSERT INTO product VALUES('RUS104201-000040','Sonde D''intubation Trachéale Armée 4mm','rus104201-000040-sonde-d''intubation-trachéale-a','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',37);
INSERT INTO product VALUES('RUS116100-000410','Kit De Sonde D''intubation Sélective Gauche Ch41','rus116100-000410-kit-de-sonde-d''intubation-séle','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',38);
INSERT INTO product VALUES('RUS104201-000080','Sonde D''intubation Armée 8','rus104201-000080-sonde-d''intubation-armée-8','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',39);
INSERT INTO product VALUES('RUS104201-000045','Sonde D''intubation Tracheale Armée 4.5mm','rus104201-000045-sonde-d''intubation-tracheale-a','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',40);
INSERT INTO product VALUES('RUS116100-000260','Kit De Sonde D''intubation Sélective Gauche Ch26','rus116100-000260-kit-de-sonde-d''intubation-séle','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',41);
INSERT INTO product VALUES('RUS116200-000390','Kit De Sonde D''intubation Sélective Droite Ch39','rus116200-000390-kit-de-sonde-d''intubation-séle','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',42);
INSERT INTO product VALUES('LMA135130','Fast Track Jetable 3 Pour Enfants 30 À 50 Kg','lma135130-fast-track-jetable-3-pour-enfa','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',43);
INSERT INTO product VALUES('LMA135140','Fast Track Jetable 4 Pour Adultes 50 À 70 Kg','lma135140-fast-track-jetable-4-pour-adul','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',44);
INSERT INTO product VALUES('RUS124900-000001','Canule De Guedel N°000 Sans Couleur','rus124900-000001-canule-de-guedel-n°000-sans-co','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',45);
INSERT INTO product VALUES('RUS124900-000010','Canule De Guedel N°1 Noir','rus124900-000010-canule-de-guedel-n°1-noir','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',46);
INSERT INTO product VALUES('RUS124900-000030','Canule De Guedel N°3 Vert','rus124900-000030-canule-de-guedel-n°3-vert','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',47);
INSERT INTO product VALUES('RUS124900-000003','Canule De Guedel N°0 Bleu','rus124900-000003-canule-de-guedel-n°0-bleu','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',48);
INSERT INTO product VALUES('RUS124900-000040','Canule De Guedel N°4 Jaune','rus124900-000040-canule-de-guedel-n°4-jaune','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',49);
INSERT INTO product VALUES('RUS124900-000002','Canule De Guedel N°00 Rose','rus124900-000002-canule-de-guedel-n°00-rose','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',50);
INSERT INTO product VALUES('RUS124900-000020','Canule De Guedel N°2 Blanc','rus124900-000020-canule-de-guedel-n°2-blanc','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',51);
INSERT INTO product VALUES('RUS124900-000050','Canule De Guedel N°5 Rouge','rus124900-000050-canule-de-guedel-n°5-rouge','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',52);
INSERT INTO product VALUES('RUS104201-000055','Sonde D''intubation Armée 5.5','rus104201-000055-sonde-d''intubation-armée-5.5','',1,10,100,NULL,NULL,'/images/Reinforced_Tube.jpg',53);
INSERT INTO product VALUES('RUS191014-000200','Montage De Cathéter 20cm Tubulure Lisse Sortie 22m/15f','rus191014-000200-montage-de-cathéter-20cm-tubul','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',54);
INSERT INTO product VALUES('RUS191014-000150','Monture De Cathéter 15cm Tubulure Rainurée Sortie 22m/15f','rus191014-000150-monture-de-cathéter-15cm-tubul','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',55);
INSERT INTO product VALUES('RUS191014-000100','Montage De Cathéter 10cm Tube Lisse Sortie 22m/15f','rus191014-000100-montage-de-cathéter-10cm-tube-','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',56);
INSERT INTO product VALUES('RUS18402T','Filtre Coude Combiné Échangeur Anti-bactérien Humidificateur Droit/ventilation-humide','rus18402t-filtre-coude-combiné-échangeur','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',57);
INSERT INTO product VALUES('LMA135150','Fast Track Jetable 5 Pour Adultes 70 À 100 Kg','lma135150-fast-track-jetable-5-pour-adul','',1,10,100,NULL,NULL,'/images/Generic_Rusch.jpg',58);
INSERT INTO product VALUES('CULCI1-042/05','Laryngoscope Macintosh – Cullinan | Intubation','culci1-042-05-laryngoscope-macintosh-–-culli','',1,10,100,NULL,NULL,'/images/fallback_CULCI1-04205.jpg',59);
INSERT INTO product VALUES('HUGVL4R432','Laryngoscope Avec Lames Tailles 4 / 3 / 2 – Cullinan','hugvl4r432-laryngoscope-avec-lames-taille','',1,10,100,NULL,NULL,'/images/scraped_HUGVL4R432.jpg',60);
INSERT INTO product VALUES('HUGVL4R0001','Laryngoscope Avec Lames Tailles 00 / 0 / 1 – Cullinan','hugvl4r0001-laryngoscope-avec-lames-taille','',1,10,100,NULL,NULL,'/images/scraped_HUGVL4R0001.jpg',61);
INSERT INTO product VALUES('HUGVL4R541','Laryngoscope Avec Lames Tailles 5 / 4 / 1 – Cullinan','hugvl4r541-laryngoscope-avec-lames-taille','',1,10,100,NULL,NULL,'/images/scraped_HUGVL4R541.jpg',62);
INSERT INTO product VALUES('TMT-EPIS18903','Kit Péridural Egemen','tmt-epis18903-kit-péridural-egemen','',1,10,100,NULL,NULL,'/images/Set.png',63);
CREATE TABLE volumediscount (
	id INTEGER NOT NULL, 
	product_id INTEGER NOT NULL, 
	min_quantity INTEGER NOT NULL, 
	discount_percentage FLOAT NOT NULL, 
	PRIMARY KEY (id), 
	FOREIGN KEY(product_id) REFERENCES product (id)
);
CREATE UNIQUE INDEX ix_category_slug ON category (slug);
CREATE UNIQUE INDEX ix_product_sku ON product (sku);
CREATE UNIQUE INDEX ix_product_slug ON product (slug);
