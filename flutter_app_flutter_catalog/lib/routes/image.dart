import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            title: Text("1. Image from asset:"),
          ),
          Card(
            child: Image.asset("assets/image/fluterr.png"),
          )
        ],
      ),
    );
  }
}
