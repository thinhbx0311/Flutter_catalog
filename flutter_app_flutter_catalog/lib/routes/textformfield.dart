import 'package:flutter/material.dart';

class TextFormFieldExample extends StatefulWidget {
  @override
  _TextFormFieldExampleState createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Divider(),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.perm_identity),
              labelText: "Full Name",
            ),
          )
        ],
      )
    );
  }
}
