INSERT INTO JEU (id_jeu, titre, editeur, date_sortie) VALUES
(1,  'The Legend of Zelda: Breath of the Wild', 'Nintendo',          '2017-03-03'),
(2,  'Hollow Knight',                           'Team Cherry',       '2017-02-24'),
(3,  'Dark Souls III',                          'FromSoftware',      '2016-03-24'),
(4,  'Elden Ring',                              'FromSoftware',      '2022-02-25'),
(5,  'The Witcher 3: Wild Hunt',                'CD Projekt RED',    '2015-05-19'),
(6,  'The Elder Scrolls V: Skyrim',             'Bethesda',          '2011-11-11'),
(7,  'Monster Hunter: World',                   'Capcom',            '2018-01-26'),
(8,  'Final Fantasy XV',                        'Square Enix',       '2016-11-29'),
(9,  'Diablo III',                              'Blizzard',          '2012-05-15'),
(10, 'Genshin Impact',                          'HoYoverse',         '2020-09-28');


INSERT INTO RACE (id_race, nom) VALUES
(1, 'Humain'),
(2, 'Elfe'),
(3, 'Orc'),
(4, 'Nain'),
(5, 'Démon'),
(6, 'Ange'),
(7, 'Golem'),
(8, 'Race spéciale'),
(9, 'Dragonide'),
(10,'Hybride');


INSERT INTO PLATEFORME (id_plateforme, nom, id_jeu) VALUES
(1,  'Nintendo Switch', 1),
(2,  'Wii U',           1),
(3,  'PC',              2),
(4,  'Nintendo Switch', 2),
(5,  'PC',              3),
(6,  'PS4',             3),
(7,  'PC',              4),
(8,  'PS5',             4),
(9,  'PC',              5),
(10, 'PS4',             5),
(11, 'PC',              6),
(12, 'Xbox 360',        6),
(13, 'PS4',             7),
(14, 'Xbox One',        7),
(15, 'PS4',             8),
(16, 'Xbox One',        8),
(17, 'PC',              9),
(18, 'PS4',             9),
(19, 'PC',              10),
(20, 'PS4',             10);



INSERT INTO LIEU (id_lieu, nom, description, niveau_minimum, statut_validation, id_jeu) VALUES
(1,'Plateau du Prélude','Zone de départ de Link',1,'valide',1),
(2,'Château d''Hyrule','Ancien château envahi par Ganon',8,'valide',1),
(3,'Village Cocorico','Village paisible en montagne',3,'brouillon',1),

(4,'Dirtmouth','Village au-dessus d''Hallownest',1,'valide',2),
(5,'Greenpath','Zone verdoyante et toxique',3,'valide',2),
(6,'City of Tears','Cité pluvieuse souterraine',5,'brouillon',2),

(7,'Firelink Shrine','Sanctuaire central',1,'valide',3),
(8,'Lothric Castle','Château des princes jumeaux',7,'valide',3),
(9,'Irithyll of the Boreal Valley','Cité glaciale',6,'brouillon',3),

(10,'Limgrave','Région de départ',1,'valide',4),
(11,'Stormveil Castle','Château de Godrick',5,'valide',4),
(12,'Leyndell','Capitale royale',9,'brouillon',4),

(13,'Blanchefleur','Région de tutoriel',1,'valide',5),
(14,'Novigrad','Grande cité commerçante',5,'valide',5),
(15,'Skellige','Archipel nordique',7,'brouillon',5),

(16,'Blancherive','Ville centrale de Bordeciel',1,'valide',6),
(17,'Vendeaume','Ville de l''Est',4,'valide',6),
(18,'Sovngarde','Au-delà des Nordiques',9,'brouillon',6),

(19,'Ancient Forest','Forêt dense et verticale',2,'valide',7),
(20,'Wildspire Waste','Désert marécageux',4,'valide',7),
(21,'Elder''s Recess','Zone volcanique des dragons anciens',8,'brouillon',7),

(22,'Insomnia','Capitale de Lucis',1,'valide',8),
(23,'Duscae','Région ouverte',3,'valide',8),
(24,'Altissia','Ville sur l''eau',6,'brouillon',8),

(25,'New Tristram','Village de départ',1,'valide',9),
(26,'Caldeum','Cité du désert',4,'valide',9),
(27,'High Heavens','Royaume céleste',8,'brouillon',9),

(28,'Mondstadt','Cité de l''Anémo',1,'valide',10),
(29,'Liyue Harbor','Port de Liyue',4,'valide',10),
(30,'Inazuma City','Capitale de l''Électro',7,'brouillon',10);




INSERT INTO DONNE_ACCES_A (id_lieu, id_lieu_1) VALUES
(1,2), (2,3), (3,1), 

(4,5), (5,6), (6,4),

(7,8), (8,9), (9,7),

(10,11), (11,12), (12,10),

(13,14), (14,15), (15,13),

(16,17), (17,18), (18,16),

(19,20), (20,21), (21,19),

(22,23), (23,24), (24,22),

(25,26), (26,27), (27,25),

(28,29), (29,30), (30,28);



INSERT INTO DONJON (id_donjon, nom, description, niveau_minimum, statut_validation, id_jeu) VALUES
(1,  'Vah''Ruta',                'Bête Divine des Zora',                   3,  'valide',    1),
(2,  'Greenpath Hive',           'Zone profonde infestée d''insectes',     4,  'valide',    2),
(3,  'Cathedral of the Deep',    'Cathédrale maudite',                     6,  'brouillon', 3),
(4,  'Stormveil Depths',         'Sous-sols du château de Stormveil',      5,  'valide',    4),
(5,  'Kaer Morhen Ruins',        'Ruines de la forteresse des sorceleurs', 7,  'valide',    5),
(6,  'Bleak Falls Barrow',       'Tertre ancien nordique',                 3,  'valide',    6),
(7,  'Elder Dragon Nest',        'Repaire de dragon ancien',               8,  'brouillon', 7),
(8,  'Costlemark Tower',         'Donjon caché de Lucis',                  7,  'valide',    8),
(9,  'Arreat Crater Depths',     'Profondeurs du cratère d''Arreat',       8,  'valide',    9),
(10, 'Domain of the Wolf',       'Domaine d''un loup divin',               9,  'brouillon', 10);


