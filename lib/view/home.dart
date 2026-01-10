// Page principale qui assemble toutes les sections du profil
// Utilise SingleChildScrollView pour permettre le défilement vertical

import 'package:flutter/material.dart';
import 'package:wireframe_app/view/a_propos.dart';
import 'package:wireframe_app/view/mes_amis.dart';
import 'package:wireframe_app/view/mes_postes.dart';
import 'package:wireframe_app/view/profil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  // ===== STYLE POUR LES TITRES DE SECTION =====
  // Méthode réutilisable qui retourne un TextStyle cohérent
  TextStyle titleStyle(BuildContext context) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18, // Augmenté pour plus de visibilité
    color: Theme.of(context).colorScheme.primary, // Utilise la couleur primaire du thème
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ===== BARRE D'APPLICATION =====
      appBar: AppBar(
        elevation: 2, // Réduit pour un look plus moderne
        title: const Text("Profil Facebook"),
        centerTitle: true, // Centre le titre
        // Ajout d'actions possibles (menu, recherche, etc.)
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // TODO: Implémenter la recherche
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // TODO: Afficher le menu
            },
          ),
        ],
      ),
      
      // ===== CORPS DE LA PAGE =====
      // SingleChildScrollView permet de scroller tout le contenu
      body: SingleChildScrollView(
        // Amélioration: ajout d'une physique de scroll plus fluide
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: 8,  // Légèrement augmenté pour plus d'espace
            right: 8, 
            top: 0,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // ===== SECTION PROFIL =====
              Profil(),
              
              SizedBox(height: 16),
              
              // ===== SECTION À PROPOS =====
              sectionTitle(title: "À propos de moi"),
              SizedBox(height: 8),
              Apropos(),
              
              Divider(thickness: 1, height: 32),
              
              // ===== SECTION AMIS =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sectionTitle(title: "Amis"),
                  // Bouton "Voir tous les amis"
                  TextButton(
                    onPressed: () {
                      // TODO: Naviguer vers la page complète des amis
                    },
                    child: Text("Voir tout"),
                  ),
                ],
              ),
              SizedBox(height: 8),
              MesAmis(),
              
              Divider(thickness: 1, height: 32),
              
              // ===== SECTION MES POSTES =====
              sectionTitle(title: "Mes Publications"),
              SizedBox(height: 8),
              MesPostes(),
            ],
          ),
        ),
      ),
    );
  }

  // ===== WIDGET RÉUTILISABLE POUR LES TITRES DE SECTION =====
  // Crée un titre stylisé de manière cohérente
  Widget sectionTitle({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(
        title, 
        style: titleStyle(context),
      ),
    );
  }
}
