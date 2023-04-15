import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';

//  1. Nova classe estende StatefulWidget
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //  TODO: Add state variables and functions
  //  1. _selectedIndex controla qual guia está selecionada no momento.
  //  O "_", significa que é privado. O indice selecionado é o estado que
  //  esta sendo rastreado por _HomeState.
  int _selectedIndex = 0;

  //  2. Definindo os Widgets que serão exibidos em cada guia, por enquanto
  //  mostra cores.
  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    //  TODO: Replace with Card3
    Container(color: Colors.blue),
  ];

  //  9.  Lida com itens da barra de tabulação tocados, aqui definimos o índice
  //  do item que o usuário pressionou. setState() notifica a estrutura que o
  //  estado desse objeto foi alterado, e em seguida reconstrói esse widget
  //  internamente.
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Foorderlich',
          //  2. Theme.of(context) retorna o Theme mais próximo da árvore de widgets
          //  Se o Widget tiver um tema definido, ele retorna esse, caso contrário
          //  retorna o tema do aplicativo.
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: pages[_selectedIndex],
      //  TODO: Add bottom navigation bar
      //  4. Definindo um BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
          //  5. Definindo a cor de seleção de um item quando tocado
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          //  TODO: Set selected tab bar
          //  10. Informa a barra de navegacao inferior qual item da barra de
          //  guias destacar.
          currentIndex: _selectedIndex,
          //  11. O usuario ao tocar em um item na barra de guias, ´chamado o
          //  manipulador de _omItemTapped, que atualiza o índice e muda a cor.
          onTap: _onItemTapped,

          //  6. Definindo três itens da barra de guias de navegação inferior
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Card",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Card2",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Card3",
            ),
          ]),
    );
  }
}