INSERT INTO ENNEMI (id_ennemi, nom, points_vie, points_attaque, points_defense, description, niveau_minimum, statut_validation, id_jeu) VALUES
(1,  'Bokoblin',          80,  15, 5,  'Monstre commun d''Hyrule',          2, 'valide',    1),
(2,  'Moblin',            140, 25, 10, 'Grand monstre brutal',              4, 'valide',    1),
(3,  'Lynel',             260, 55, 30, 'Redoutable centaure guerrier',      8, 'brouillon', 1),
(4,  'Ombre élémentaire de Ganon',  220, 60, 35, 'Ancien gardien mécanique', 7, 'valide',   1),
(5,  'Chuchu de feu',     60,  10, 5,  'Gelée élémentaire',                 2, 'valide',    1),
(6,  'Lizalfos',          120, 22, 12, 'Reptile agile',                     3, 'brouillon', 1),
(7,  'Hinox',             280, 50, 25, 'Géant cyclope',                     7, 'valide',    1),
(8,  'Gardien',           100, 30, 8,  'Ancien gardien mécanique',          4, 'valide',    1),
(9,  'Yiga Footsoldier',  110, 28, 10, 'Membre du clan Yiga',               4, 'brouillon', 1),
(10, 'Molduga',           300, 65, 30, 'Monstre des sables',                9, 'valide',    1),

(11, 'Vengefly',          60,  12, 5,  'Insecte volant agressif',           2, 'valide',    2),
(12, 'Husk Guard',        90,  18, 8,  'Husk armé',                         3, 'valide',    2),
(13, 'Mantis Warrior',    120, 25, 10, 'Guerrier mantis',                   4, 'brouillon', 2),
(14, 'Soul Twister',      100, 28, 8,  'Mage de la Soul Sanctum',           4, 'valide',    2),
(15, 'Crystal Guardian',  160, 35, 15, 'Golem de cristal',                  5, 'valide',    2),
(16, 'Infected Balloon',  80,  20, 5,  'Ennemi explosif',                   4, 'brouillon', 2),
(17, 'Watcher Knight',    200, 40, 20, 'Chevalier mécanique',               6, 'valide',    2),
(18, 'Hive Soldier',      130, 26, 12, 'Soldat de la ruche',                4, 'valide',    2),
(19, 'Deep Hunter',       140, 30, 14, 'Prédateur des profondeurs',         5, 'brouillon', 2),
(20, 'Lost Kin',          220, 45, 18, 'Forme corrompue du chevalier',      7, 'valide',    2),

(21, 'Hollow Soldier',    90,  20, 10, 'Soldat déchu',                      2, 'valide',    3),
(22, 'Lothric Knight',    150, 35, 20, 'Chevalier de Lothric',              4, 'valide',    3),
(23, 'Silver Knight',     180, 40, 25, 'Chevalier d''Anor Londo',           5, 'brouillon', 3),
(24, 'Pontiff Knight',    170, 38, 22, 'Chevalier du Pontife Sulyvahn',     5, 'valide',    3),
(25, 'Deep Accursed',     220, 45, 18, 'Créature maudite',                  6, 'valide',    3),
(26, 'Ghru',              120, 25, 12, 'Bête corrompue',                    3, 'brouillon', 3),
(27, 'Outrider Knight',   200, 42, 20, 'Chevalier bestial',                 6, 'valide',    3),
(28, 'Corvian Knight',    140, 30, 15, 'Chevalier corbeau',                 4, 'valide',    3),
(29, 'Pus of Man',        160, 35, 10, 'Mutation monstrueuse',              5, 'brouillon', 3),
(30, 'Black Knight',      210, 48, 25, 'Chevalier noir',                    7, 'valide',    3),

(31, 'Godrick Soldier',   100, 22, 12, 'Soldat de Godrick',                 2, 'valide',    4),
(32, 'Misbegotten',       120, 25, 10, 'Créature déchue',                   3, 'valide',    4),
(33, 'Banished Knight',   180, 40, 22, 'Chevalier banni',                   5, 'brouillon', 4),
(34, 'Troll',             220, 45, 25, 'Géant brutal',                      6, 'valide',    4),
(35, 'Erdtree Avatar',    260, 50, 30, 'Avatar de l''Arbre-Monde',         7, 'valide',    4),
(36, 'Alberich',          150, 35, 18, 'Mage sanguinaire',                  5, 'brouillon', 4),
(37, 'Cleanrot Knight',   190, 42, 24, 'Chevalier pourri',                  6, 'valide',    4),
(38, 'Crucible Knight',   230, 50, 30, 'Chevalier du Creuset',              8, 'valide',    4),
(39, 'Fell Omen Spawn',   160, 38, 20, 'Serviteur de Margit',               5, 'brouillon', 4),
(40, 'Dragonkin Soldier', 260, 55, 32, 'Soldat dragonide',                  8, 'valide',    4),

(41, 'Nekker',            80,  18, 8,  'Petit monstre des bois',           2, 'valide',    5),
(42, 'Drowner',           90,  20, 10, 'Monstre aquatique',                2, 'valide',    5),
(43, 'Griffin',           200, 40, 20, 'Monstre volant',                   5, 'brouillon', 5),
(44, 'Leshen',            230, 45, 25, 'Esprit de la forêt',               7, 'valide',    5),
(45, 'Fiend',             240, 48, 22, 'Bête géante',                      7, 'valide',    5),
(46, 'Wraith',            110, 25, 10, 'Spectre',                          3, 'brouillon', 5),
(47, 'Noonwraith',        130, 28, 12, 'Spectre du jour',                  4, 'valide',    5),
(48, 'Wild Hunt Warrior', 180, 38, 20, 'Guerrier de la Chasse Sauvage',    6, 'valide',    5),
(49, 'Ekimmara',          190, 40, 18, 'Vampire supérieur',                6, 'brouillon', 5),
(50, 'Forktail',          210, 42, 22, 'Dragon mineur',                    7, 'valide',    5),

