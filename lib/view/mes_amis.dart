import 'package:flutter/material.dart';

class MesAmis extends StatelessWidget {
  const MesAmis({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/5,

      child: Row(
        children: [
          Column(
            children: [
              Card()
            ],
          )
        ],
      ),
    );
  }


}
