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
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(),
              ),
              child: Column(
                children: [
                  Transform.translate(
                    offset: Offset(0, -40),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/sasuke.jpg"),
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0, -30),
                    child: Text(
                      "Grey ykz Kingrey's",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0, -20),
                    child: Text(
                      "Limagination est mieux que la connaissance",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSurface),
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
                              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                              padding: EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Text(
                              "Modifier le profil",
                              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
                            ),
                          ),
                        ),

                        SizedBox(width: 20),

                        // Bouton icône (crayon)
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit, color: Theme.of(context).colorScheme.onSurface),
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
