import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
            "images/logo.png",
          width: 100,
          height: 30,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: (){
                print('vidoe cam');
              },
          ),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                print('search');
              }
          ),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){
                print('account_circle');
              }
          )
        ],
      ),
      body: Container(),
    );
  }
}
