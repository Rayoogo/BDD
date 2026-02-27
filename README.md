# BDD
# 📘 README  
## Projet : Système d’Information – Guides de Jeux Vidéo  

Entreprise : Édition de livres tutoriels spécialisés dans les jeux vidéo  


Prompt :
Tu travailles dans le domaine des jeux vidéos. Ton entreprise a comme activité de créer des livres tutoriels. C’est une entreprise comme celle qui produit les guides officielles Minecraft. Je veux des données collectées sur les jeux, bosses, personnages, donjons, ennemies, objets, lieux, mini-jeux, races, quêtes secondaires, quêtes principales. Inspire-toi du site web suivant : https://zeldawiki.wiki/wiki/Main_Page .
Ton entreprise veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données. 
D’abord, établis les règles de gestions des données de ton entreprise, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.
Fournis donc les règles de gestion et le dictionnaire de données.

---

#  Contexte du projet

L’entreprise conçoit et publie des livres tutoriels dédiés aux jeux vidéo.  
Ces ouvrages regroupent des informations détaillées sur :

- Les quêtes
- Les personnages
- Les ennemis et boss
- Les objets
- Les donjons
- Les lieux
- Les mini-jeux

L’objectif du système d’information est de :

- Centraliser les données
- Structurer les informations
- Garantir la cohérence
- Faciliter la production des ouvrages

---

#  Règles de gestion métier

##  Règles générales

- L’entreprise produit des livres tutoriels pour différents jeux vidéo.
- Chaque livre concerne un seul jeu.
- Un livre contient plusieurs sections.
- Chaque section correspond à une catégorie d’information.
- Toute donnée collectée doit être validée avant publication.

---

##  Règles liées aux jeux

- Chaque jeu possède :
  - un titre
  - un éditeur
  - une date de sortie
  - une ou plusieurs plateformes

- Un jeu contient :
  - des quêtes principales et secondaires
  - des personnages
  - des ennemis
  - des donjons
  - des objets
  - des lieux
  - des mini-jeux

---

##  Personnages et races

- Un personnage appartient à un seul jeu.
- Un personnage peut appartenir à une race.
- Une race peut apparaître dans plusieurs jeux.
- Un personnage peut être jouable, allié, ennemi ou neutre.

---

##  Ennemis et boss

- Un ennemi appartient à un seul jeu.
- Un ennemi possède :
  - des points de vie
  - des points d’attaque
  - des points de défense
- Un boss est un type particulier d’ennemi.
- Un boss appartient à un donjon ou une zone spécifique.
- Un donjon peut contenir plusieurs ennemis.
- Un donjon peut contenir un boss principal.

---

##  Donjons et lieux

- Un donjon appartient à un seul jeu.
- Un lieu appartient à un seul jeu.
- Un lieu peut contenir :
  - des donjons
  - des mini-jeux
  - des ennemis
  - des objets

---

##  Quêtes

- Une quête appartient obligatoirement à un seul jeu.
- Une quête peut être principale ou secondaire.
- Une quête peut récompenser le joueur avec un ou plusieurs objets.
- Une quête peut attribuer de l’expérience.

---

##  Objets

- Un objet appartient à un seul jeu.
- Un objet peut être obtenu :
  - via une quête
  - via un boss
  - via un mini-jeu
  - dans un lieu
- Un objet peut avoir un niveau minimum requis.
- Un objet possède un niveau de rareté.

---

##  Mini-jeux

- Un mini-jeu appartient à un seul jeu.
- Un mini-jeu peut attribuer des objets en récompense.

---

##  Contraintes générales

- Chaque élément possède une description textuelle.
- Certains éléments peuvent avoir un niveau minimum requis.
- Les statistiques numériques sont stockées sous forme d’entiers positifs.
- Chaque élément possède un statut de validation.

---

#  Dictionnaire de données

| Signification | Type | Taille |
|---------------|------|--------|
| Identifiant du jeu | Numérique | 6 chiffres |
| Titre du jeu | Alphanumérique | 100 caractères |
| Nom de l’éditeur | Alphanumérique | 100 caractères |
| Date de sortie | Date | 10 caractères |
| Plateforme du jeu | Alphanumérique | 50 caractères |
| Identifiant du personnage | Numérique | 6 chiffres |
| Nom du personnage | Alphanumérique | 100 caractères |
| Type de personnage | Alphanumérique | 20 caractères |
| Identifiant de la race | Numérique | 6 chiffres |
| Nom de la race | Alphanumérique | 50 caractères |
| Identifiant de l’ennemi | Numérique | 6 chiffres |
| Points de vie | Numérique | 6 chiffres |
| Points d’attaque | Numérique | 6 chiffres |
| Points de défense | Numérique | 6 chiffres |
| Identifiant du boss | Numérique | 6 chiffres |
| Identifiant du donjon | Numérique | 6 chiffres |
| Nom du donjon | Alphanumérique | 100 caractères |
| Identifiant de la quête | Numérique | 6 chiffres |
| Type de quête | Alphanumérique | 20 caractères |
| Récompense en expérience | Numérique | 6 chiffres |
| Identifiant de l’objet | Numérique | 6 chiffres |
| Nom de l’objet | Alphanumérique | 100 caractères |
| Rareté de l’objet | Alphanumérique | 20 caractères |
| Identifiant du lieu | Numérique | 6 chiffres |
| Nom du lieu | Alphanumérique | 100 caractères |
| Identifiant du mini-jeu | Numérique | 6 chiffres |
| Description d’un élément | Texte | 1000 caractères |
| Niveau minimum requis | Numérique | 3 chiffres |
| Statut de validation | Alphanumérique | 15 caractères |
| Identifiant du livre tutoriel | Numérique | 6 chiffres |


________________________________________

<img width="2517" height="1096" alt="image" src="https://github.com/user-attachments/assets/50cb44cf-c4db-4843-a75b-b466d41a18fb" />


