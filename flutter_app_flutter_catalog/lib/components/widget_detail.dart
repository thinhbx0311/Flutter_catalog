import 'package:flutter/material.dart';
import 'package:flutter_app_flutter_catalog/models/widgets.dart';
import 'package:flutter_app_flutter_catalog/routes/icon.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class WidgetDetail extends StatelessWidget {
  final String sourcePath;
  final Widget child;
  final String title;

  const WidgetDetail({Key key, this.sourcePath, this.title, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: WidgetWithCodeView(
        child: this.child,
        sourceFilePath: this.sourcePath,
      ),
    );
  }
}
