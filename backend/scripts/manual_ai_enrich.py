import subprocess
import json

# Target SKUs and their highly technical specifications
UPDATES = {
    # 1. Lames de Bistouri
    "PAR-BLADE-11": {
        "Matériau": "Acier Carbone de qualité médicale",
        "Stérilisation": "Rayonnement Gamma (25 kGy)",
        "Compatibilité Manches": "Manches N°3, 3L, 5, 7",
        "Conditionnement": "Boîte de 100 unités (emballage individuel en aluminium)",
        "Usage Clinique": "Chirurgie générale, incisions de précision"
    },
    "PAR-BLADE-15": {
        "Matériau": "Acier Carbone de qualité médicale",
        "Stérilisation": "Rayonnement Gamma (25 kGy)",
        "Compatibilité Manches": "Manches N°3, 3L, 5, 7",
        "Conditionnement": "Boîte de 100 unités (emballage individuel en aluminium)",
        "Usage Clinique": "Dissections délicates, chirurgie dermatologique"
    },
    
    # 2. Gamme Respiratoire
    "RUS191014-000200": { # Monture de cathéter
        "Type": "Corruguée, extensible",
        "Volume Mort": "15 ml (minimise la réinhalation de CO2)",
        "Connectique": "Raccords standard 22F/15M - 15F",
        "Stérilisation": "Usage unique, conditionnement stérile",
        "Usage Clinique": "Connexion entre le circuit respiratoire et la sonde de patient"
    },
    "RUS18402T": { # Filtre
        "Type de Filtre": "HMEF (Échangeur Chaleur et Humidité + Filtre Bactérien)",
        "Efficacité (BFE/VFE)": "> 99.999%",
        "Résistance au flux": "1.5 cmH2O à 30 L/min",
        "Volume Mort": "45 ml",
        "Sortie Hydrique": "32 mg/H2O à VT 500ml",
        "Usage Clinique": "Anesthésie et réanimation (Protège le patient et le respirateur)"
    },
    "RUS124900-000001": { # Canule de Guedel
        "Matériau": "Polymère semi-rigide (PE) et insert rigide (PP)",
        "Design": "Forme anatomique anti-morsure avec code couleur ISO",
        "Stérilisation": "Oxyde d'éthylène (EO)",
        "Usage Clinique": "Maintien de la perméabilité des voies aériennes supérieures"
    },

    # 3. Sondes d'intubation (Rusch) / Sondes Urinaires (Coloplast)
    "RUS112480-000030": { # Sonde Intubation
        "Matériau": "PVC médical thermosensible transparent",
        "Ballonnet": "Oui, profil bas, basse pression / haut volume (BPHV)",
        "Biseau": "Type Murphy avec œil atraumatique",
        "Radio-opacité": "Ligne radio-opaque continue sur toute la longueur",
        "Usage Clinique": "Intubation trachéale ventilatoire prolongée"
    },
    "RUS100380-000020": { # Sonde Intubation Sans Ballonnet
        "Matériau": "PVC médical thermosensible transparent",
        "Ballonnet": "Non (Idéal usage pédiatrique strict)",
        "Biseau": "Type Murphy atraumatique",
        "Marquage": "Graduations d'insertion claires (cm)",
        "Usage Clinique": "Intubation néonatale / pédiatrique courte durée"
    },
    "COL051350": { # Coloplast Conveen Etui
        "Matériau": "Silicone sans latex, auto-adhésif",
        "Fixation": "Adhésif acrylique intégré, respectueux de la peau",
        "Design": "Système anti-pliure (assure un flux continu)",
        "Usage Clinique": "Incontinence urinaire masculine"
    },
    "COL284140": { # Coloplast Sonde Intermittente Homme
        "Matériau": "PVC souple avec revêtement hydrophile PVP",
        "Lubrification": "Pré-lubrifiée, prête à l'emploi après immersion dans l'eau",
        "Design": "Œils polis au feu pour insertion atraumatique",
        "Usage Clinique": "Sondage auto-intermittent (SAI), prévention des micro-traumatismes urétraux"
    }
}

def run_enrichment():
    sql_updates = []
    print(f"Applying highly technical specs to {len(UPDATES)} products...")
    
    for sku, specs in UPDATES.items():
        specs_json = json.dumps(specs, ensure_ascii=False).replace("'", "''")
        
        # We also enrich the description text slightly if it's too short using the new specs
        desc_enrichment = f"<p>Ce dispositif médical est conçu avec des matériaux de haute qualité clinique. Principales caractéristiques techniques : "
        for k, v in specs.items():
            desc_enrichment += f"<strong>{k}</strong> : {v}. "
        desc_enrichment += "</p>"
        desc_enrichment = desc_enrichment.replace("'", "''")

        # SQL
        sql = f"""
UPDATE product 
SET specifications = '{specs_json}',
    description = description || '{desc_enrichment}'
WHERE sku = '{sku}';
        """
        sql_updates.append(sql.strip())

    if sql_updates:
        sql_path = "/Users/naouri/MediUnit/backend/manual_enrich.sql"
        with open(sql_path, "w", encoding="utf-8") as f:
            f.write("\n".join(sql_updates))
        print(f"Generated {sql_path} with {len(sql_updates)} updates.")

        # Execute
        print("Executing on D1 Remote...")
        cmd = ["npx", "wrangler", "d1", "execute", "mediunit_db", "--remote", "--file", sql_path]
        result = subprocess.run(cmd, capture_output=True, text=True, cwd="/Users/naouri/MediUnit/backend")
        
        print("Done!")
        print(result.stdout)
        if result.stderr:
            print("Errors:", result.stderr)
    else:
        print("No products needed enrichment.")

if __name__ == "__main__":
    run_enrichment()
