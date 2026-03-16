
-- Scénario d'utilisation n°1


--    Jeux sortis après 2016, triés par date de sortie
--    Données recherchées : liste des jeux récents pour prioriser les prochains guides.
SELECT titre, editeur, date_sortie
FROM JEU
WHERE date_sortie > '2016-12-31'
ORDER BY date_sortie ASC;

--    Liste DISTINCT des éditeurs, triés alphabétiquement
--    Données recherchées : partenaires potentiels / éditeurs couverts par l’entreprise.
SELECT DISTINCT editeur
FROM JEU
ORDER BY editeur ASC;

--    Lieux dont le nom contient "City" ou "Castle"
--    Données recherchées : lieux urbains ou fortifiés pour un chapitre "villes et châteaux".
SELECT nom, description, id_jeu
FROM LIEU
WHERE nom LIKE '%City%' OR nom LIKE '%Castle%'
ORDER BY nom;

--    Ennemis avec une attaque entre 30 et 50, triés par attaque décroissante
--    Données recherchées : ennemis de difficulté intermédiaire pour les sections "ennemis moyens".
SELECT nom, points_attaque, points_vie, id_jeu
FROM ENNEMI
WHERE points_attaque BETWEEN 30 AND 50
ORDER BY points_attaque DESC;

--    Objets rares ou légendaires pour Zelda BOTW et Elden Ring
--    Données recherchées : objets à mettre en avant dans les pages "loot rare".
SELECT nom, rarete, niveau_minimum
FROM OBJET
WHERE rarete IN ('rare', 'legendaire')
  AND id_jeu IN (1, 4)
ORDER BY rarete DESC, niveau_minimum ASC;

--    Mini-jeux validés dont le nom contient "Course"
--    Données recherchées : mini-jeux de type course pour un encadré "défis de vitesse".
SELECT DISTINCT nom, id_jeu, niveau_minimum
FROM MINI_JEU
WHERE statut_validation = 'valide'
  AND nom LIKE '%Course%'
ORDER BY id_jeu, niveau_minimum;


--    Nombre d’ennemis par jeu (seulement les jeux avec au moins 8 ennemis)
--    Données recherchées : richesse du bestiaire par jeu.
SELECT id_jeu, COUNT(*) AS nb_ennemis
FROM ENNEMI
GROUP BY id_jeu
HAVING COUNT(*) >= 8;

--    Moyenne des points de vie des ennemis par jeu (seulement si moyenne > 150)
--    Données recherchées : jeux avec ennemis globalement résistants.
SELECT id_jeu, AVG(points_vie) AS moyenne_pv
FROM ENNEMI
GROUP BY id_jeu
HAVING AVG(points_vie) > 150;

--    Nombre d’objets par rareté et par jeu (seulement si au moins 2 objets)
--    Données recherchées : répartition des objets par rareté pour équilibrer les chapitres.
SELECT id_jeu, rarete, COUNT(*) AS nb_objets
FROM OBJET
GROUP BY id_jeu, rarete
HAVING COUNT(*) >= 2;

--     Total d’expérience donnée par les quêtes principales par jeu
--     (seulement si total > 1000)
--     Données recherchées : jeux avec progression principale très récompensante.
SELECT id_jeu, SUM(recompense_experience) AS total_xp_principale
FROM QUETE
WHERE type_quete = 'principale'
GROUP BY id_jeu
HAVING SUM(recompense_experience) > 1000;

--     Niveau minimum maximal des donjons par jeu (seulement si max > 5)
--     Données recherchées : jeux avec donjons de haut niveau.
SELECT id_jeu, MAX(niveau_minimum) AS niveau_max_donjon
FROM DONJON
GROUP BY id_jeu
HAVING MAX(niveau_minimum) > 5;

--     Nombre de quêtes secondaires par jeu (seulement si au moins 3)
--     Données recherchées : jeux avec beaucoup de contenu secondaire.
SELECT id_jeu, COUNT(*) AS nb_quete_secondaire
FROM QUETE
WHERE type_quete = 'secondaire'
GROUP BY id_jeu
HAVING COUNT(*) >= 3;



--     Donjons avec leur jeu associé
--     Données recherchées : liste des donjons pour chaque jeu.
SELECT D.nom AS donjon, D.niveau_minimum, J.titre AS jeu
FROM DONJON D
JOIN JEU J ON D.id_jeu = J.id_jeu
ORDER BY J.titre, D.niveau_minimum;

