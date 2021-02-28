import 'package:flutter/material.dart';

import '../pages/signuppage.dart';
import '../themes/apptheme.dart';

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: AppTheme(primarySwatch: Colors.pink,).themeData,
      routes: {
        SignUpPage.routeName: (ctx) => SignUpPage()
      },
      initialRoute: SignUpPage.routeName,
    );
  }
}