// ============================================================================
// FICHIER: view/a_propos.dart
// ============================================================================
// Ce fichier gère l'affichage de la section "À propos" du profil
// Il affiche les informations personnelles de l'utilisateur sous forme de liste

import 'package:flutter/material.dart';

class Apropos extends StatelessWidget {
  const Apropos({super.key});

  @override
  Widget build(BuildContext context) {
    // ===== LISTE DES INFORMATIONS PERSONNELLES =====
    // Créer une liste de Maps pour organiser les données
    // Cela rend le code plus propre et facile à maintenir
    final List<Map<String, dynamic>> informations = [
      {
        "titre": "Sonfona, Conakry",
        "icone": Icons.home,
        "couleur": Colors.blue,
      },
      {
        "titre": "Développeur Flutter", // Correction orthographique
        "icone": Icons.work,
        "couleur": Colors.orange,
      },
      {
        "titre": "En couple avec Oumou Bah et Fatimatou Diallo",
        "icone":
            Icons.favorite, // Icon plus appropriée pour le statut relationnel
        "couleur": Colors.red,
      },
    ];

    // ===== CONTAINER PRINCIPAL =====
    return Container(
      // Prend toute la largeur disponible
      width: MediaQuery.of(context).size.width,
      // Padding pour aérer le contenu
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

      // ===== COLONNE CONTENANT LES INFORMATIONS =====
      child: Column(
        // Commence en haut
        mainAxisAlignment: MainAxisAlignment.start,
        // Aligne à gauche
        crossAxisAlignment: CrossAxisAlignment.start,
        // Prend seulement l'espace nécessaire
        mainAxisSize: MainAxisSize.min,

        children: [
          // ===== GÉNÉRATION DYNAMIQUE DES LISTILES =====
          // On utilise la méthode map() pour créer un ListTile pour chaque info
          ...informations.map((info) {
            return _buildInfoTile(
              context: context,
              titre: info["titre"],
              icone: info["icone"],
              couleur: info["couleur"],
            );
          }).toList(),

          // Alternative avec ListView.builder (plus performant pour grandes listes)
          // Mais ici on a seulement 3 éléments, donc map() suffit

          // ===== BOUTON "MODIFIER LES INFORMATIONS" (optionnel) =====
          // Décommentez si vous voulez ajouter cette fonctionnalité
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          //   child: TextButton.icon(
          //     onPressed: () {
          //       // TODO: Implémenter la modification des infos
          //     },
          //     icon: Icon(Icons.edit),
          //     label: Text("Modifier les informations"),
          //   ),
          // ),
        ],
      ),
    );
  }

  // ===== MÉTHODE PRIVÉE POUR CRÉER UN LISTTILE STYLISÉ =====
  // Le underscore (_) devant le nom indique que c'est une méthode privée
  // Elle est réutilisable et rend le code plus propre
  Widget _buildInfoTile({
    required BuildContext context,
    required String titre,
    required IconData icone,
    required Color couleur,
  }) {
    return Card(
      // Légère élévation pour un effet de profondeur
      elevation: 1,
      // Marge entre les cartes
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
      // Forme avec coins arrondis
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      // ===== LISTTILE POUR AFFICHER L'INFORMATION =====
      child: ListTile(
        // Dense rend le ListTile plus compact
        dense: false,
        // Padding interne du ListTile
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

        // ===== ICÔNE À GAUCHE =====
        // Container pour donner un fond coloré circulaire à l'icône
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            // Couleur de fond avec opacité réduite
            color: couleur.withOpacity(0.1),
            // Forme circulaire
            shape: BoxShape.circle,
          ),
          child: Icon(icone, color: couleur, size: 24),
        ),

        // ===== TEXTE PRINCIPAL =====
        title: Text(
          titre,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),

        // ===== EFFET DE CLIC (optionnel) =====
        // Ajoute un effet de ripple au clic
        onTap: () {
          // TODO: Ajouter une action au clic (par exemple, copier le texte)
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(titre),
              duration: const Duration(seconds: 1),
            ),
          );
        },

        // ===== ICÔNE TRAILING (optionnel) =====
        // Décommentez pour ajouter une icône à droite
        // trailing: Icon(
        //   Icons.arrow_forward_ios,
        //   size: 16,
        //   color: Colors.grey,
        // ),
      ),
    );
  }
}