--     Ennemis avec le titre du jeu auquel ils appartiennent
--     Données recherchées : bestiaire par jeu pour les pages "ennemis".
SELECT E.nom AS ennemi, E.points_vie, E.points_attaque, J.titre AS jeu
FROM ENNEMI E
JOIN JEU J ON E.id_jeu = J.id_jeu
ORDER BY J.titre, E.points_attaque DESC;

--     Boss avec leur donjon et leur jeu
--     Données recherchées : fiches boss (contexte donjon + jeu).
SELECT B.id_boss, B.description AS boss_description,
       D.nom AS donjon, J.titre AS jeu
FROM BOSS B
JOIN DONJON D ON B.id_donjon = D.id_donjon
JOIN JEU J ON D.id_jeu = J.id_jeu
ORDER BY J.titre, D.nom;

--     Ennemis et donjons où ils apparaissent (relation HEBERGER)
--     Données recherchées : où rencontrer chaque ennemi.
SELECT E.nom AS ennemi, D.nom AS donjon, J.titre AS jeu
FROM HEBERGER H
JOIN ENNEMI E ON H.id_ennemi = E.id_ennemi
JOIN DONJON D ON H.id_donjon = D.id_donjon
JOIN JEU J ON D.id_jeu = J.id_jeu
ORDER BY J.titre, D.nom, E.nom;

--     Objets obtenus via les mini-jeux
--     Données recherchées : récompenses des mini-jeux.
SELECT MJ.nom AS mini_jeu, O.nom AS objet, J.titre AS jeu
FROM OCTROYER OX
JOIN MINI_JEU MJ ON OX.id_mini_jeu = MJ.id_mini_jeu
JOIN OBJET O ON OX.id_objet = O.id_objet
JOIN JEU J ON MJ.id_jeu = J.id_jeu
ORDER BY J.titre, MJ.nom, O.nom;

--     Quêtes et objets de récompense (LEFT JOIN pour garder les quêtes sans objet)
--     Données recherchées : quêtes et leurs récompenses pour les tableaux de fin de chapitre.
SELECT Q.description AS quete, Q.type_quete, O.nom AS objet
FROM QUETE Q
LEFT JOIN RECOMPENSE_PAR R ON Q.id_quete = R.id_quete
LEFT JOIN OBJET O ON R.id_objet = O.id_objet
ORDER BY Q.type_quete, Q.description;



--     Jeux ayant au moins un objet légendaire
--     (IN)
--     Données recherchées : jeux avec loot de très haut niveau.
SELECT titre
FROM JEU
WHERE id_jeu IN (
    SELECT DISTINCT id_jeu
    FROM OBJET
    WHERE rarete = 'legendaire'
);

--     Ennemis n’apparaissant dans aucun donjon
--     (NOT EXISTS)
--     Données recherchées : ennemis "libres" à placer dans des zones ouvertes.
SELECT E.nom, E.id_jeu
FROM ENNEMI E
WHERE NOT EXISTS (
    SELECT 1
    FROM HEBERGER H
    WHERE H.id_ennemi = E.id_ennemi
);

--     Objets dont le niveau minimum est supérieur à TOUS les objets communs
--     (ALL)
--     Données recherchées : objets vraiment exigeants à obtenir/équiper.
SELECT nom, niveau_minimum
FROM OBJET
WHERE niveau_minimum > ALL (
    SELECT niveau_minimum
    FROM OBJET
    WHERE rarete = 'commun'
);

--     Jeux ayant plus d’ennemis que AU MOINS un autre jeu
--     (ANY)
--     Données recherchées : jeux avec bestiaire relativement riche.
SELECT J.titre
FROM JEU J
WHERE (
    SELECT COUNT(*)
    FROM ENNEMI E
    WHERE E.id_jeu = J.id_jeu
) > ANY (
    SELECT COUNT(*)
    FROM ENNEMI E2
    GROUP BY E2.id_jeu
);

--     Quêtes principales dont le jeu ne possède PAS de mini-jeux
--     (NOT IN)
--     Données recherchées : jeux très narratifs sans contenu de type mini-jeu.
SELECT Q.description, Q.id_jeu
FROM QUETE Q
WHERE Q.type_quete = 'principale'
  AND Q.id_jeu NOT IN (
      SELECT DISTINCT id_jeu
      FROM MINI_JEU
  );

