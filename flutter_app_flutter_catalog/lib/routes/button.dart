import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonExample extends StatefulWidget {
  @override
  _ButtonExampleState createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Floating Button"),
        icon: Icon(Icons.approval),
        onPressed: () {
          Fluttertoast.showToast(msg: "Floating Button Click");
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: "Elevated Button Click");
                  },
                  child: Text("Elevated Button")),
              ElevatedButton(onPressed: null, child: Text("Disable Button")),
            ],
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Click here to test floating button"),
          ),
          Divider(),
          Container(
              alignment: Alignment.center,
              child: Column(children: [
                IconButton(
                    icon: Icon(Icons.volume_up),
                    onPressed: () {
                      setState(() {
                        this._value += 10;
                      });
                    }),
                Text("Volume: ${this._value}")
              ])),
          Divider(),
          Container(
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlineButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: "Outline Button Click");
                  },
                  child: Text("Outline Button"),
                ),
                OutlineButton(
                  onPressed: null,
                  child: Text("Disable Outline Button"),
                ),

              ],
            ),
          ),
          TextButton(onPressed: (){
            Fluttertoast.showToast(msg: "Text Button Click");
          }, child: Text("Text Button"))
        ],
      ),
    );
  }
}
