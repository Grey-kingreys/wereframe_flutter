import 'package:flutter/material.dart';

class Apropos extends StatelessWidget {
  const Apropos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(title: Text("Sonfona, Conakry"), leading: Icon(Icons.home)),
          ListTile(
            title: Text("Developpeur flutter"),
            leading: Icon(Icons.work),
          ),
          ListTile(
            title: Text("En couple avec Oumou Bah et Fatimatou Diallo"),
            leading: Icon(Icons.woman),
          ),
        ],
      ),
    );
  }
}
