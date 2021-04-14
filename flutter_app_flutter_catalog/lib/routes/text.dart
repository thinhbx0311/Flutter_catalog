import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Text Example", style: TextStyle(
        fontSize: 50,
        color: Colors.blue,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none
      ),),
    );
  }
}
