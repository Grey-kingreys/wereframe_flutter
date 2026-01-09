import 'package:flutter/material.dart';

class MesAmis extends StatelessWidget {
  const MesAmis({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          
        ),// nombre d'amis à afficher
        itemBuilder: (context, index) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/naruto.jpg"),
                    ), // avatar de l'ami
                    Text("Naruto"),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/neji.jpg"),
                    ), // avatar de l'ami
                    Text("Neji"),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/shikamaru.jpg"),
                    ), // avatar de l'ami
                    Text("Shikamaru"),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
