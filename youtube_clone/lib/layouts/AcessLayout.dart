import 'package:flutter/material.dart';

class AcessLayout extends StatefulWidget {
  @override
  _AcessLayoutState createState() => _AcessLayoutState();
}

class _AcessLayoutState extends State<AcessLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Em Alta",
          style: TextStyle(
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
