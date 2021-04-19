import 'package:flutter/material.dart';
import 'package:flutter_app_flutter_catalog/components/widget_detail.dart';
import 'package:flutter_app_flutter_catalog/models/category.dart';
import 'package:flutter_app_flutter_catalog/models/widgets.dart';
import 'package:flutter_app_flutter_catalog/routes/button.dart';
import 'package:flutter_app_flutter_catalog/routes/card_inkwell.dart';
import 'package:flutter_app_flutter_catalog/routes/dropdownbutton.dart';
import 'package:flutter_app_flutter_catalog/routes/gradient.dart';
import 'package:flutter_app_flutter_catalog/routes/icon.dart';
import 'package:flutter_app_flutter_catalog/routes/text.dart';
import 'package:flutter_app_flutter_catalog/routes/textfield.dart';
import 'package:flutter_app_flutter_catalog/routes/textformfield.dart';

const Category_Data = [
  Category(id: 1, content: 'Widgets', icons: Icon(Icons.widgets)),
  Category(id: 2, content: 'Layouts', icons: Icon(Icons.dashboard)),
  Category(
      id: 3, content: 'Lists', icons: Icon(Icons.format_list_numbered_sharp)),
  Category(id: 4, content: 'Appbar', icons: Icon(Icons.web_asset)),
  Category(
      id: 5, content: 'Navigation', icons: Icon(Icons.assistant_navigation)),
  Category(id: 6, content: 'Async', icons: Icon(Icons.timer)),
  Category(id: 7, content: 'Animation', icons: Icon(Icons.animation)),
];
// ignore: non_constant_identifier_names
List<Widgets> Widgets_Data = [
  //Widget
  Widgets(
      id: 1,
      name: "Icon",
      icon: Icon(Icons.star_border),
      sourcePath: "lib/routes/icon.dart",
      widget: IconExample()),
  Widgets(
      id: 1,
      name: "Text",
      icon: Icon(Icons.star_border),
      sourcePath: "lib/routes/text.dart",
      widget: TextExample()),
  Widgets(
      id: 1,
      name: "TextField",
      icon: Icon(Icons.star_border),
      sourcePath: "lib/routes/textfield.dart",
      widget: TextFieldExample()),
  Widgets(
      id: 1,
      name: "TextFromField",
      icon: Icon(Icons.star_border),
      sourcePath: "lib/routes/textformfield.dart",
      widget: TextFormFieldExample()),
  Widgets(id: 1, name: "Image", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 1,
      name: "Card, Inkwell",
      icon: Icon(Icons.star_border),
      sourcePath: "lib/routes/card_inkwell.dart",
      widget: CardInkWellExample()),
  Widgets(
      id: 1, name: "Gradient", icon: Icon(Icons.star_border), sourcePath: "lib/routes/gradient.dart", widget: GradientExample()),
  Widgets(
      id: 1, name: "Buttons", icon: Icon(Icons.star_border), sourcePath: "lib/routes/button.dart", widget: ButtonExample()),
  Widgets(
      id: 1,
      name: "DropdownButton/ MenuButton",
      icon: Icon(Icons.star_border),
      sourcePath: "lib/routes/dropdownbutton.dart", widget: DropdownExample()),
  Widgets(
      id: 1,
      name: "ImageFiltered",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 1,
      name: "Other stateful widgets",
      icon: Icon(Icons.star_border),
      sourcePath: ""),

  //Layout
  Widgets(
      id: 2, name: "Container", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 2,
      name: "Row, Column",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(id: 2, name: "Wrap", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 2,
      name: "FractionallySizedBox",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 2,
      name: "Expanded, SizedBox",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(id: 2, name: "Stack", icon: Icon(Icons.star_border), sourcePath: ""),

  //List
  Widgets(
      id: 3, name: "ListTile", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 3,
      name: "ListView.builder",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 3, name: "GridList", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 3,
      name: "ExpansionTile",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 3,
      name: "Swipe to dismiss",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 3,
      name: "Reorderable list",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 3,
      name: "Slidable list tile",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 3, name: "DataTable", icon: Icon(Icons.star_border), sourcePath: ""),

  //Appbar
  Widgets(
      id: 4,
      name: "Basic AppBar",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 4,
      name: "Bottom AppBar and Floating App Button (FAB)",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 4,
      name: "Sliver AppBar",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(id: 4, name: "Search", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 4, name: "Backdrop", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 4,
      name: "Convex AppBar",
      icon: Icon(Icons.star_border),
      sourcePath: ""),

  //navigation

  Widgets(id: 5, name: "Tabs", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 5, name: "Dialogs", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(id: 5, name: "Routes", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 5,
      name: "Navigation Drawer",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 5,
      name: "Bottom Sheet",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 5,
      name: "Bottom Tab Bar",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 5,
      name: "Bottom Navigation Bar",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 5,
      name: "Page Selector",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 5,
      name: "DraggableScrollableSheet",
      icon: Icon(Icons.star_border),
      sourcePath: ""),

  //Async
  Widgets(
      id: 6,
      name: "Future Builder",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 6,
      name: "StreamBuilder (timer app)",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 6,
      name: "StreamController",
      icon: Icon(Icons.star_border),
      sourcePath: ""),

  //Animations
  Widgets(id: 7, name: "Hero", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 7, name: "Opacity", icon: Icon(Icons.star_border), sourcePath: ""),
  Widgets(
      id: 7,
      name: "AnimatedIcon",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 7,
      name: "AnimatedContainer",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
  Widgets(
      id: 7,
      name: "Animations Package",
      icon: Icon(Icons.star_border),
      sourcePath: ""),
];
