import 'package:flutter/material.dart';

//  1 Importando os arquivos barril
//  component.dart e models.dart
import '../components/components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatelessWidget {

  //  2 "TodayRecipeListView" precisa de uma lista de receitas para exibir
  final List<ExploreRecipe> recipes;

  const TodayRecipeListView({
    Key? key,
    required this.recipes
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //  3 Dentro do build(), comece aplicando um preenchimento
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),

      //  4 Adicionando uma coluna para colocar widgets em um
      //  layout vertical
      child: Column(
        children: [

          //  5 Adicione um "Text()" na coluna, este é o cabeçalho
          //  da receita do dia.
          Text('Recipes of the Day 🍳', style: Theme.of(context).textTheme.headline1),

          //  6 Adicione um "SizeBox()" de 16px de altura.
          const SizedBox(height: 16),

          //  7 Adicione um "container()" com 400px de altura.
          Container(
            height: 400,
            // TODO: Add ListView Here
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
