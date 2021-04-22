import 'package:flutter/material.dart';
class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 5.0),
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.red
            ),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Container(
                alignment: Alignment.center,
                color: Colors.yellow,
                transform: Matrix4.rotationZ(50),
                child: Text("Container"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
