import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String dropdownValue = "One";

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          alignment: Alignment.center,
          child: DropdownButton(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            dropdownColor: Colors.red,
            items: <String>["One", "Two", "Three"]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
          )),
    ]);
  }
}