--     Jeux ayant au moins un donjon avec un niveau minimum supérieur
--     à la moyenne des niveaux minimum de tous les donjons
--     (EXISTS)
--     Données recherchées : jeux avec des pics de difficulté marqués.
SELECT DISTINCT J.titre
FROM JEU J
WHERE EXISTS (
    SELECT 1
    FROM DONJON D
    WHERE D.id_jeu = J.id_jeu
      AND D.niveau_minimum > (
          SELECT AVG(D2.niveau_minimum)
          FROM DONJON D2
      )
);








-- BONUS !!!


-- Scénario d'utilisation n°2


-- Jeux récents (sortis après 2015), triés par date
-- Données recherchées : jeux modernes à fort potentiel commercial.
SELECT titre, editeur, date_sortie
FROM JEU
WHERE date_sortie > '2015-01-01'
ORDER BY date_sortie ASC;

-- Jeux contenant "Souls", "Ring" ou "Witcher" dans le titre
-- Données recherchées : licences fortes pour des guides premium.
SELECT titre, editeur
FROM JEU
WHERE titre LIKE '%Souls%' OR titre LIKE '%Ring%' OR titre LIKE '%Witcher%';

-- Objets rares ou légendaires, triés par jeu
-- Données recherchées : richesse du loot pour des chapitres "objets rares".
SELECT nom, rarete, id_jeu
FROM OBJET
WHERE rarete IN ('rare', 'legendaire')
ORDER BY id_jeu, rarete DESC;

-- Ennemis avec attaque entre 40 et 60
-- Données recherchées : ennemis de difficulté intermédiaire pour cibler les joueurs "mid-core".
SELECT nom, points_attaque, id_jeu
FROM ENNEMI
WHERE points_attaque BETWEEN 40 AND 60
ORDER BY points_attaque DESC;

-- Donjons de niveau minimum >= 7
-- Données recherchées : contenu "late game" pour guides avancés.
SELECT nom, niveau_minimum, id_jeu
FROM DONJON
WHERE niveau_minimum >= 7
ORDER BY niveau_minimum DESC;



-- Nombre de donjons par jeu
-- Données recherchées : jeux avec beaucoup de zones à explorer.
SELECT id_jeu, COUNT(*) AS nb_donjons
FROM DONJON
GROUP BY id_jeu;

-- Nombre d’ennemis par jeu (seulement si >= 8)
-- Données recherchées : richesse du bestiaire.
SELECT id_jeu, COUNT(*) AS nb_ennemis
FROM ENNEMI
GROUP BY id_jeu
HAVING COUNT(*) >= 8;

-- Nombre d’objets légendaires par jeu
-- Données recherchées : potentiel pour un guide "loot légendaire".
SELECT id_jeu, COUNT(*) AS nb_objets_leg
FROM OBJET
WHERE rarete = 'legendaire'
GROUP BY id_jeu;

-- Total d’XP des quêtes principales par jeu
-- Données recherchées : progression principale riche en récompenses.
SELECT id_jeu, SUM(recompense_experience) AS xp_total_principale
FROM QUETE
WHERE type_quete = 'principale'
GROUP BY id_jeu;

-- Nombre de quêtes secondaires par jeu (>= 3)
-- Données recherchées : potentiel pour un guide "quêtes annexes".
SELECT id_jeu, COUNT(*) AS nb_quete_secondaire
FROM QUETE
WHERE type_quete = 'secondaire'
GROUP BY id_jeu
HAVING COUNT(*) >= 3;




-- Jeux + nombre de donjons (avec titre du jeu)
-- Données recherchées : classement des jeux par densité de donjons.
SELECT J.titre, COUNT(D.id_donjon) AS nb_donjons
FROM JEU J
LEFT JOIN DONJON D ON J.id_jeu = D.id_jeu
GROUP BY J.titre
ORDER BY nb_donjons DESC;

-- Jeux + nombre d’ennemis
-- Données recherchées : bestiaire global par jeu.
SELECT J.titre, COUNT(E.id_ennemi) AS nb_ennemis
FROM JEU J
LEFT JOIN ENNEMI E ON J.id_jeu = E.id_jeu
GROUP BY J.titre
ORDER BY nb_ennemis DESC;

-- Jeux + nombre d’objets légendaires
-- Données recherchées : jeux avec loot haut niveau.
SELECT J.titre, COUNT(O.id_objet) AS nb_legendaire
FROM JEU J
LEFT JOIN OBJET O ON J.id_jeu = O.id_jeu AND O.rarete = 'legendaire'
GROUP BY J.titre
ORDER BY nb_legendaire DESC;

