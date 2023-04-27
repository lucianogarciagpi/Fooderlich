import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {

  //  1. Criando um MockFooderlichService/ Serviço Simulado de Fooderlich
  final mockService = MockFooderlichService();

  ExploreScreen({
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  2. Exibindo um texto de espaço reservado
    // TODO: Add TodayRecipeListView FutureBuilder
    return const Center(
      child: Text('Explore Screen'),
    );
  }
}
