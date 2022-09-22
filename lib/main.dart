import 'package:flutter/material.dart';

//  1º Importação do FooderlichTheme
import 'fooderlich_theme.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({super.key});

  @override
  Widget build(BuildContext context) {
    // 2º denição de uma variável que contem o fooderlich_theme
    final theme = FooderlichTheme.light();
    // TODO: Apply Home widget
    return MaterialApp(
      // 3º Adicionando a propriedade theme para uso no MaterialApp
      theme: theme,
      title: 'Fooderlich',
      home: Scaffold(
        // TODO: Style the title
        appBar: AppBar(
          title: Text('Fooderlich',
            // 4º Adicionando estilo de texto AppBar
            style: theme.textTheme.headline6,
          ),
        ),
        // TODO: Style the body text
        body: Center(
          child: Text(
            'Let\'s get cooking 👩‍🍳',
            // 5º Adicionando estilo ao texto do corpo
            style: theme.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
