# 📱 Wireframe App - Profil Facebook Clone

Une application Flutter moderne reproduisant l'interface d'un profil Facebook, développée dans le cadre d'un projet académique.

## 📋 Table des matières

- [À propos](#à-propos)
- [Fonctionnalités](#fonctionnalités)
- [Prérequis](#prérequis)
- [Installation](#installation)
- [Structure du projet](#structure-du-projet)
- [Technologies utilisées](#technologies-utilisées)
- [Captures d'écran](#captures-décran)
- [Choix de conception](#choix-de-conception)
- [Difficultés rencontrées](#difficultés-rencontrées)
- [Améliorations futures](#améliorations-futures)
- [Auteur](#auteur)

## 🎯 À propos

Cette application Flutter a été développée pour reproduire fidèlement un wireframe de profil Facebook. Elle démontre l'utilisation des composants de base de Flutter ainsi que des techniques avancées de mise en page et de stylisation avec `BoxDecoration`.

## ✨ Fonctionnalités

### Implémentées

- ✅ **Section Profil**
  - Photo de couverture personnalisable
  - Photo de profil avec bordure
  - Nom d'utilisateur et citation
  - Boutons d'action (Modifier le profil, Édition rapide)
  
- ✅ **Section À propos**
  - Informations personnelles (localisation, profession, statut)
  - Icônes descriptives
  
- ✅ **Section Amis**
  - Affichage en grille (3 colonnes)
  - Photos et noms des amis
  - Cartes cliquables avec feedback
  
- ✅ **Section Publications**
  - Liste scrollable de posts
  - En-tête avec avatar et nom
  - Description du post
  - Image du post
  - Interactions (likes, commentaires, partages)
  - Design similaire à Facebook

### Fonctionnalités additionnelles

- 🌓 Support du mode sombre automatique
- 📱 Design responsive
- 🎨 Animations et transitions fluides
- 💬 Feedback utilisateur avec SnackBar
- 🔄 Scroll fluide avec physique rebondissante

## 🛠 Prérequis

Avant de commencer, assurez-vous d'avoir installé :

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version 3.10.0 ou supérieure)
- [Dart SDK](https://dart.dev/get-dart) (version 3.10.0 ou supérieure)
- Un éditeur de code (VS Code, Android Studio, IntelliJ IDEA)
- Un émulateur Android/iOS ou un appareil physique

### Vérification de l'installation

```bash
flutter doctor
```

Cette commande vérifie que toutes les dépendances sont correctement installées.

## 📥 Installation

### 1. Cloner le projet

```bash
git clone https://github.com/votre-username/wireframe_app.git
cd wireframe_app
```

### 2. Installer les dépendances

```bash
flutter pub get
```

### 3. Ajouter les images

Placez vos images dans le dossier `assets/images/` :

**Images requises :**
- `back.jpg` - Photo de couverture
- `sasuke.jpg` - Photo de profil
- `naruto.jpg` - Ami 1
- `neji.jpg` - Ami 2
- `shikamaru.jpg` - Ami 3
- `hinata.jpg` - Post 1
- `kakashi.jpg` - Post 2
- `sakura.jpg` - Post 3

### 4. Lancer l'application

```bash
# Sur un émulateur ou appareil connecté
flutter run

# Pour choisir un appareil spécifique
flutter devices
flutter run -d <device_id>
```

## 📁 Structure du projet

```
wireframe_app/
├── lib/
│   ├── main.dart              # Point d'entrée de l'application
│   └── view/
│       ├── home.dart          # Page principale assemblant toutes les sections
│       ├── profil.dart        # Section profil (photo de couverture, avatar)
│       ├── a_propos.dart      # Section informations personnelles
│       ├── mes_amis.dart      # Grille des amis
│       └── mes_postes.dart    # Liste des publications
├── assets/
│   └── images/                # Dossier contenant toutes les images
├── android/                   # Configuration Android
├── ios/                       # Configuration iOS
├── test/                      # Tests unitaires
├── pubspec.yaml              # Dépendances et configuration
└── README.md                 # Ce fichier
```

## 🔧 Technologies utilisées

### Framework et langages
- **Flutter** 3.10.0+ - Framework UI multiplateforme
- **Dart** 3.10.0+ - Langage de programmation

### Widgets principaux utilisés

#### Mise en page
- `Scaffold` - Structure de base de la page
- `AppBar` - Barre d'application
- `SingleChildScrollView` - Conteneur scrollable
- `Column` / `Row` - Organisation verticale/horizontale
- `Stack` - Superposition de widgets
- `Positioned` - Positionnement absolu dans un Stack
- `GridView.builder` - Grille d'éléments dynamique
- `ListView.builder` - Liste d'éléments dynamique

#### Affichage
- `Card` - Cartes avec ombre
- `Container` - Conteneur stylisable
- `CircleAvatar` - Avatar circulaire
- `Image.asset` - Affichage d'images locales
- `Text` - Affichage de texte
- `Icon` - Icônes Material Design

#### Interactivité
- `ElevatedButton` - Bouton en relief
- `IconButton` - Bouton icône
- `InkWell` - Effet de clic (ripple)

#### Stylisation avancée
- `BoxDecoration` - Décoration de containers
  - `borderRadius` - Coins arrondis
  - `boxShadow` - Ombres portées
  - `gradient` - Dégradés (si utilisé)
- `Transform.translate` - Déplacement de widgets

### Packages
- `cupertino_icons` ^1.0.8 - Icônes iOS

## 📸 Captures d'écran

> **Note:** Ajoutez ici vos captures d'écran de l'application en fonctionnement

```markdown
### Mode Clair
![Profil](screenshots/profile_light.png)

### Mode Sombre
![Profil Dark](screenshots/profile_dark.png)
```

## 🎨 Choix de conception

### Architecture

J'ai choisi une **architecture par composants** en séparant chaque section dans son propre fichier :
- **Modularité** : Chaque section est indépendante et réutilisable
- **Maintenabilité** : Facile de modifier une section sans affecter les autres
- **Lisibilité** : Le code est organisé logiquement

### Stylisation

#### BoxDecoration
Utilisation extensive de `BoxDecoration` pour :
- **Bordures arrondies** : `borderRadius` pour un look moderne
- **Ombres** : `boxShadow` pour créer de la profondeur
- **Images de fond** : `DecorationImage` pour la photo de couverture

#### Thème
- Utilisation du système de **thème Flutter** (`ThemeData`)
- Support automatique du **mode sombre**
- Couleurs cohérentes via `ColorScheme`

### Responsive Design
- Utilisation de `MediaQuery` pour adapter les tailles
- `Expanded` et `Flexible` pour des layouts adaptatifs
- Proportions relatives plutôt que tailles fixes

## 🚧 Difficultés rencontrées

### 1. Superposition de l'avatar sur la photo de couverture

**Problème :** Positionner l'avatar à cheval entre la photo de couverture et le contenu.

**Solution :** 
- Utilisation d'un `Stack` pour superposer les éléments
- `Positioned` pour placer le contenu en bas
- `Transform.translate` avec un offset négatif pour remonter l'avatar

```dart
Transform.translate(
  offset: Offset(0, -40), // Remonte de 40 pixels
  child: CircleAvatar(...)
)
```

### 2. Gestion du scroll

**Problème :** Conflit entre le scroll de la page et celui des GridView/ListView.

**Solution :** 
- `physics: NeverScrollableScrollPhysics()` sur les listes internes
- Un seul `SingleChildScrollView` pour la page entière
- `shrinkWrap: true` pour que les listes prennent la bonne taille

### 3. Gestion des images manquantes

**Problème :** L'application crash si une image n'existe pas.

**Solution :** 
- Utilisation de `errorBuilder` dans `Image.asset`
- Affichage d'un placeholder en cas d'erreur

```dart
errorBuilder: (context, error, stackTrace) {
  return Container(
    color: Colors.grey[300],
    child: Icon(Icons.image_not_supported),
  );
}
```

### 4. Cohérence des couleurs en mode sombre

**Problème :** Certains éléments mal visibles en mode sombre.

**Solution :** 
- Utilisation systématique de `Theme.of(context).colorScheme`
- Éviter les couleurs hardcodées
- Tester l'application dans les deux modes

## 🚀 Améliorations futures

### Fonctionnalités
- [ ] **Navigation** : Implémenter la navigation entre les pages
- [ ] **État dynamique** : Transformer les StatelessWidget en StatefulWidget
- [ ] **Animations** : Ajouter des transitions animées
- [ ] **Interactions réelles** : Likes, commentaires fonctionnels
- [ ] **Formulaires** : Édition du profil

### Technique
- [ ] **State Management** : Intégrer Provider ou Riverpod
- [ ] **Backend** : Connexion à une API REST
- [ ] **Base de données** : Stockage local avec SQLite
- [ ] **Tests** : Ajouter des tests unitaires et d'intégration
- [ ] **Internationalisation** : Support multilingue

### Design
- [ ] **Animations personnalisées** : Hero animations, micro-interactions
- [ ] **Thèmes personnalisés** : Plus de variations de couleurs
- [ ] **Accessibilité** : Améliorer le support des lecteurs d'écran
- [ ] **Images optimisées** : Compression et lazy loading

## 📚 Ressources utilisées

- [Documentation officielle Flutter](https://flutter.dev/docs)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Material Design Guidelines](https://material.io/design)
- [Flutter Layout Cheat Sheet](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)

## 👨‍💻 Auteur

**Grey ykz Kingrey's**

- Localisation : Sonfona, Conakry
- Profession : Développeur Flutter
- Citation : "L'imagination est mieux que la connaissance"

## 📝 Licence

Ce projet est développé dans un cadre académique. Tous droits réservés.

---

## 🎓 Contexte académique

**Devoir Flutter - Wireframe App**

- **Objectif :** Reproduire un wireframe en utilisant les composants Flutter
- **Date limite :** 27 Décembre 2025
- **Critères d'évaluation :**
  - Respect des consignes (30%)
  - Qualité du code (20%)
  - Fidélité au wireframe (20%)
  - Créativité (20%)
  - Documentation (10%)

---

**Développé avec ❤️ en Flutter**