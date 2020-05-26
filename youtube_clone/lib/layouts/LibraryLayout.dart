import 'package:flutter/material.dart';

class LibraryLayout extends StatefulWidget {
  @override
  _LibraryLayoutState createState() => _LibraryLayoutState();
}

class _LibraryLayoutState extends State<LibraryLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Biblioteca",
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
}
