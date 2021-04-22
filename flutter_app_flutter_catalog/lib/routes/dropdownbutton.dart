import 'package:flutter/material.dart';

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String dropdownValue = "One";
  String _dropdownValueHint;

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(10.0), children: [
      Container(
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(left: 20.0)),
              Expanded(
                child: Text(
                  "1. Dropdown button",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Colors.black),
                ),
              ),
              DropdownButton(
                value: dropdownValue,
                icon: Icon(Icons.arrow_downward),
                dropdownColor: Colors.white,
                items: <String>["One", "Two", "Three"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(right: 20.0))
            ],
          )),
      Divider(),
      Container(
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(left: 20.0)),
              Expanded(
                child: Text(
                  "2. Dropdown button (hint)",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Colors.black),
                ),
              ),
              DropdownButton(
                value: _dropdownValueHint,
                hint: Text("Choose"),
                icon: Icon(Icons.arrow_downward),
                dropdownColor: Colors.white,
                items: <String>["One", "Two", "Three"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    _dropdownValueHint = newValue;
                  });
                },
              ),
              Padding(padding: EdgeInsets.only(right: 20.0))
            ],
          )),
      Divider(),
      Container(
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(left: 20.0)),
              Expanded(
                child: Text(
                  "3. Dropdown menu",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Colors.black),
                ),
              ),
              PopupMenuButton(
                icon: Icon(
                  Icons.privacy_tip_outlined,
                ),
                itemBuilder: (BuildContext context) => <String>[
                  "One",
                  "Two",
                  "Three"
                ].map<PopupMenuItem<String>>((String value) {
                  return PopupMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
              ),
            ],
          )),
    ]);
  }
}
