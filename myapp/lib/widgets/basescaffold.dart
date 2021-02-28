import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final String title;
  final Widget child;

  BaseScaffold({
    @required title,
    @required child,
  }): this.title = title,
      this.child = child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('$title'),
      ),
      body: child,
    );
  }
}
