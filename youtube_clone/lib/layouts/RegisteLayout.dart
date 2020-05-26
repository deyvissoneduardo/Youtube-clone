import 'package:flutter/material.dart';

class RegisteLayout extends StatefulWidget {
  @override
  _RegisteLayoutState createState() => _RegisteLayoutState();
}

class _RegisteLayoutState extends State<RegisteLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Inscrições",
          style: TextStyle(
              fontSize: 25
          ),
        ),
      ),
    );
  }
}
