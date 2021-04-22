import 'package:flutter/material.dart';

class ExpandedSizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("Expanded flex = 1")),
            )),
        SizedBox(
          height: 20,
          child: Text("SizedBox"),
        ),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              child: Center(child: Text("Expanded flex = 2")),
            )),
        SizedBox(
          height: 20,
          child: Text("SizedBox"),
        ),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
              child: Center(child: Text("Expanded flex = 3")),
            )),
      ],
    );
  }
}
