import 'package:flutter/material.dart';
import 'package:fooderlich/main.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';

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
          children: [
            //  TODO 1: Add author information
            const AuthorCard(
              authorName: "Mike Katz",
              title: "Smoothie Connoisseus",
              imageProvider: AssetImage("assets/author_katz.jpeg"),
            ),
            //  TODO 4: add Positioned text

            //  1. Com esse widget, você preenche o restante do espaço
            Expanded(

              //  2. Aplique este widget para empilhar os widgets uns sobre os outros.
              child: Stack(
                children: [

                  //  3. Posicione o primeiro widget, 16px inferior e 16 a direita
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),

                  //  4. Posicione o segundo widget a 70px da parte inferior e 16px da esquerda
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