(51, 'Bandit',            90,  20, 10, 'Humain hostile',                   2, 'valide',    6),
(52, 'Draugr',            110, 22, 12, 'Mort-vivant nordique',             3, 'valide',    6),
(53, 'Frost Troll',       180, 35, 20, 'Troll des neiges',                 5, 'brouillon', 6),
(54, 'Dragon',            260, 55, 30, 'Dragon de Bordeciel',              8, 'valide',    6),
(55, 'Géant',             240, 48, 25, 'Géant des plaines',                7, 'valide',    6),
(56, 'Sabrecat',          130, 28, 14, 'Félin prédateur',                  4, 'brouillon', 6),
(57, 'Vampire',           150, 32, 16, 'Vampire nordique',                 5, 'valide',    6),
(58, 'Spriggan',          140, 30, 15, 'Esprit de la nature',              4, 'valide',    6),
(59, 'Ice Wraith',        120, 26, 12, 'Esprit de glace',                  4, 'brouillon', 6),
(60, 'Dragon Priest',     220, 45, 25, 'Prêtre-dragon',                    7, 'valide',    6),

(61, 'Jagras',            80,  18, 8,  'Petit monstre de meute',           2, 'valide',    7),
(62, 'Great Jagras',      160, 30, 18, 'Grand prédateur',                  3, 'valide',    7),
(63, 'Pukei-Pukei',       180, 32, 20, 'Wyverne venimeuse',                4, 'brouillon', 7),
(64, 'Anjanath',          220, 40, 25, 'Wyverne brutale',                  5, 'valide',    7),
(65, 'Rathalos',          260, 50, 30, 'Roi des cieux',                    7, 'valide',    7),
(66, 'Tobi-Kadachi',      190, 38, 22, 'Wyverne électrique',               5, 'brouillon', 7),
(67, 'Legiana',           210, 42, 24, 'Wyverne de glace',                 6, 'valide',    7),
(68, 'Odogaron',          200, 45, 20, 'Prédateur rapide',                 6, 'valide',    7),
(69, 'Nergigante',        300, 60, 35, 'Dragon ancien féroce',             8, 'brouillon', 7),
(70, 'Kushala Daora',     320, 65, 38, 'Dragon ancien de vent',            9, 'valide',    7),

(71, 'Goblin',            80,  18, 8,  'Petit monstre nocturne',           2, 'valide',    8),
(72, 'Sabertusk',         100, 22, 10, 'Bête sauvage',                     3, 'valide',    8),
(73, 'Iron Giant',        220, 45, 25, 'Géant en armure',                  6, 'brouillon', 8),
(74, 'Magitek Trooper',   140, 30, 15, 'Soldat impérial artificiel',      4, 'valide',    8),
(75, 'Red Giant',         260, 50, 30, 'Version plus puissante de géant', 7, 'valide',    8),
(76, 'Mindflayer',        180, 38, 20, 'Créature psychique',               5, 'brouillon', 8),
(77, 'Behemoth',          280, 55, 32, 'Bête légendaire',                  8, 'valide',    8),
(78, 'Coeurl',            150, 32, 16, 'Félin électrique',                 4, 'valide',    8),
(79, 'Flan',              120, 20, 18, 'Créature gélatineuse',             3, 'brouillon', 8),
(80, 'Tonberry',          160, 35, 20, 'Petit monstre dangereux',          5, 'valide',    8),

(81, 'Fallen',            80,  18, 8,  'Démon mineur',                     2, 'valide',    9),
(82, 'Skeleton',          90,  20, 10, 'Squelette animé',                  2, 'valide',    9),
(83, 'Grotesque',         140, 28, 12, 'Monstre explosif',                 3, 'brouillon', 9),
(84, 'Lacuni Huntress',   130, 26, 12, 'Chasseuse féline',                 3, 'valide',    9),
(85, 'Morlu Incinerator', 180, 35, 18, 'Démon de feu',                     5, 'valide',    9),
(86, 'Herald of Pestilence',160,32, 16,'Démon de peste',                   4, 'brouillon', 9),
(87, 'Soul Ripper',       200, 40, 20, 'Démon volant',                     6, 'valide',    9),
(88, 'Oppressor',         220, 45, 22, 'Démon blindé',                     6, 'valide',    9),
(89, 'Mallet Lord',       260, 50, 28, 'Démon lourd',                      7, 'brouillon', 9),
(90, 'Siegebreaker',      300, 60, 32, 'Assaillant massif',                8, 'valide',    9),

(91, 'Hilichurl',         80,  18, 8,  'Tribu primitive',                  2, 'valide',    10),
(92, 'Hilichurl Berserker',110,22, 10, 'Hilichurl agressif',               3, 'valide',    10),
(93, 'Ruin Guard',        200, 40, 25, 'Ancien automate de combat',        4, 'valide',    10),
(94, 'Ruin Hunter',       220, 45, 28, 'Automate volant ancien',           5, 'valide',    10),
(95, 'Abyss Mage Pyro',   140, 30, 18, 'Mage des abysses de feu',          4, 'brouillon', 10),
(96, 'Abyss Mage Cryo',   140, 30, 18, 'Mage des abysses de glace',        4, 'valide',    10),
(97, 'Fatui Skirmisher',  160, 35, 20, 'Soldat du Fatui',                  5, 'valide',    10),
(98, 'Electro Cicin Mage',150, 32, 18, 'Mage invoquant des cicins électro',5, 'brouillon', 10),
(99, 'Geovishap',         210, 42, 24, 'Créature draconique géo',          6, 'valide',    10),
(100,'Golden Wolflord',   260, 55, 30, 'Chef des loups dorés',             7, 'valide',    10);



INSERT INTO MINI_JEU (id_mini_jeu, nom, description, niveau_minimum, statut_validation) VALUES
-- Zelda BOTW
(1,  'Boules de neige d''Hebra', 'Mini-jeu de bowling avec des boules de neige',   4, 'valide'),
(2,  'Course de chevaux',        'Course chronométrée à cheval',                   3, 'valide'),
(3,  'Tir à l''arc aérien',      'Tirer sur des cibles en vol',                    5, 'brouillon'),

-- Hollow Knight
(4,  'Colosseum of Fools',      'Combats successifs contre des vagues d''ennemis', 5, 'valide'),
(5,  'Défi des rêves',          'Affronter des versions oniriques de boss',        6,'valide'),
(6,  'Chasse aux grubs',        'Trouver des larves cachées',                      3,'brouillon'),

