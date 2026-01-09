import 'package:flutter/material.dart';
import 'package:wireframe_app/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // Je definie la theme clair de l'application
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true
      ),
      // Je definie la theme de l'application si le telephone est en mode dark
      darkTheme: ThemeData.dark(useMaterial3: true),
      // Maintenant j'appel home
      home: Home(),
    );
  }
}
