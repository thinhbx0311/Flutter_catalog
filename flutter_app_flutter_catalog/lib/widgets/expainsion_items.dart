import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_flutter_catalog/components/widget_detail.dart';
import 'package:flutter_app_flutter_catalog/models/widgets.dart';

// ignore: must_be_immutable
class Expainsion_Items extends StatelessWidget {
  Widgets widgets;
  Expainsion_Items({this.widgets});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => WidgetDetail(sourcePath: this.widgets.sourcePath, title: this.widgets.name,child: this.widgets.widget,)));
      },
      child: Card(
        child: Container(
          height: 60,
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(child: this.widgets.icon,
              width: 60,),
              Expanded(child: Text(this.widgets.name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              Icon(Icons.arrow_forward_ios, size: 10,)

            ],
          ),
        ),
      ),
    );
  }
}
