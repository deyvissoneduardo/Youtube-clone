import 'package:flutter/material.dart';
import 'package:youtubeclone/layouts/AcessLayout.dart';
import 'package:youtubeclone/layouts/InitLayout.dart';
import 'package:youtubeclone/layouts/LibraryLayout.dart';

import 'layouts/RegisteLayout.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> layouts = [
      InitLayout(), // tela inicio
      AcessLayout(), // tela em alta
      RegisteLayout(), // tela inscricao
      LibraryLayout(), // tela biblioteca
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey, opacity: 1),
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/logo.png",
          width: 100,
          height: 30,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              print('vidoe cam');
            },
          ),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search');
              }),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                print('account_circle');
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: layouts[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (indece) {
            setState(() {
              _indiceAtual = indece;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                //backgroundColor: Colors.orange,
                title: Text("Inicio"),
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                //backgroundColor: Colors.red,
                title: Text("Em Alta"),
                icon: Icon(Icons.whatshot)),
            BottomNavigationBarItem(
                //backgroundColor: Colors.blueAccent,
                title: Text("Inscrições"),
                icon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                //backgroundColor: Colors.green,
                title: Text("Biblioteca"),
                icon: Icon(Icons.folder))
          ]),
    );
  }
}
