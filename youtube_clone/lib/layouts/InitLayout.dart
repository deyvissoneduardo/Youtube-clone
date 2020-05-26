import 'package:flutter/material.dart';
import 'package:youtubeclone/api/Api.dart';

class InitLayout extends StatefulWidget {
  @override
  _InitLayoutState createState() => _InitLayoutState();
}

class _InitLayoutState extends State<InitLayout> {
  @override
  Widget build(BuildContext context) {

    Api api = Api();
    api.pesquisar("");

    return Container(
      child: Center(
        child: Text(
          "Início",
          style: TextStyle(
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
