import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: ["Hamilton", "Lafayette", "Mulligan", "Laurens"]
          .map((e) => Chip(
              avatar: CircleAvatar(
                child: Text(e.substring(0, 1)),
              ),
              label: Text(e)))
          .toList(),
    );
  }
}
