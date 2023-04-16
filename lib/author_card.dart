import 'package:flutter/material.dart';

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
        children: const [],
      ),
    );
  }
}
