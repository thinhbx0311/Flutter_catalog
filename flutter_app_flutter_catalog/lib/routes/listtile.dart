import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("Title: Basic"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.thumb_up),
          title: Text("Title: with leading and trailing widgets"),
          trailing: Icon(Icons.error_outline),
        ),
        Divider(),
        ListTile(
          title: Text("Title"),
          subtitle: Text("Subtitle"),
        ),
        Divider(),
        ListTile(
          title: Text("Title"),
          subtitle: Text("Subtitle xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
          isThreeLine: true,
        ),
        Divider(),
        ListTile(
          title: Text("ListTile on tap"),
          onTap: (){
            Fluttertoast.showToast(msg: "ListTile on tap");
          },
        )
      ],
    );
  }
}
