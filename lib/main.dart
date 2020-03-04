import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compras online',
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatefulWidget {

  static List<Widget> telas = [
    ListaProdutos(),
    Perfil(),
  ];

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TelaInicial.telas[indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("Lista de produtos"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Meus dados"),
          ),
        ],
        currentIndex: indice,
        onTap: (indiceItem) {
          setState(() {
            indice = indiceItem;
          });
        },
      ),
    );
  }
}

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu perfil"),
      ),
      body: Card(
        child: ListTile(
          title: Text("Alex Felipe"),
        ),
      ),
    );
  }
}

class ListaProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de produtos"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text("Refrigerante"),
              subtitle: Text("R\$ 8,00"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Queijo"),
              subtitle: Text("R\$ 3,00"),
            ),
          )
        ],
      ),
    );
  }
}
