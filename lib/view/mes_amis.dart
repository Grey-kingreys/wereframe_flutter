import 'package:flutter/material.dart';

class MesAmis extends StatelessWidget {
  const MesAmis({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> amis = [
      {"nom": "Naruto", "image": "assets/images/naruto.jpg"},
      {"nom": "Neji", "image": "assets/images/neji.jpg"},
      {"nom": "Shikamaru", "image": "assets/images/shikamaru.jpg"},
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8,
        ),
        itemCount: amis.length, // nombre d'amis à afficher
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(amis[index]["image"]!),
                    ),
                    SizedBox(height: 8),
                    Text(amis[index]["nom"]!),
                ],
              ),
              ),
          );
        },
      ),
    );
  }
}
