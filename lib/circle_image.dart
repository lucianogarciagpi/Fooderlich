import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  //  1.  Parâmetros do CircleImage: imageProvider e imageRadius
  const CircleImage(
    this.imageProvider, {
    super.key,
    this.imageRadius = 20,
  });

  //  2. Declarações e tipo de variáveis
  final double imageRadius;
  final ImageProvider imageProvider;

  @override
  Widget build(BuildContext context) {

    //  3. Widget fornecido pela biblioteca Material,
    //  definido como um círculo branco com um raio de
    //  imageRadius
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,

      //  4. Criamos outro CircleAvatar aninhado que incluirá
      //  a imagem do perfil do usuário.
      child: CircleAvatar(
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
