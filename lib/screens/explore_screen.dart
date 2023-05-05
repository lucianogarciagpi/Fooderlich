import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';

import '../models/explore_data.dart';

class ExploreScreen extends StatelessWidget {
  //  Criando um MockFooderlichService/ Serviço Simulado de Fooderlich
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  1 Criamos um FutureBuilder dentro do build
    return FutureBuilder(

        //  2 "FutureBuilder" toma um futuro como parâmetro.
        //  que é o "getExploreData()", que por sua vez, retornará
        //  uma instância de "ExploreData", essa instância conterá
        //  duas listas, "todayRecipes" e "friendPosts".
        future: mockService.getExploreData(),

        //  3 No "builder", você usa o snapshot para verificar
        //  o estado atual do "Futuro".
        builder: (context, AsyncSnapshot<ExploreData> snapshot) {

          //  4 Agora, o "Futuro" está completo e você pode extrair
          //  os dados atual do Futuro.
          if (snapshot.connectionState == ConnectionState.done) {

            //  5 "snapshop.data" retorna "ExploreData"
            final recipes = snapshot.data?.todayRecipes ?? [];
            //  TODO: Replace this with TodayRecipeListView
            return const Center(
              child: Text('Show TodayRecipeListView'),
            );
          } else {
            //  6
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
