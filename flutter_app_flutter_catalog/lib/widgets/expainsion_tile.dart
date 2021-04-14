import 'package:flutter/material.dart';
import 'expainsion_items.dart';
import 'package:flutter_app_flutter_catalog/models/category.dart';
import 'package:flutter_app_flutter_catalog/models/widget_data.dart';
import 'package:flutter_app_flutter_catalog/models/widgets.dart';

// ignore: must_be_immutable
class ExpansionTileWidget extends StatelessWidget {
  Category category;
  Widgets widgets;

  ExpansionTileWidget({this.category, this.widgets});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ExpansionTile(
      leading: this.category.icons,
      title: Text(
        this.category.content,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      children: Widgets_Data.map((e) {
        if (e.id == this.category.id) {
          return Container(
            child: Expainsion_Items(widgets: e),
          );
        } else {
          return Container();
        }
      }).toList(),
    ));
  }
}