-- Dark Souls III
(7,  'Duel d''arène',           'Combat JcJ dans l''arène',                        5,'valide'),
(8,  'Défi des morts-vivants',  'Survivre à des vagues de hollows',                4,'valide'),
(9,  'Course au feu de camp',   'Atteindre un feu de camp sans mourir',            3,'brouillon'),

-- Elden Ring
(10, 'Course torrent',          'Course à cheval avec Torrent',                    4,'valide'),
(11, 'Défi des esprits cendrés','Affronter des esprits invoqués',                  6,'valide'),
(12, 'Chasse aux scarabées',    'Traquer des scarabées de larmes',                 3,'brouillon'),

-- The Witcher 3
(13, 'Gwynt',                   'Jeu de cartes stratégique',                       2,'valide'),
(14, 'Course de chevaux',       'Course avec Ablette',                             3,'valide'),
(15, 'Concours de boisson',     'Boire sans tomber',                               4,'brouillon'),

-- Skyrim
(16, 'Cri de puissance',        'Utiliser des Thu''um sur des cibles',             3,'valide'),
(17, 'Chasse nordique',         'Traquer des bêtes sauvages',                      4,'valide'),
(18, 'Défi des bardes',         'Mini-jeu musical dans une taverne',               2,'brouillon'),

-- Monster Hunter: World
(19, 'Capture express',         'Capturer un petit monstre rapidement',            3,'valide'),
(20, 'Cuisine du Palico',       'Mini-jeu de préparation de repas',                1,'valide'),
(21, 'Course d''insectoglaive', 'Défi aérien avec l''insectoglaive',               5,'brouillon'),

-- Final Fantasy XV 
(22, 'Course de chocobos',      'Course contre d''autres chocobos',                3,'valide'),
(23, 'Défi de tir',             'Tirer sur des cibles avec Prompto',               4,'valide'),
(24, 'Cuisine d''Ignis',        'Préparer un plat parfait',                        2,'brouillon'),

-- Diablo III 
(25, 'Faille mineure',          'Mini-faille avec un temps limité',                5,'valide'),
(26, 'Défi des gemmes',         'Améliorer des gemmes sous pression',              6,'valide'),
(27, 'Chasse aux démons',       'Éliminer un maximum de démons en 60 secondes',    4,'brouillon'),

-- Genshin Impact 
(28, 'Défi des vents',          'Survoler des anneaux Anémo',                      2,'valide'),
(29, 'Cibles élémentaires',     'Toucher des cibles avec différents éléments',     3,'valide'),
(30, 'Course de planeur',       'Parcourir un circuit aérien',                     4,'brouillon');



INSERT INTO OBJET (id_objet, nom, rarete, description, niveau_minimum, statut_validation, id_jeu) VALUES
-- Zelda BOTW (1-8)
(1,  'Master Sword',        'legendaire', 'Épée légendaire de Link',             8,  'valide',    1),
(2,  'Hylian Shield',       'legendaire', 'Bouclier emblématique d''Hyrule',     7,  'valide',    1),
(3,  'Arc du roi bestial',  'rare',       'Arc puissant',                        5,  'brouillon', 1),
(4,  'Potion de vigueur',   'commun',     'Restaure l''endurance',               2,  'valide',    1),
(5,  'Armure Zora',         'rare',       'Permet de nager plus vite',           4,  'valide',    1),
(6,  'Paravoile',           'rare',       'Permet de planer',                    3,  'valide',    1),
(7,  'Bouclier de chevalier','commun',    'Bouclier standard',                   3,  'valide',    1),
(8,  'Heaume barbare',      'rare',       'Augmente l''attaque',                 5,  'brouillon', 1),

-- Hollow Knight (9-16)
(9,  'Vessel Fragment',     'rare',       'Augmente la santé',                   3,  'valide',    2),
(10, 'Mask Shard',          'rare',       'Fragment de masque',                  2,  'valide',    2),
(11, 'Charm Notch',         'legendaire', 'Emplacement de charme supplémentaire',4,  'valide',    2),
(12, 'Grubsong',            'rare',       'Charme qui donne de l''âme',          3,  'brouillon', 2),
(13, 'Quick Slash',         'legendaire', 'Charme augmentant la vitesse d''attaque',5,'valide',   2),
(14, 'Soul Catcher',        'rare',       'Charme augmentant l''âme gagnée',     2,  'valide',    2),
(15, 'Lumafly Lantern',     'rare',       'Lanterne pour explorer le noir',      3,  'valide',    2),
(16, 'Simple Key',          'commun',     'Clé ouvrant certaines portes',        2,  'brouillon', 2),

-- Dark Souls III (17-24)
(17, 'Estus Flask',         'rare',       'Flasque de soin',                     1,  'valide',    3),
(18, 'Ashen Estus Flask',   'rare',       'Flasque de mana',                     1,  'valide',    3),
(19, 'Zweihander',          'rare',       'Grande épée',                         4,  'valide',    3),
(20, 'Havel''s Ring',       'legendaire', 'Augmente la charge d''équipement',    5,  'brouillon', 3),
(21, 'Ring of Favor',       'legendaire', 'Augmente PV, endurance et charge',    6,  'valide',    3),
(22, 'Knight Armor',        'commun',     'Armure de chevalier',                 3,  'valide',    3),
(23, 'Firebomb',            'commun',     'Grenade incendiaire',                 2,  'valide',    3),
(24, 'Ember',               'rare',       'Augmente les PV max',                 3,  'brouillon', 3),

-- Elden Ring (25-32)
(25, 'Flask of Crimson Tears','rare',     'Restaure les PV',                     1,  'valide',    4),
(26, 'Flask of Cerulean Tears','rare',    'Restaure les PC',                     1,  'valide',    4),
(27, 'Greatsword',          'rare',       'Grande épée colossale',               5,  'valide',    4),
(28, 'Radagon''s Soreseal', 'legendaire', 'Augmente les stats mais augmente les dégâts subis',7,'brouillon',4),
(29, 'Lionel''s Armor',     'legendaire', 'Armure lourde',                       8,  'valide',    4),
(30, 'Spirit Ash: Wolves',  'rare',       'Invocation de loups',                 3,  'valide',    4),
(31, 'Stonesword Key',      'commun',     'Clé ouvrant des sceaux',             2,  'valide',    4),
(32, 'Golden Rune',         'commun',     'Objet donnant des runes',             2,  'brouillon', 4),

