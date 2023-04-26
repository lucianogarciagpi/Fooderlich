import 'package:flutter/material.dart';
import 'package:fooderlich/circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  // A refatoração converteu AuthorCard em um StatefulWidget
  //  e adicionou uma impementação createState().
  @override
  State<AuthorCard> createState() => _AuthorCardState();
}
  // A refatoração também criou a classe de estado _AuthorCardState
  //  ele armazena dados mutáveis que podem mudar ao logno da vida útil
  //  do widget.
class _AuthorCardState extends State<AuthorCard> {

  bool _isFavorited = false;

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
              CircleImage(widget.imageProvider, imageRadius: 28),
              //  2. Aplica um preenchimento entre o CircleImage e o Column
              //  dentro do column, há dois widgets texts
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  )
                ],
              ),
            ],
          ),
          // TODO 2: Add IconButton
          IconButton(
            //  1 Se o usuario favoritou este cartão, mostra um coração
            //  preenchido se não, mostra delineado.
            icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
            iconSize: 30,
            //  2 mudamos a cor para vermelho para da mais vida ao aplicativo
            color: Colors.red[400],
            onPressed: () {
              //  3 Ao pressionar o iconButton, ele alterna o estado _isFavorited
              // por meio de uma chamada para setState().
              setState(() {
                _isFavorited = !_isFavorited;
              });
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
