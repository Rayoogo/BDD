
ALTER TABLE jeu
    ALTER COLUMN titre SET NOT NULL,
    ALTER COLUMN editeur SET NOT NULL,
    ALTER COLUMN date_sortie SET NOT NULL;


ALTER TABLE jeu
    ADD CONSTRAINT chk_jeu_titre_len CHECK (CHAR_LENGTH(titre) <= 100),
    ADD CONSTRAINT chk_jeu_editeur_len CHECK (CHAR_LENGTH(editeur) <= 100);


ALTER TABLE jeu
    ADD CONSTRAINT uq_jeu_titre_editeur UNIQUE (titre, editeur);


ALTER TABLE plateforme
    ALTER COLUMN nom SET NOT NULL;

ALTER TABLE plateforme
    ADD CONSTRAINT chk_plateforme_nom_len CHECK (CHAR_LENGTH(nom) <= 50);


ALTER TABLE plateforme
    ADD CONSTRAINT uq_plateforme_nom_jeu UNIQUE (nom, id_jeu);


ALTER TABLE lieu
    ALTER COLUMN nom SET NOT NULL,
    ALTER COLUMN statut_validation SET NOT NULL;

ALTER TABLE lieu
    ADD CONSTRAINT chk_lieu_nom_len CHECK (CHAR_LENGTH(nom) <= 100),
    ADD CONSTRAINT chk_lieu_statut_len CHECK (CHAR_LENGTH(statut_validation) <= 15),
    ADD CONSTRAINT chk_lieu_niveau_min CHECK (niveau_minimum >= 0 AND niveau_minimum <= 999);


ALTER TABLE lieu
    ADD CONSTRAINT chk_lieu_statut_val CHECK (statut_validation IN ('valide', 'invalide', 'brouillon'));


ALTER TABLE DONNE_ACCES_A
ADD COLUMN min_lieu INT GENERATED ALWAYS AS (LEAST(id_lieu, id_lieu_1)) STORED,
ADD COLUMN max_lieu INT GENERATED ALWAYS AS (GREATEST(id_lieu, id_lieu_1)) STORED;

ALTER TABLE DONNE_ACCES_A
ADD CONSTRAINT uq_daa_unique_pair UNIQUE (min_lieu, max_lieu);

ALTER TABLE DONNE_ACCES_A
    ADD CONSTRAINT chk_daa_not_self CHECK (id_lieu <> id_lieu_1),


ALTER TABLE race
    ALTER COLUMN nom SET NOT NULL;

ALTER TABLE race
    ADD CONSTRAINT chk_race_nom_len CHECK (CHAR_LENGTH(nom) <= 50);


ALTER TABLE personnage
    ALTER COLUMN nom SET NOT NULL,
    ALTER COLUMN type_personnage SET NOT NULL,
    ALTER COLUMN statut_validation SET NOT NULL;

ALTER TABLE personnage
    ADD CONSTRAINT chk_perso_nom_len CHECK (CHAR_LENGTH(nom) <= 100),
    ADD CONSTRAINT chk_perso_type_len CHECK (CHAR_LENGTH(type_personnage) <= 20),
    ADD CONSTRAINT chk_perso_statut_len CHECK (CHAR_LENGTH(statut_validation) <= 15),
    ADD CONSTRAINT chk_perso_niveau_min CHECK (niveau_minimum >= 0 AND niveau_minimum <= 999);


ALTER TABLE personnage
    ADD CONSTRAINT chk_perso_type_val CHECK (
        type_personnage IN ('jouable', 'allie', 'ennemi', 'neutre')
    );


ALTER TABLE personnage
    ADD CONSTRAINT chk_perso_statut_val CHECK (
        statut_validation IN ('valide', 'invalide', 'brouillon')
    );


ALTER TABLE personnage
    ADD CONSTRAINT uq_perso_nom_jeu UNIQUE (nom, id_jeu);


ALTER TABLE donjon
    ALTER COLUMN nom SET NOT NULL,
    ALTER COLUMN statut_validation SET NOT NULL;

ALTER TABLE donjon
    ADD CONSTRAINT chk_donjon_nom_len CHECK (CHAR_LENGTH(nom) <= 100),
    ADD CONSTRAINT chk_donjon_statut_len CHECK (CHAR_LENGTH(statut_validation) <= 15),
    ADD CONSTRAINT chk_donjon_niveau_min CHECK (niveau_minimum >= 0 AND niveau_minimum <= 999);

ALTER TABLE donjon
    ADD CONSTRAINT chk_donjon_statut_val CHECK (
        statut_validation IN ('valide', 'invalide', 'brouillon')
    );


ALTER TABLE donjon
    ADD CONSTRAINT uq_donjon_nom_jeu UNIQUE (nom, id_jeu);


ALTER TABLE ennemi
    ALTER COLUMN nom SET NOT NULL,
    ALTER COLUMN statut_validation SET NOT NULL,
    ALTER COLUMN points_vie SET NOT NULL,
    ALTER COLUMN points_attaque SET NOT NULL,
    ALTER COLUMN points_defense SET NOT NULL;