-- The Witcher 3 (33-40)
(33, 'Épée d''argent de sorceleur','rare','Épée contre les monstres',           4,  'valide',    5),
(34, 'Épée d''acier de sorceleur','rare', 'Épée contre les humains',            3,  'valide',    5),
(35, 'Potion d''hirondelle', 'commun',   'Régénération de santé',              2,  'brouillon', 5),
(36, 'Huile contre les spectres','commun','Augmente les dégâts contre spectres',3,'valide',   5),
(37, 'Armure de l''École du Loup','legendaire','Armure de Geralt',             6,  'valide',    5),
(38, 'Gwynt Deck',          'rare',       'Jeu de cartes complet',              2,  'valide',    5),
(39, 'Trophée de griffon',  'rare',       'Trophée augmentant l''expérience',   4,  'valide',    5),
(40, 'Bombes dansantes',    'commun',     'Bombes explosives',                  3,  'brouillon', 5),

-- Skyrim (41-48)
(41, 'Épée en acier',       'commun',     'Épée standard',                      2,  'valide',    6),
(42, 'Arc nordique',        'commun',     'Arc de chasseur',                    2,  'valide',    6),
(43, 'Armure en ébonite',   'rare',       'Armure lourde',                      6,  'brouillon', 6),
(44, 'Cri: Fus Ro Dah',     'legendaire', 'Thu''um repoussant les ennemis',     7,  'valide',    6),
(45, 'Potion de santé',     'commun',     'Restaure les PV',                    1,  'valide',    6),
(46, 'Anneau de Magie',     'rare',       'Augmente la magie',                  4,  'valide',    6),
(47, 'Armure de la Confrérie Noire','rare','Armure légère furtive',            5,  'valide',    6),
(48, 'Parchemin de dragon', 'commun',     'Parchemin magique',                  3,  'brouillon', 6),

-- Monster Hunter: World (49-56)
(49, 'Great Sword',         'rare',       'Grande épée de chasseur',            4,  'valide',    7),
(50, 'Insect Glaive',       'rare',       'Arme agile',                         4,  'valide',    7),
(51, 'Armure en os',        'commun',     'Armure de base',                     2,  'brouillon', 7),
(52, 'Armure Rathalos',     'legendaire', 'Armure du roi des cieux',            7,  'valide',    7),
(53, 'Potion de soin',      'commun',     'Restaure les PV',                    1,  'valide',    7),
(54, 'Mega Potion',         'commun',     'Restaure beaucoup de PV',            2,  'valide',    7),
(55, 'Piège à fosse',       'rare',       'Immobilise un monstre',              3,  'valide',    7),
(56, 'Bombe baril',         'commun',     'Explosif puissant',                  3,  'brouillon', 7),

-- Final Fantasy XV (57-64)
(57, 'Engine Blade',        'rare',       'Épée de Noctis',                     3,  'valide',    8),
(58, 'Ultima Blade',        'legendaire', 'Épée ultime',                        8,  'valide',    8),
(59, 'Potion',              'commun',     'Restaure les PV',                    1,  'brouillon', 8),
(60, 'Elixir',              'rare',       'Restaure PV et PM',                  4,  'valide',    8),
(61, 'Armure royale',       'legendaire', 'Armure spéciale',                    7,  'valide',    8),
(62, 'Anneau de Lucii',     'legendaire', 'Anneau magique puissant',            9,  'valide',    8),
(63, 'Phoenix Down',        'rare',       'Réanime un allié',                   3,  'valide',    8),
(64, 'Accessoire de force', 'commun',     'Augmente l''attaque',                2,  'brouillon', 8),

-- Diablo III (65-72)
(65, 'Sword of Justice',    'rare',       'Épée bénie',                         4,  'valide',    9),
(66, 'Legendary Gem',       'legendaire', 'Gemme légendaire',                   6,  'valide',    9),
(67, 'Health Potion',       'commun',     'Restaure les PV',                    1,  'brouillon', 9),
(68, 'Set Armor Piece',     'legendaire', 'Pièce d''ensemble',                  7,  'valide',    9),
(69, 'Ring of Grandeur',    'legendaire', 'Anneau spécial',                     8,  'valide',    9),
(70, 'Magic Amulet',        'rare',       'Amulette magique',                   4,  'valide',    9),
(71, 'Crafting Material',   'commun',     'Matériau d''artisanat',              2,  'valide',    9),
(72, 'Demonic Essence',     'rare',       'Essence démoniaque',                 5,  'brouillon', 9),

-- Genshin Impact (73-80)
(73, 'Sword of Favonius',   'rare',       'Épée de l''ordre de Favonius',       4,  'valide',    10),
(74, 'Skyward Harp',        'legendaire', 'Arc légendaire',                     7,  'valide',    10),
(75, 'Artifact: Gladiator', 'rare',       'Pièce d''ensemble Gladiator',        4,  'brouillon', 10),
(76, 'Artifact: Wanderer',  'rare',       'Pièce d''ensemble Wanderer',         4,  'valide',    10),
(77, 'Primogem',            'commun',     'Monnaie spéciale',                   1,  'valide',    10),
(78, 'Mora',                'commun',     'Monnaie de Teyvat',                  1,  'valide',    10),
(79, 'Fragile Resin',       'rare',       'Restaure la résine',                 3,  'valide',    10),
(80, 'Crown of Insight',    'legendaire', 'Objet d''amélioration ultime',       8,  'brouillon', 10);



INSERT INTO QUETE (id_quete, type_quete, recompense_experience, description, niveau_minimum, statut_validation, id_jeu, id_mini_jeu) VALUES
-- Zelda BOTW
(1,  'principale', 500,  'Libérer le Château d''Hyrule de Ganon',      8, 'valide',    1, NULL),
(2,  'principale', 400,  'Récupérer la Master Sword',                  7, 'valide',    1, NULL),
(3,  'secondaire', 200,  'Aider le village Cocorico',                  3, 'brouillon', 1, 3),
(4,  'secondaire', 250,  'Chasser un Hinox dans la plaine',            5, 'valide',    1, NULL),
(5,  'secondaire', 220,  'Livrer des vivres aux Sheikah',              4, 'valide',    1, 2),

