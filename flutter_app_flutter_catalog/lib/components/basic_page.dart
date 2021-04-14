import 'package:flutter/material.dart';
import 'package:flutter_app_flutter_catalog/models/widget_data.dart';
import 'package:flutter_app_flutter_catalog/widgets/expainsion_tile.dart';

class BasicPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView (
          padding: EdgeInsets.all(5.0),
          children: Category_Data.map((e) => ExpansionTileWidget(
            category: e
          )).toList(),
        )
    );
  }
}
