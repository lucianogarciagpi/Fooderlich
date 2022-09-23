import 'package:flutter/material.dart';

//  1º Importação do FooderlichTheme
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({super.key});

  @override
  Widget build(BuildContext context) {
    // 2º denição de uma variável que contem o fooderlich_theme
    final theme = FooderlichTheme.dark();
    // TODO: Apply Home widget
    return MaterialApp(
      // 3º Adicionando a propriedade theme para uso no MaterialApp
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
