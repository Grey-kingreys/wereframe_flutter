// Ce fichier gère l'affichage de la section profil de l'utilisateur
// Il utilise un Stack pour superposer l'image de couverture et les infos du profil

import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    // Récupération de la taille de l'écran pour un design responsive
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      // La hauteur prend la moitié de l'écran
      height: size.height / 2,
      width: size.width,

      // Stack permet de superposer des widgets les uns sur les autres
      child: Stack(
        children: [
          // ===== IMAGE DE COUVERTURE (ARRIÈRE-PLAN) =====
          Container(
            height: size.height / 2,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/back.jpg"),
                // BoxFit.cover remplit tout l'espace sans déformer l'image
                fit: BoxFit.cover,
              ),
            ),
          ),

          // ===== SECTION INFORMATIONS DU PROFIL =====
          // Positioned permet de placer le widget exactement où on veut dans le Stack
          Positioned(
            bottom: 0, // Collé en bas
            left: 0, // Prend toute la largeur
            right: 0,
            child: Container(
              // Prend la couleur du thème actif (clair ou sombre)
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                // Pas de bordures arrondies ici, mais on pourrait ajouter:
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(20),
                //   topRight: Radius.circular(20),
                // ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    // ===== PHOTO DE PROFIL =====
                    // Transform.translate déplace le widget verticalement
                    // Offset négatif (-40) = vers le haut
                    Transform.translate(
                      offset: Offset(0, -40),
                      child: CircleAvatar(
                        radius: 50,
                        // Bordure blanche autour de l'avatar
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        child: CircleAvatar(
                          radius: 47, // Un peu plus petit pour créer la bordure
                          backgroundImage: AssetImage(
                            "assets/images/sasuke.jpg",
                          ),
                        ),
                      ),
                    ),

                    // ===== NOM DE L'UTILISATEUR =====
                    Transform.translate(
                      offset: Offset(0, -30),
                      child: Text(
                        "Grey ykz Kingrey's",
                        style: TextStyle(
                          fontSize: 18, // Augmenté pour plus de visibilité
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),

                    // ===== BIO/CITATION =====
                    Transform.translate(
                      offset: Offset(0, -20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "L'imagination est mieux que la connaissance", // Corrigé: apostrophe ajoutée
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurface.withOpacity(0.7),
                            fontStyle: FontStyle
                                .italic, // Style italique pour la citation
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    // ===== BOUTONS D'ACTION =====
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          // Bouton "Modifier le profil"
                          // Expanded permet au bouton de prendre tout l'espace disponible
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // TODO: Implémenter la modification du profil
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Modification du profil"),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(
                                  context,
                                ).colorScheme.inversePrimary,
                                padding: EdgeInsets.symmetric(vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 2, // Légère ombre pour le bouton
                              ),
                              child: Text(
                                "Modifier le profil",
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 12),

                          // Bouton icône (crayon) - pour édition rapide
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).colorScheme.inversePrimary,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                // TODO: Ouvrir l'éditeur rapide
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Édition rapide")),
                                );
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 12),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
