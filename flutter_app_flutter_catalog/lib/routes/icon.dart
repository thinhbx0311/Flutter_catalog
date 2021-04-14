import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.image,
        size: 100,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
