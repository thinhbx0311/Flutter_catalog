import 'dart:ffi';

import 'package:flutter/material.dart';
class OtherStatefulWidgets extends StatefulWidget {
  @override
  _OtherStatefulWidgetsState createState() => _OtherStatefulWidgetsState();
}

class _OtherStatefulWidgetsState extends State<OtherStatefulWidgets> {
  bool _valueSwitch = true;
  bool _valueCheckbox = false;
  double _valueSlider = 0;
  double _valueSliderDivision = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("1. Switch",
            style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        Container(
          height: 50,
          child: Center(
            child: Switch(
              value: _valueSwitch,
              onChanged: (bool value) {
                setState(() {
                  _valueSwitch = value;
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text("2. Disable Switch",
            style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        Container(
          height: 50,
          child: Center(
            child: Switch(
              value: false,
              onChanged: null
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text("3. Checkbox",
            style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        Container(
          height: 50,
          child: Center(
            child: Checkbox(
              value: _valueCheckbox,
              onChanged: (bool value) {
                setState(() {
                  _valueCheckbox = value;
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text("4. Disable Switch",
            style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        Container(
          height: 50,
          child: Center(
            child: Checkbox(
              value: true,
              onChanged: null
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text("5. Slider",
            style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        Container(
          height: 50,
          child: Center(
            child: Slider(
              min: 0,
              max: 100,
              value: _valueSlider,
              onChanged: (double value) {
                setState(() {
                  _valueSlider = value;
                });
              },
            )
          ),
        ),
        ListTile(
          title: Text("6. Slider with Divisions and Label",
            style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        Container(
          height: 50,
          child: Center(
              child: Slider(
                min: 0,
                max: 100,
                divisions: 5,
                label: "Your label",
                value: _valueSliderDivision,
                onChanged: (double value) {
                  setState(() {
                    _valueSliderDivision = value;
                  });
                },
              )
          ),
        ),
        Divider(),
        ListTile(
          title: Text("7. Linear Progress Indicator",
            style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          height: 50,
          child: Center(
            child: LinearProgressIndicator(),
          ),
        ),
        ListTile(
          title: Text("8. Circular Progress Indicator",
            style: TextStyle(fontWeight: FontWeight.w600),),
        ),
        Container(
          height: 50,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    );
  }
}
