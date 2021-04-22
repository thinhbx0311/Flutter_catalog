import 'package:flutter/material.dart';

class RowColumnExample extends StatefulWidget {
  @override
  _RowColumnExampleState createState() => _RowColumnExampleState();
}

class _RowColumnExampleState extends State<RowColumnExample> {
  bool _isRow = false;

  MainAxisSize _mainAxisSize = MainAxisSize.max;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
  static const elements = <Widget>[
    Icon(
      Icons.headset_mic,
      size: 50.0,
    ),
    Icon(
      Icons.headset_mic,
      size: 100.0,
    ),
    Icon(
      Icons.headset_mic,
      size: 50.0,
    ),
  ];

  Widget _buildBody() {
    return Container(
      color: Colors.greenAccent,
      child: _isRow
          ? Row(
              mainAxisSize: _mainAxisSize,
              mainAxisAlignment: _mainAxisAlignment,
              crossAxisAlignment: _crossAxisAlignment,
              children: elements,
            )
          : Column(
              textBaseline: TextBaseline.ideographic, //user for CrossAxisAlignment.baseline
              mainAxisSize: _mainAxisSize,
              mainAxisAlignment: _mainAxisAlignment,
              crossAxisAlignment: _crossAxisAlignment,
              children: elements,
            ),
    );
  }

  Widget _bottomBar() {
    return Container(
      height: 250,
      color: Colors.blue[100],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Row"),
              Radio(
                  value: true,
                  groupValue: _isRow,
                  onChanged: (bool value) {
                    setState(() {
                      _isRow = value;
                    });
                  }),
              Text("Column"),
              Radio(
                  value: false,
                  groupValue: _isRow,
                  onChanged: (bool value) {
                    setState(() {
                      _isRow = value;
                    });
                  })
            ],
          ),
          ListTile(
            title: Text("MainAxisSize: "),
            trailing: DropdownButton(
              value: _mainAxisSize,
              onChanged: (MainAxisSize newValue) {
                if (newValue != null) {
                  setState(() {
                    _mainAxisSize = newValue;
                  });
                }
              },
              items: MainAxisSize.values
                  .map((MainAxisSize value) => DropdownMenuItem(
                      value: value,
                      child: Text(
                          value.toString().substring('MainAxisSize.'.length))))
                  .toList(),
            ),
          ),
          ListTile(
            title: Text("MainAxisAlignment: "),
            trailing: DropdownButton(
              value: _mainAxisAlignment,
              onChanged: (MainAxisAlignment newValue) {
                if (newValue != null) {
                  setState(() {
                    _mainAxisAlignment = newValue;
                  });
                }
              },
              items: MainAxisAlignment.values
                  .map((MainAxisAlignment value) => DropdownMenuItem(
                      value: value,
                      child: Text(value
                          .toString()
                          .substring('MainAxisAlignment.'.length))))
                  .toList(),
            ),
          ),
          ListTile(
            title: Text("CrossAxisAlignment: "),
            trailing: DropdownButton(
              value: _crossAxisAlignment,
              onChanged: (CrossAxisAlignment newValue) {
                if (newValue != null) {
                  setState(() {
                    _crossAxisAlignment = newValue;
                  });
                }
              },
              items: CrossAxisAlignment.values
                  .map((CrossAxisAlignment value) => DropdownMenuItem(
                      value: value,
                      child: Text(value
                          .toString()
                          .substring('CrossAxisAlignment.'.length))))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _bottomBar(),
    );
  }
}