-- Hollow Knight
(6,  'principale', 450,  'Atteindre la City of Tears',                 5, 'valide',    2, NULL),
(7,  'principale', 550,  'Affronter le Hollow Knight',                 7, 'valide',    2, 5),
(8,  'secondaire', 220,  'Sauver des grubs cachés',                    3, 'brouillon', 2, 6),
(9,  'secondaire', 260,  'Vaincre un Watcher Knight',                  5, 'valide',    2, 4),
(10, 'secondaire', 230,  'Explorer la ruche',                          4, 'valide',    2, NULL),

-- Dark Souls III
(11, 'principale', 500,  'Allumer le feu des Cendres',                 6, 'valide',    3, NULL),
(12, 'principale', 600,  'Vaincre les Lords of Cinder',                8, 'valide',    3, NULL),
(13, 'secondaire', 250,  'Aider Siegward de Catarina',                 4, 'brouillon', 3, NULL),
(14, 'secondaire', 280,  'Vaincre un Black Knight',                    5, 'valide',    3, 7),
(15, 'secondaire', 260,  'Explorer Irithyll',                          5, 'valide',    3, 9),

-- Elden Ring
(16, 'principale', 550,  'Devenir Seigneur d''Elden',                  9, 'valide',    4, NULL),
(17, 'principale', 520,  'Vaincre Godrick le Greffé',                  6, 'valide',    4, NULL),
(18, 'secondaire', 260,  'Aider Ranni dans sa quête',                  7, 'brouillon', 4, 11),
(19, 'secondaire', 280,  'Vaincre un Dragonkin Soldier',               8, 'valide',    4, NULL),
(20, 'secondaire', 250,  'Explorer les profondeurs de Stormveil',      5, 'valide',    4, 10),

-- The Witcher 3
(21, 'principale', 500,  'Retrouver Ciri',                             7, 'valide',    5, NULL),
(22, 'principale', 520,  'Affronter la Chasse Sauvage',                8, 'valide',    5, NULL),
(23, 'secondaire', 260,  'Résoudre un contrat de monstre',             4, 'brouillon', 5, NULL),
(24, 'secondaire', 280,  'Gagner un tournoi de Gwynt',                 4, 'valide',    5, 13),
(25, 'secondaire', 270,  'Aider un village attaqué par des noyés',     3, 'valide',    5, NULL),

-- Skyrim
(26, 'principale', 480,  'Découvrir que vous êtes l''Enfant de Dragon',5, 'valide',    6, NULL),
(27, 'principale', 520,  'Vaincre Alduin',                             8, 'valide',    6, NULL),
(28, 'secondaire', 250,  'Rejoindre la Confrérie Noire',               4, 'brouillon', 6, NULL),
(29, 'secondaire', 270,  'Aider les Compagnons',                       4, 'valide',    6, NULL),
(30, 'secondaire', 260,  'Explorer un tertre ancien',                  3, 'valide',    6, 17),

-- Monster Hunter: World
(31, 'principale', 500,  'Vaincre Nergigante',                         7, 'valide',    7, NULL),
(32, 'principale', 520,  'Explorer l''Elder''s Recess',                6, 'valide',    7, NULL),
(33, 'secondaire', 260,  'Capturer un Rathalos',                       5, 'brouillon', 7, 19),
(34, 'secondaire', 280,  'Chasser un Anjanath',                        4, 'valide',    7, NULL),
(35, 'secondaire', 270,  'Collecter des matériaux rares',              3, 'valide',    7, NULL),

-- Final Fantasy XV
(36, 'principale', 500,  'Reprendre le trône de Lucis',                7, 'valide',    8, NULL),
(37, 'principale', 520,  'Affronter Ardyn',                            8, 'valide',    8, NULL),
(38, 'secondaire', 260,  'Chasser un Behemoth',                        5, 'brouillon', 8, NULL),
(39, 'secondaire', 280,  'Participer à une course de chocobos',        3, 'valide',    8, 22),
(40, 'secondaire', 270,  'Aider un restaurateur de voitures',          3, 'valide',    8, 24),

-- Diablo III
(41, 'principale', 500,  'Vaincre Diablo',                             7, 'valide',    9, NULL),
(42, 'principale', 520,  'Arrêter Malthaël',                           8, 'valide',    9, NULL),
(43, 'secondaire', 260,  'Nettoyer un donjon de démons',               4, 'brouillon', 9, 27),
(44, 'secondaire', 280,  'Récupérer une gemme légendaire',             5, 'valide',    9, 26),
(45, 'secondaire', 270,  'Aider un village attaqué',                   3, 'valide',    9, NULL),

-- Genshin Impact
(46, 'principale', 500,  'Résoudre le mystère de Mondstadt',           5, 'valide',    10, 28),
(47, 'principale', 520,  'Affronter Stormterror',                      6, 'valide',    10, 29),
(48, 'secondaire', 260,  'Aider un marchand de Liyue',                 3, 'brouillon', 10, NULL),
(49, 'secondaire', 280,  'Vaincre un Ruin Guard',                      4, 'valide',    10, NULL),
(50, 'secondaire', 270,  'Collecter des artefacts anciens',            4, 'valide',    10, 30);



INSERT INTO LIVRE (id_livre, id_jeu) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);



INSERT INTO SECTION (id_section, categorie, id_livre) VALUES
-- Livre 1
(1,  'Personnages', 1),
(2,  'Race',        1),
(3,  'Lieu',        1),
(4,  'Donjon',      1),
(5,  'Ennemi',      1),
(6,  'Mini-jeu',    1),
(7,  'Quêtes',      1),
(8,  'Objets',      1),
(9,  'Boss',        1),

-- Livre 2
(10, 'Personnages', 2),
(11, 'Race',        2),
(12, 'Lieu',        2),
(13, 'Donjon',      2),
(14, 'Ennemi',      2),
(15, 'Mini-jeu',    2),
(16, 'Quêtes',      2),
(17, 'Objets',      2),
(18, 'Boss',        2),

-- Livre 3
(19, 'Personnages', 3),
(20, 'Race',        3),
(21, 'Lieu',        3),
(22, 'Donjon',      3),
(23, 'Ennemi',      3),
(24, 'Mini-jeu',    3),
(25, 'Quêtes',      3),
(26, 'Objets',      3),
(27, 'Boss',        3),

