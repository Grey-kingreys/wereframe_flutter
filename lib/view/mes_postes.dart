import 'package:flutter/material.dart';

class MesPostes extends StatelessWidget {
  const MesPostes({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste des postes avec leurs données
    // Chaque Map contient les informations d'un poste
    final List<Map<String, dynamic>> postes = [
      {
        "description": "Belle femme, ma future epouse",
        "image": "assets/images/hinata.jpg",
        "likes": 42,
        "commentaires": 8,
      },
      {
        "description": "Mon sensei le meilleur, il m'a tellement appris",
        "image": "assets/images/kakashi.jpg",
        "likes": 156,
        "commentaires": 23,
      },
      {
        "description": "Une amie superbe, au debut elle est froide mais elle est forte et gentille",
        "image": "assets/images/sakura.jpg",
        "likes": 89,
        "commentaires": 12,
      },
    ];

    // Container principal pour la section des postes
    return Container(
      // Prend toute la largeur disponible
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),

      // ListView.builder pour créer une liste scrollable
      // Il créera autant d'items qu'il y a de postes
      child: ListView.builder(
        // shrinkWrap: true permet au ListView de prendre seulement l'espace nécessaire
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics() désactive le scroll interne
        // car on scroll déjà la page entière
        physics: const NeverScrollableScrollPhysics(),
        // Le nombre de postes à afficher
        itemCount: postes.length,

        // itemBuilder est appelé pour chaque poste
        itemBuilder: (context, index) {
          // On récupère les données du poste actuel
          final poste = postes[index];

          // Card pour donner un effet de carte avec ombre
          return Card(
            // margin entre les cartes
            margin: const EdgeInsets.symmetric(vertical: 8),
            // elevation pour l'ombre de la carte
            elevation: 3,
            // Forme de la carte avec coins arrondis
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            // Column pour empiler les éléments verticalement
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // En-tête du poste avec avatar et nom
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      // Avatar de l'utilisateur
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/sasuke.jpg"),
                      ),
                      const SizedBox(width: 10),
                      // Nom de l'utilisateur
                      Text(
                        "Grey ykz Kingrey's",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                // Description du poste
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    poste["description"],
                    style: TextStyle(fontSize: 14),
                  ),
                ),

                const SizedBox(height: 8),

                // Image du poste
                // ClipRRect pour arrondir les coins de l'image
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    poste["image"],
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                    // errorBuilder pour gérer le cas où l'image n'existe pas
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 200,
                        color: Colors.grey[300],
                        child: Icon(Icons.image_not_supported, size: 50),
                      );
                    },
                  ),
                ),

                // Section des interactions (likes et commentaires)
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      // Bouton Like
                      Icon(Icons.favorite_border, size: 20),
                      const SizedBox(width: 4),
                      Text("${poste["likes"]}"),

                      const SizedBox(width: 20),

                      // Bouton Commentaire
                      Icon(Icons.comment_outlined, size: 20),
                      const SizedBox(width: 4),
                      Text("${poste["commentaires"]}"),

                      // Spacer pour pousser le bouton partage à droite
                      Spacer(),

                      // Bouton Partage
                      Icon(Icons.share_outlined, size: 20),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
