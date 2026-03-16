
CREATE TABLE jeu (
    id_jeu INT PRIMARY KEY,
    titre VARCHAR(255),
    editeur VARCHAR(255),
    date_sortie DATE
);

CREATE TABLE plateforme (
    id_plateforme INT PRIMARY KEY,
    nom VARCHAR(255),
    id_jeu INT,
    FOREIGN KEY (id_jeu) REFERENCES jeu(id_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE lieu (
    id_lieu INT PRIMARY KEY,
    nom VARCHAR(255),
    description TEXT,
    niveau_minimum INT,
    statut_validation VARCHAR(50),
    id_jeu INT,
    FOREIGN KEY (id_jeu) REFERENCES jeu(id_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE DONNE_ACCES_A (
    id_lieu   INT NOT NULL,
    id_lieu_1 INT NOT NULL,
    PRIMARY KEY (id_lieu, id_lieu_1),
    FOREIGN KEY (id_lieu)
        REFERENCES LIEU(id_lieu)
        ON UPDATE CASCADE,
    FOREIGN KEY (id_lieu_1)
        REFERENCES LIEU(id_lieu)
        ON UPDATE CASCADE
);

CREATE TABLE race (
    id_race INT PRIMARY KEY,
    nom VARCHAR(255)
);

CREATE TABLE personnage (
    id_personnage INT PRIMARY KEY,
    nom VARCHAR(255),
    type_personnage VARCHAR(255),
    description TEXT,
    niveau_minimum INT,
    statut_validation VARCHAR(50),
    id_race INT,
    id_jeu INT,
    FOREIGN KEY (id_race) REFERENCES race(id_race)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (id_jeu) REFERENCES jeu(id_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE donjon (
    id_donjon INT PRIMARY KEY,
    nom VARCHAR(255),
    description TEXT,
    niveau_minimum INT,
    statut_validation VARCHAR(50),
    id_jeu INT,
    FOREIGN KEY (id_jeu) REFERENCES jeu(id_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE ennemi (
    id_ennemi INT PRIMARY KEY,
    nom VARCHAR(255),
    points_vie INT,
    points_attaque INT,
    points_defense INT,
    description TEXT,
    niveau_minimum INT,
    statut_validation VARCHAR(50),
    id_jeu INT,
    FOREIGN KEY (id_jeu) REFERENCES jeu(id_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE boss (
    id_boss INT PRIMARY KEY,
    description TEXT,
    statut_validation VARCHAR(50),
    id_donjon INT,
    id_ennemi INT,
    FOREIGN KEY (id_donjon) REFERENCES donjon(id_donjon)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (id_ennemi) REFERENCES ennemi(id_ennemi)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Heberger (
    id_donjon INT,
    id_ennemi INT,
    PRIMARY KEY (id_donjon, id_ennemi),
    FOREIGN KEY (id_donjon) REFERENCES donjon(id_donjon)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (id_ennemi) REFERENCES ennemi(id_ennemi)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE livre (
    id_livre INT PRIMARY KEY,
    id_jeu INT,
    FOREIGN KEY (id_jeu) REFERENCES jeu(id_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE section (
    id_section INT PRIMARY KEY,
    categorie VARCHAR(255),
    id_livre INT,
    FOREIGN KEY (id_livre) REFERENCES livre(id_livre)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE mini_jeu (
    id_mini_jeu INT PRIMARY KEY,
    nom VARCHAR(255),
    description TEXT,
    niveau_minimum INT,
    statut_validation VARCHAR(50),
);

CREATE TABLE objet (
    id_objet INT PRIMARY KEY,
    nom VARCHAR(255),
    rarete VARCHAR(50),
    description TEXT,
    niveau_minimum INT,
    statut_validation VARCHAR(50),
    id_jeu INT,
    FOREIGN KEY (id_jeu) REFERENCES jeu(id_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Octroyer (
    id_mini_jeu INT,
    id_objet INT,
    PRIMARY KEY (id_mini_jeu, id_objet),
    FOREIGN KEY (id_mini_jeu) REFERENCES mini_jeu(id_mini_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (id_objet) REFERENCES objet(id_objet)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE quete (
    id_quete INT PRIMARY KEY,
    type_quete VARCHAR(255),
    recompense_experience INT,
    description TEXT,
    niveau_minimum INT,
    statut_validation VARCHAR(50),
    id_jeu INT,
    FOREIGN KEY (id_jeu) REFERENCES jeu(id_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE
    FOREIGN KEY (id_mini_jeu) REFERENCES mini_jeu(id_mini_jeu)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE Recompense_par (
    id_quete INT,
    id_objet INT,
    PRIMARY KEY (id_quete, id_objet),
    FOREIGN KEY (id_quete) REFERENCES quete(id_quete)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (id_objet) REFERENCES objet(id_objet)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


