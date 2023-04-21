import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // Add dark overlay BoxDecoration
            Container(
              decoration: BoxDecoration(
                //  1. Adicionando um container com uma sobreposição de cores
                //  com um plano de funto semitransparente de 60% para que
                //  a imagem aparece mais escura.
                color: Colors.black.withOpacity(0.6),

                //  2
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),

            // Add Container, Column, Icon and Text
            Container(
              //  3. Aplica um preenchimento de 16px em todos os lados
              padding: const EdgeInsets.all(16),
              //  4. Column para dispor outros widgets verticalmente
              child: Column(
                //  5. Posicionando todos os widgets filhos a esqueda.
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  6. Adicionando um Icon
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  //  7. Aplicando um espaço de 8px verticalmente
                  const SizedBox(height: 8),
                  //  8. Adicione o widget de texto
                  Text('Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.headline2,
                  ),
                  //  9. Aplicar um espaço de 30px verticalmente.
                  const SizedBox(height: 30),
                ],
              ),
            )
            // TODO: Add Center widget with Chip widget children
          ],
        ),
      ),
    );
  }
}