-- Jeux + nombre de mini-jeux
-- Données recherchées : potentiel pour des chapitres "mini-jeux".
SELECT J.titre, COUNT(MJ.id_mini_jeu) AS nb_mini_jeux
FROM JEU J
LEFT JOIN MINI_JEU MJ ON J.id_jeu = MJ.id_jeu
GROUP BY J.titre
ORDER BY nb_mini_jeux DESC;

-- Jeux + XP total des quêtes principales
-- Données recherchées : progression principale attractive.
SELECT J.titre, SUM(Q.recompense_experience) AS xp_total
FROM JEU J
LEFT JOIN QUETE Q ON J.id_jeu = Q.id_jeu AND Q.type_quete = 'principale'
GROUP BY J.titre
ORDER BY xp_total DESC;




-- Jeux ayant au moins un ennemi avec > 250 PV
-- Données recherchées : jeux avec ennemis très résistants (hardcore).
SELECT titre
FROM JEU
WHERE id_jeu IN (
    SELECT DISTINCT id_jeu
    FROM ENNEMI
    WHERE points_vie > 250
);

-- Jeux ayant au moins un objet légendaire
-- Données recherchées : jeux éligibles à un guide "loot légendaire".
SELECT titre
FROM JEU
WHERE id_jeu IN (
    SELECT DISTINCT id_jeu
    FROM OBJET
    WHERE rarete = 'legendaire'
);

-- Jeux ayant plus d’ennemis que la moyenne des jeux
-- Données recherchées : bestiaire au-dessus de la moyenne.
SELECT J.titre
FROM JEU J
WHERE (
    SELECT COUNT(*)
    FROM ENNEMI E
    WHERE E.id_jeu = J.id_jeu
) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM ENNEMI
        GROUP BY id_jeu
    ) AS T
);

-- Jeux sans mini-jeux
-- Données recherchées : jeux à compléter avec du contenu futur.
SELECT titre
FROM JEU
WHERE id_jeu NOT IN (
    SELECT DISTINCT id_jeu
    FROM MINI_JEU
);

-- Jeux ayant au moins un donjon plus difficile que tous les autres donjons
-- Données recherchées : jeux avec un pic de difficulté marquant.
SELECT DISTINCT J.titre
FROM JEU J
WHERE EXISTS (
    SELECT 1
    FROM DONJON D
    WHERE D.id_jeu = J.id_jeu
      AND D.niveau_minimum = (
          SELECT MAX(niveau_minimum) FROM DONJON
      )
);








-- Scénario d'utilisation n°3


-- Objets en statut brouillon
-- Données recherchées : éléments à valider ou corriger avant publication.
SELECT nom, rarete, niveau_minimum
FROM OBJET
WHERE statut_validation = 'brouillon';

-- Ennemis en statut brouillon
-- Données recherchées : ennemis non finalisés.
SELECT nom, points_vie, points_attaque
FROM ENNEMI
WHERE statut_validation = 'brouillon';

-- Donjons en statut brouillon
-- Données recherchées : zones non finalisées.
SELECT nom, niveau_minimum
FROM DONJON
WHERE statut_validation = 'brouillon';

-- Quêtes avec XP < 250
-- Données recherchées : quêtes peu récompensantes à rééquilibrer.
SELECT description, type_quete, recompense_experience
FROM QUETE
WHERE recompense_experience < 250
ORDER BY recompense_experience ASC;

-- Objets avec niveau minimum > 7
-- Données recherchées : objets très exigeants à vérifier.
SELECT nom, rarete, niveau_minimum
FROM OBJET
WHERE niveau_minimum > 7
ORDER BY niveau_minimum DESC;




-- Nombre d’éléments brouillon par rareté d’objet
-- Données recherchées : volume de travail de validation par rareté.
SELECT rarete, COUNT(*) AS nb_brouillon
FROM OBJET
WHERE statut_validation = 'brouillon'
GROUP BY rarete;

-- Moyenne des niveaux minimum des donjons par jeu
-- Données recherchées : difficulté moyenne des donjons par jeu.
SELECT id_jeu, AVG(niveau_minimum) AS niveau_moyen
FROM DONJON
GROUP BY id_jeu;

-- Moyenne des PV des ennemis par jeu
-- Données recherchées : cohérence globale de la difficulté.
SELECT id_jeu, AVG(points_vie) AS moyenne_pv
FROM ENNEMI
GROUP BY id_jeu;

