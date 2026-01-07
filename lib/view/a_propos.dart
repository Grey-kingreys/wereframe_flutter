import 'package:flutter/material.dart';

class Apropos extends StatelessWidget {
  const Apropos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          ListTile(
            title: Text("Sonfona, Conakry"), 
            leading: Icon(Icons.home)
          ),
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