-- Livre 4
(28, 'Personnages', 4),
(29, 'Race',        4),
(30, 'Lieu',        4),
(31, 'Donjon',      4),
(32, 'Ennemi',      4),
(33, 'Mini-jeu',    4),
(34, 'Quêtes',      4),
(35, 'Objets',      4),
(36, 'Boss',        4),

-- Livre 5
(37, 'Personnages', 5),
(38, 'Race',        5),
(39, 'Lieu',        5),
(40, 'Donjon',      5),
(41, 'Ennemi',      5),
(42, 'Mini-jeu',    5),
(43, 'Quêtes',      5),
(44, 'Objets',      5),
(45, 'Boss',        5),

-- Livre 6
(46, 'Personnages', 6),
(47, 'Race',        6),
(48, 'Lieu',        6),
(49, 'Donjon',      6),
(50, 'Ennemi',      6),
(51, 'Mini-jeu',    6),
(52, 'Quêtes',      6),
(53, 'Objets',      6),
(54, 'Boss',        6),

-- Livre 7
(55, 'Personnages', 7),
(56, 'Race',        7),
(57, 'Lieu',        7),
(58, 'Donjon',      7),
(59, 'Ennemi',      7),
(60, 'Mini-jeu',    7),
(61, 'Quêtes',      7),
(62, 'Objets',      7),
(63, 'Boss',        7),

-- Livre 8
(64, 'Personnages', 8),
(65, 'Race',        8),
(66, 'Lieu',        8),
(67, 'Donjon',      8),
(68, 'Ennemi',      8),
(69, 'Mini-jeu',    8),
(70, 'Quêtes',      8),
(71, 'Objets',      8),
(72, 'Boss',        8),

-- Livre 9
(73, 'Personnages', 9),
(74, 'Race',        9),
(75, 'Lieu',        9),
(76, 'Donjon',      9),
(77, 'Ennemi',      9),
(78, 'Mini-jeu',    9),
(79, 'Quêtes',      9),
(80, 'Objets',      9),
(81, 'Boss',        9),

-- Livre 10
(82, 'Personnages', 10),
(83, 'Race',        10),
(84, 'Lieu',        10),
(85, 'Donjon',      10),
(86, 'Ennemi',      10),
(87, 'Mini-jeu',    10),
(88, 'Quêtes',      10),
(89, 'Objets',      10),
(90, 'Boss',        10);




INSERT INTO PERSONNAGE (id_personnage, nom, type_personnage, description, niveau_minimum, statut_validation, id_race, id_jeu) VALUES
-- Zelda BOTW
(1,  'Link',        'jouable', 'Héros d''Hyrule',                 1, 'valide',    1, 1),
(2,  'Zelda',       'allie',   'Princesse d''Hyrule',             1, 'valide',    1, 1),
(3,  'Mipha',       'allie',   'Princesse Zora',                  3, 'brouillon', 8, 1),
(4,  'Revali',      'allie',   'Champion Piaf',                   4, 'valide',    8, 1),
(5,  'Impa',        'neutre',  'Sage Sheikah',                    2, 'valide',    1, 1),

-- Hollow Knight
(6,  'The Knight',  'jouable', 'Chevalier silencieux',            1, 'valide',    8, 2),
(7,  'Hornet',      'allie',   'Protectrice d''Hallownest',       3, 'valide',    8, 2),
(8,  'Quirrel',     'neutre',  'Explorateur curieux',             2, 'brouillon', 1, 2),
(9,  'The Hollow Knight','ennemi','Vaisseau déchu',               7, 'valide',    8, 2),
(10, 'Elderbug',    'neutre',  'Vieil habitant de Dirtmouth',     1, 'valide',    1, 2),

-- Dark Souls III
(11, 'Ashen One',   'jouable', 'Morteflamme sans nom',            1, 'valide',    1, 3),
(12, 'Siegward',    'allie',   'Chevalier de Catarina',           3, 'valide',    4, 3),
(13, 'Anri',        'allie',   'Chevalier errant',                3, 'brouillon', 1, 3),
(14, 'Yuria',       'neutre',  'Servante de Londor',              4, 'valide',    1, 3),
(15, 'Lothric',     'ennemi',  'Prince de Lothric',               7, 'valide',    6, 3),

-- Elden Ring
(16, 'Tarnished',   'jouable', 'Sans-éclat en quête d''un trône', 1, 'valide',    1, 4),
(17, 'Ranni',       'allie',   'Sorcière de la Lune',             5, 'valide',    6, 4),
(18, 'Melina',      'allie',   'Servante de la flamme',           3, 'brouillon', 6, 4),
(19, 'Godrick',     'ennemi',  'Seigneur greffé',                 6, 'valide',    10,4),
(20, 'Blaidd',      'allie',   'Guerrier loup',                   4, 'valide',    10,4),

-- The Witcher 3
(21, 'Geralt',      'jouable', 'Sorceleur de l''École du Loup',   1, 'valide',    1, 5),
(22, 'Ciri',        'allie',   'Enfant de la prophétie',          5, 'valide',    1, 5),
(23, 'Yennefer',    'allie',   'Magicienne puissante',            4, 'brouillon', 6, 5),
(24, 'Triss',       'allie',   'Magicienne de Temeria',           3, 'valide',    6, 5),
(25, 'Eredin',      'ennemi',  'Roi de la Chasse Sauvage',        7, 'valide',    5, 5),

-- Skyrim
(26, 'Dovahkiin',   'jouable', 'Enfant de Dragon',                1, 'valide',    1, 6),
(27, 'Ulfric',      'neutre',  'Chef des Sombrages',              4, 'valide',    1, 6),
(28, 'Balgruuf',    'neutre',  'Jarl de Blancherive',             2, 'brouillon', 1, 6),
(29, 'Serana',      'allie',   'Vampire nordique',                4, 'valide',    8, 6),
(30, 'Alduin',      'ennemi',  'Dévoreur de mondes',              8, 'valide',    9, 6),

-- Monster Hunter: World
(31, 'Chasseur',    'jouable', 'Membre de la Commission',         1, 'valide',    1, 7),
(32, 'Handler',     'allie',   'Partenaire enthousiaste',         1, 'valide',    1, 7),
(33, 'Field Team Leader','allie','Chef d''équipe',                3, 'brouillon', 1, 7),
(34, 'Nergigante',  'ennemi',  'Dragon ancien féroce',            7, 'valide',    9, 7),
(35, 'Rathalos',    'ennemi',  'Roi des cieux',                   6, 'valide',    9, 7),