-- Nombre de quêtes brouillon par jeu
-- Données recherchées : charge de travail de finalisation des quêtes.
SELECT id_jeu, COUNT(*) AS nb_quete_brouillon
FROM QUETE
WHERE statut_validation = 'brouillon'
GROUP BY id_jeu;

-- Nombre de mini-jeux brouillon par jeu
-- Données recherchées : mini-jeux à finaliser.
SELECT id_jeu, COUNT(*) AS nb_mj_brouillon
FROM MINI_JEU
WHERE statut_validation = 'brouillon'
GROUP BY id_jeu;




-- Donjons sans boss
-- Données recherchées : zones incomplètes à corriger.
SELECT D.nom
FROM DONJON D
LEFT JOIN BOSS B ON D.id_donjon = B.id_donjon
WHERE B.id_boss IS NULL;

-- Quêtes sans récompense objet
-- Données recherchées : quêtes à enrichir ou valider.
SELECT Q.description, Q.type_quete
FROM QUETE Q
LEFT JOIN RECOMPENSE_PAR R ON Q.id_quete = R.id_quete
WHERE R.id_objet IS NULL;

-- Objets jamais donnés par mini-jeu
-- Données recherchées : objets potentiellement inaccessibles.
SELECT O.nom, O.rarete
FROM OBJET O
LEFT JOIN OCTROYER OX ON O.id_objet = OX.id_objet
WHERE OX.id_objet IS NULL;

-- Ennemis n’apparaissant dans aucun donjon
-- Données recherchées : ennemis orphelins à placer ou justifier.
SELECT E.nom, E.id_jeu
FROM ENNEMI E
LEFT JOIN HEBERGER H ON E.id_ennemi = H.id_ennemi
WHERE H.id_ennemi IS NULL;

-- Mini-jeux sans objets associés
-- Données recherchées : mini-jeux sans récompense à compléter.
SELECT MJ.nom, MJ.id_jeu
FROM MINI_JEU MJ
LEFT JOIN OCTROYER OX ON MJ.id_mini_jeu = OX.id_mini_jeu
WHERE OX.id_mini_jeu IS NULL;




-- Objets dont le niveau minimum est supérieur à la moyenne des objets du même jeu
-- Données recherchées : objets potentiellement trop exigeants.
SELECT O.nom, O.id_jeu, O.niveau_minimum
FROM OBJET O
WHERE O.niveau_minimum > (
    SELECT AVG(niveau_minimum)
    FROM OBJET
    WHERE id_jeu = O.id_jeu
);

-- Ennemis plus faibles que tous les ennemis du même jeu
-- Données recherchées : ennemis trop faibles à rééquilibrer.
SELECT E.nom, E.id_jeu, E.points_vie
FROM ENNEMI E
WHERE E.points_vie < ALL (
    SELECT points_vie
    FROM ENNEMI
    WHERE id_jeu = E.id_jeu
      AND id_ennemi <> E.id_ennemi
);

-- Jeux ayant au moins un élément en statut brouillon (objet, ennemi ou donjon)
-- Données recherchées : jeux non totalement finalisés.
SELECT DISTINCT J.titre
FROM JEU J
WHERE EXISTS (
    SELECT 1 FROM OBJET O WHERE O.id_jeu = J.id_jeu AND O.statut_validation = 'brouillon'
)
OR EXISTS (
    SELECT 1 FROM ENNEMI E WHERE E.id_jeu = J.id_jeu AND E.statut_validation = 'brouillon'
)
OR EXISTS (
    SELECT 1 FROM DONJON D WHERE D.id_jeu = J.id_jeu AND D.statut_validation = 'brouillon'
);

-- Quêtes principales avec XP inférieur à la moyenne des quêtes principales du même jeu
-- Données recherchées : quêtes principales sous-récompensées.
SELECT Q.description, Q.id_jeu, Q.recompense_experience
FROM QUETE Q
WHERE Q.type_quete = 'principale'
  AND Q.recompense_experience < (
      SELECT AVG(recompense_experience)
      FROM QUETE
      WHERE id_jeu = Q.id_jeu
        AND type_quete = 'principale'
  );

-- Jeux dont tous les donjons sont validés
-- Données recherchées : jeux prêts pour publication côté donjons.
SELECT J.titre
FROM JEU J
WHERE NOT EXISTS (
    SELECT 1
    FROM DONJON D
    WHERE D.id_jeu = J.id_jeu
      AND D.statut_validation <> 'valide'
);
