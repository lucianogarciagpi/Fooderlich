import 'package:flutter/material.dart';
import 'package:fooderlich/circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  //  1.  Parâmetros de AuthorCard
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  //  2. O AuthoCard é agrupado em um container, e usa um widget row
  //  para dispor os outros widgets horizontalmente
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        // TODO 3: add aligment
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //  1. Widget Row que agrupa informações do autor
          //  Row, CircleImage e Text
          Row(
            children: [
              CircleImage(imageProvider, imageRadius: 28),
              //  2. Aplica um preenchimento entre o CircleImage e o Column
              //  dentro do column, há dois widgets texts
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  )
                ],
              ),
            ],
          ),
          // TODO 2: Add IconButton
          IconButton(
            //  4. Definindo o ícone, tamanho e cor
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
            //  5. Exiba um snackBar quando o usuario tocar no ícone
            onPressed: () {
              const snackBar = SnackBar(
                content: Text('Press Favorite'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          )
        ],
      ),
    );
  }
}
