import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  @override
  _StackExampleState createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  AlignmentDirectional _alignmentDirectional = AlignmentDirectional.topStart;
  final kAlignmentDirectionVals = <String, AlignmentDirectional>{
    "topStart": AlignmentDirectional.topStart,
    "topCenter": AlignmentDirectional.topCenter,
    "topEnd": AlignmentDirectional.topEnd,
    "centerStart": AlignmentDirectional.centerStart,
    "center": AlignmentDirectional.center,
    "centerEnd": AlignmentDirectional.centerEnd,
    "bottomStart": AlignmentDirectional.bottomStart,
    "bottomCenter": AlignmentDirectional.bottomCenter,
    "bottomEnd": AlignmentDirectional.bottomEnd,
  };

  Widget _buildBottom() {
    return ListTile(
      title: Text("AlignmentDirectional"),
      trailing: DropdownButton(
          value: _alignmentDirectional,
          onChanged: (AlignmentDirectional newValue) {
            if (newValue != null) {
              setState(() {
                _alignmentDirectional = newValue;
              });
            }
          },
          items: kAlignmentDirectionVals.map((String name,
                  AlignmentDirectional val) =>
              MapEntry(name, DropdownMenuItem(value: val, child: Text(name)))
          ).values.toList()
      ),
    );
  }

  Widget _buidBody(){
    return Center(
      child: Stack(
        alignment: _alignmentDirectional,
        children: [
          Container(width: 300.0, height: 300.0, color: Colors.blue,),
          Container(width: 200.0, height: 200.0, color: Colors.red,),
          Container(width: 100.0, height: 100.0, color: Colors.green,),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buidBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }
}
