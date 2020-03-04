import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compras online',
      home: ListaProdutos(),
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
