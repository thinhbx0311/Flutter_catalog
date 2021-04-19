import 'dart:math' show pi;
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart'; //use gradient_app_bar
// add "gradient_app_bar: ^0.1.3" to your "pubspec.yaml"

class GradientExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text("Gradient App Bar"),
        gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.green, Colors.red])),
            child: Text("Linear Gradient",
                style: TextStyle(color: Colors.white, fontSize: 30.0)),
            alignment: Alignment.center,
          ),
          Divider(),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                    radius: 0.7,
                    colors: [Colors.greenAccent, Colors.yellowAccent])),
            child: Text("Radial Gradient",
                style: TextStyle(color: Colors.red, fontSize: 30.0)),
            alignment: Alignment.center,
          ),
          Divider(),
          Container(
            height: 300,
            decoration: BoxDecoration(
                gradient: SweepGradient(
                    startAngle: pi / 6,
                    endAngle: pi * 1.8,
                    colors: [Colors.red, Colors.cyanAccent])),
            child: Text("Linear Gradient",
                style: TextStyle(color: Colors.white, fontSize: 30.0)),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
