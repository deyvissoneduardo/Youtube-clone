import 'package:flutter/material.dart';

class InitLayout extends StatefulWidget {
  @override
  _InitLayoutState createState() => _InitLayoutState();
}

class _InitLayoutState extends State<InitLayout> {
  @override
  Widget build(BuildContext context) {
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
