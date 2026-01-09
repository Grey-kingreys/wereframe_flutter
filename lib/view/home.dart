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

  TextStyle titleStyle(BuildContext context) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Theme.of(context).colorScheme.inversePrimary
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 6, title: const Text("Profil facebook")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 5, 
            right: 5, 
            top: 0,
            bottom: 16
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //profil
              Profil(),
              const Divider(),
              sectionTitle(title: "A propos de moi"),
              Apropos(),
              const Divider(),
              sectionTitle(title: "Amis"),
              MesAmis(),
              sectionTitle(title: "Mes Postes"),
              MesPostes(),
            ],
          ),
        )
      ),
    );
  }

  Widget sectionTitle({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, left: 8),
      child: Text(title, style: titleStyle(context)),
    );
  }
}
