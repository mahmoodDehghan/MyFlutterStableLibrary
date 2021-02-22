import 'package:flutter/material.dart';

import 'themes/apptheme.dart';

import './pages/homepage.dart';

class MyApp extends StatelessWidget {
  static const String appName = 'MyApp';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: AppTheme().themeData,
      routes: {
        HomePage.routeName: (ctx) => HomePage()
      },
    );
  }
}