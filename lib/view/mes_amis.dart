// Affiche la liste des amis sous forme de grille
// Utilise GridView.builder pour une disposition en colonnes

import 'package:flutter/material.dart';

class MesAmis extends StatelessWidget {
  const MesAmis({super.key});

  @override
  Widget build(BuildContext context) {
    // ===== DONNÉES DES AMIS =====
    // Liste de Maps contenant les informations de chaque ami
    final List<Map<String, String>> amis = [
      {"nom": "Naruto", "image": "assets/images/naruto.jpg"},
      {"nom": "Neji", "image": "assets/images/neji.jpg"},
      {"nom": "Shikamaru", "image": "assets/images/shikamaru.jpg"},
      // Tu peux ajouter plus d'amis ici
      // {"nom": "Sakura", "image": "assets/images/sakura.jpg"},
    ];
    
    return SizedBox(
      // Hauteur fixe pour afficher une ligne de 3 amis
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      
      // ===== GRILLE D'AMIS =====
      // GridView.builder crée une grille scrollable
      child: GridView.builder(
        // shrinkWrap: true -> la grille prend seulement l'espace nécessaire
        shrinkWrap: true,
        // NeverScrollableScrollPhysics -> désactive le scroll interne
        // car on scroll déjà la page entière (SingleChildScrollView)
        physics: NeverScrollableScrollPhysics(),
        
        // ===== CONFIGURATION DE LA GRILLE =====
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,        // 3 colonnes
          crossAxisSpacing: 10,     // Espace horizontal entre les cartes (augmenté)
          mainAxisSpacing: 10,      // Espace vertical entre les cartes (augmenté)
          childAspectRatio: 0.85,   // Ratio largeur/hauteur de chaque carte
        ),
        
        itemCount: amis.length, // Nombre d'amis à afficher
        
        // ===== CONSTRUCTION DE CHAQUE CARTE AMI =====
        itemBuilder: (context, index) {
          return Card(
            // elevation crée une ombre pour effet 3D
            elevation: 3,
            // Forme arrondie de la carte
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            // ===== CONTENU DE LA CARTE =====
            child: InkWell(
              // InkWell ajoute un effet de clic
              onTap: () {
                // TODO: Naviguer vers le profil de l'ami
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Profil de ${amis[index]["nom"]}"),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              // Bordures arrondies pour l'effet de clic
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ===== AVATAR DE L'AMI =====
                    CircleAvatar(
                      radius: 30, // Augmenté pour plus de visibilité
                      backgroundImage: AssetImage(amis[index]["image"]!),
                      // Couleur de fond si l'image ne charge pas
                      backgroundColor: Colors.grey[300],
                    ),
                    
                    SizedBox(height: 8),
                    
                    // ===== NOM DE L'AMI =====
                    Text(
                      amis[index]["nom"]!,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                      // Empêche le texte de déborder
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}