-- Final Fantasy XV
(36, 'Noctis',      'jouable', 'Prince de Lucis',                  1, 'valide',    1, 8),
(37, 'Ignis',       'allie',   'Stratège et cuisinier',            2, 'valide',    1, 8),
(38, 'Gladiolus',   'allie',   'Garde du corps',                   2, 'brouillon', 1, 8),
(39, 'Prompto',     'allie',   'Tireur et photographe',            2, 'valide',    1, 8),
(40, 'Ardyn',       'ennemi',  'Chancelier de Niflheim',           7, 'valide',    5, 8),

-- Diablo III
(41, 'Nephalem',    'jouable', 'Héros surpuissant',                1, 'valide',    1, 9),
(42, 'Tyrael',      'allie',   'Ange déchu',                       5, 'valide',    6, 9),
(43, 'Leah',        'allie',   'Jeune érudite',                    2, 'brouillon', 1, 9),
(44, 'Diablo',      'ennemi',  'Seigneur de la Terreur',           8, 'valide',    5, 9),
(45, 'Malthaël',    'ennemi',  'Ange de la Mort',                  9, 'valide',    6, 9),

-- Genshin Impact
(46, 'Voyageur',    'jouable', 'Héros venu d''un autre monde',     1, 'valide',    1, 10),
(47, 'Paimon',      'allie',   'Compagne flottante',               1, 'valide',    6, 10),
(48, 'Diluc',       'allie',   'Chevalier de Mondstadt',           4, 'brouillon', 1, 10),
(49, 'Zhongli',     'allie',   'Consultant mystérieux',            5, 'valide',    6, 10),
(50, 'Signora',     'ennemi',  'Héraut du Fatui',                  7, 'valide',    5, 10);


INSERT INTO BOSS (id_boss, description, statut_validation, id_donjon, id_ennemi) VALUES
(1,  'Ombre d''eau de Ganon',                  'valide',    1,  4),
(2,  'Guerrier mantis élite',                  'valide',    2,  13),
(3,  'Prêtre corrompu de la Cathédrale',       'brouillon', 3,  25),
(4,  'Chevalier du Creuset gardien des profondeurs','valide',4, 38),
(5,  'Leshen ancien de Kaer Morhen',           'valide',    5,  44),
(6,  'Prêtre-dragon gardien du tertre',        'valide',    6,  60),
(7,  'Nergigante dominant le nid',             'brouillon', 7,  69),
(8,  'Behemoth caché dans la tour',            'valide',    8,  77),
(9,  'Siegebreaker au cœur du cratère',        'valide',    9,  90),
(10, 'Golden Wolflord gardien du domaine',     'brouillon', 10, 100);




INSERT INTO HEBERGER (id_donjon, id_ennemi) VALUES

(1,1),(1,2),(1,3),(1,4),(1,5),
(1,6),(1,7),(1,8),(1,9),(1,10),

(2,11),(2,12),(2,13),(2,14),(2,15),
(2,16),(2,17),(2,18),(2,19),(2,20),

(3,21),(3,22),(3,23),(3,24),(3,25),
(3,26),(3,27),(3,28),(3,29),(3,30),

(4,31),(4,32),(4,33),(4,34),(4,35),
(4,36),(4,37),(4,38),(4,39),(4,40),

(5,41),(5,42),(5,43),(5,44),(5,45),
(5,46),(5,47),(5,48),(5,49),(5,50),

(6,51),(6,52),(6,53),(6,54),(6,55),
(6,56),(6,57),(6,58),(6,59),(6,60),

(7,61),(7,62),(7,63),(7,64),(7,65),
(7,66),(7,67),(7,68),(7,69),(7,70),

(8,71),(8,72),(8,73),(8,74),(8,75),
(8,76),(8,77),(8,78),(8,79),(8,80),

(9,81),(9,82),(9,83),(9,84),(9,85),
(9,86),(9,87),(9,88),(9,89),(9,90),

(10,91),(10,92),(10,93),(10,94),(10,95),
(10,96),(10,97),(10,98),(10,99),(10,100);




INSERT INTO OCTROYER (id_mini_jeu, id_objet) VALUES

(1,4),(1,7),(1,5),
(2,3),(2,4),(2,7),
(3,3),(3,6),(3,8),

(4,9),(4,11),(4,13),
(5,9),(5,10),(5,14),
(6,10),(6,12),(6,16),

(7,19),(7,23),(7,24),
(8,18),(8,22),(8,23),
(9,17),(9,18),(9,24),

(10,25),(10,30),(10,32),
(11,26),(11,27),(11,31),
(12,25),(12,31),(12,32),

(13,34),(13,35),(13,38),
(14,36),(14,39),(14,40),
(15,35),(15,39),(15,40),

(16,42),(16,44),(16,45),
(17,41),(17,47),(17,48),
(18,42),(18,45),(18,48),

(19,49),(19,51),(19,55),
(20,53),(20,54),(20,56),
(21,50),(21,53),(21,56),

(22,57),(22,59),(22,64),
(23,57),(23,60),(23,64),
(24,59),(24,60),(24,63),

(25,67),(25,70),(25,72),
(26,66),(26,67),(26,70),
(27,68),(27,71),(27,72),

(28,77),(28,78),(28,79),
(29,73),(29,76),(29,79),
(30,75),(30,77),(30,78);




INSERT INTO RECOMPENSE_PAR (id_quete, id_objet) VALUES

(1,2),(2,1),(3,6),(4,3),(5,4),

(6,10),(7,11),(8,12),(9,16),(10,14),

(11,21),(12,20),(13,24),(14,19),(15,18),

(16,28),(17,29),(18,32),(19,31),(20,27),

(21,39),(22,37),(23,33),(24,38),(25,36),

(26,48),(27,44),(28,47),(29,46),(30,43),

(31,52),(32,55),(33,56),(34,49),(35,54),

(36,61),(37,58),(38,62),(39,64),(40,60),

(41,69),(42,68),(43,65),(44,66),(45,70),

(46,80),(47,74),(48,77),(49,79),(50,75);