ALTER TABLE ennemi
    ADD CONSTRAINT chk_ennemi_nom_len CHECK (CHAR_LENGTH(nom) <= 100),
    ADD CONSTRAINT chk_ennemi_statut_len CHECK (CHAR_LENGTH(statut_validation) <= 15),
    ADD CONSTRAINT chk_ennemi_niveau_min CHECK (niveau_minimum >= 0 AND niveau_minimum <= 999),
    ADD CONSTRAINT chk_ennemi_pv_pos CHECK (points_vie >= 0 AND points_vie <= 999999),
    ADD CONSTRAINT chk_ennemi_atk_pos CHECK (points_attaque >= 0 AND points_attaque <= 999999),
    ADD CONSTRAINT chk_ennemi_def_pos CHECK (points_defense >= 0 AND points_defense <= 999999);

ALTER TABLE ennemi
    ADD CONSTRAINT chk_ennemi_statut_val CHECK (
        statut_validation IN ('valide', 'invalide', 'brouillon')
    );


ALTER TABLE ennemi
    ADD CONSTRAINT uq_ennemi_nom_jeu UNIQUE (nom, id_jeu);


ALTER TABLE boss
    ALTER COLUMN statut_validation SET NOT NULL;

ALTER TABLE boss
    ADD CONSTRAINT chk_boss_statut_len CHECK (CHAR_LENGTH(statut_validation) <= 15),
    ADD CONSTRAINT chk_boss_statut_val CHECK (
        statut_validation IN ('valide', 'invalide', 'brouillon')
    );


ALTER TABLE livre
    ADD CONSTRAINT chk_livre_id_len CHECK (id_livre BETWEEN 0 AND 999999);


ALTER TABLE section
    ALTER COLUMN categorie SET NOT NULL;

ALTER TABLE section
    ADD CONSTRAINT chk_section_cat_len CHECK (CHAR_LENGTH(categorie) <= 50);


ALTER TABLE mini_jeu
    ALTER COLUMN nom SET NOT NULL,
    ALTER COLUMN statut_validation SET NOT NULL;

ALTER TABLE mini_jeu
    ADD CONSTRAINT chk_mj_nom_len CHECK (CHAR_LENGTH(nom) <= 100),
    ADD CONSTRAINT chk_mj_statut_len CHECK (CHAR_LENGTH(statut_validation) <= 15),
    ADD CONSTRAINT chk_mj_niveau_min CHECK (niveau_minimum >= 0 AND niveau_minimum <= 999);

ALTER TABLE mini_jeu
    ADD CONSTRAINT chk_mj_statut_val CHECK (
        statut_validation IN ('valide', 'invalide', 'brouillon')
    );


ALTER TABLE objet
    ALTER COLUMN nom SET NOT NULL,
    ALTER COLUMN rarete SET NOT NULL,
    ALTER COLUMN statut_validation SET NOT NULL;

ALTER TABLE objet
    ADD CONSTRAINT chk_objet_nom_len CHECK (CHAR_LENGTH(nom) <= 100),
    ADD CONSTRAINT chk_objet_rarete_len CHECK (CHAR_LENGTH(rarete) <= 20),
    ADD CONSTRAINT chk_objet_statut_len CHECK (CHAR_LENGTH(statut_validation) <= 15),
    ADD CONSTRAINT chk_objet_niveau_min CHECK (niveau_minimum >= 0 AND niveau_minimum <= 999);


ALTER TABLE objet
    ADD CONSTRAINT chk_objet_rarete_val CHECK (
        rarete IN ('commun', 'rare', 'epique', 'legendaire')
    );


ALTER TABLE objet
    ADD CONSTRAINT chk_objet_statut_val CHECK (
        statut_validation IN ('valide', 'invalide', 'brouillon')
    );


ALTER TABLE objet
    ADD CONSTRAINT uq_objet_nom_jeu UNIQUE (nom, id_jeu);


ALTER TABLE quete
    ALTER COLUMN type_quete SET NOT NULL,
    ALTER COLUMN statut_validation SET NOT NULL;

ALTER TABLE quete
    ADD CONSTRAINT chk_quete_type_len CHECK (CHAR_LENGTH(type_quete) <= 20),
    ADD CONSTRAINT chk_quete_statut_len CHECK (CHAR_LENGTH(statut_validation) <= 15),
    ADD CONSTRAINT chk_quete_niveau_min CHECK (niveau_minimum >= 0 AND niveau_minimum <= 999),
    ADD CONSTRAINT chk_quete_xp_pos CHECK (recompense_experience >= 0 AND recompense_experience <= 999999);


ALTER TABLE quete
    ADD CONSTRAINT chk_quete_type_val CHECK (
        type_quete IN ('principale', 'secondaire')
    );


ALTER TABLE quete
    ADD CONSTRAINT chk_quete_statut_val CHECK (
        statut_validation IN ('valide', 'invalide', 'brouillon')
    );

