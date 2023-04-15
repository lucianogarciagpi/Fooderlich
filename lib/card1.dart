import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  //  1. Definindo variáveis a serem exibidas no cartão com dados fake
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  //  2. Widget sem monitoração de estado vem com um método build() para você
  //  substitui.
  @override
  Widget build(BuildContext context) {

    //  3. Conteiner disposto no centro.
    return Center(
      // TODO: Card1 Decorate Container
      child: Container(

        //  1. Aplique um padding de 16 pixels em todos os lados do container
        padding: const EdgeInsets.all(16),

        //  2. Restrinja o tamanho do contêiner a uma largura de 350
        //  e uma altura de 450 pixels.
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),

        //  3. Aplicar um BoxDecoration, descreve como desenhar
        //  uma caixa.
        decoration: const BoxDecoration(

          //  4. Informa para pintar uma imagem
          image: DecorationImage(

            //  5. define qual a imagem que é para ser pintada
            image: AssetImage('assets/mag1.png'),

            //  6. Informa para cubrir a caixa inteira com essa imagem
            fit: BoxFit.cover,
          ),

          //  7. Aplicando um raio de canto de 10 pixels em todos os lados
          //  do recipiente.
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        // TODO: Add a stack of text
        child: Stack(
          children: [
            Text(category, style: FooderlichTheme.darkTextTheme.bodyText1),
            Text(title, style: FooderlichTheme.darkTextTheme.headline5),
            Text(description, style: FooderlichTheme.darkTextTheme.bodyText1),
            Text(chef, style: FooderlichTheme.darkTextTheme.bodyText1),
          ],
        ),
      ),
    );
  }
}
