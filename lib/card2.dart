import 'package:flutter/material.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(

      //  1. O Widget Center, tem um filho "Container" que tem três propriedades,
      //  sendo as duas primeiras "constraints", "decoration"
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mag5.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),

        //  2. A terceira propriedade, é o column, que exibe seus widgets filhos
        //  na vertical.
        child: Column(
          children: const [
            //  TODO 1: Add author information
            //  TODO 4: add Positioned text
          ],
        ),
      ),
    );
  }
}
