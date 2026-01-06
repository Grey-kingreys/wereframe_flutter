import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 2,
      width: size.width,

      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/back.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(),
              ),
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, -40),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/sasuke.jpg"),
                      backgroundColor: Colors.white,
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0, -30),
                    child: Text(
                      "Grey ykz Kingrey's",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColorDark,
                      ),
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0, -20),
                    child: Text(
                      "Personne n'a le droit de juger un homme avant la fin car l'etre humain est capable du meilleur comme du pire",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ),
                  // Boutons
                  Transform.translate(
                    offset: Offset(0, 0),
                    child: Row(
                      children: [
                        // Bouton "Modifier le profil"
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Text(
                              "Modifier le profil",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),

                        SizedBox(width: 20),

                        // Bouton icône (crayon)
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
