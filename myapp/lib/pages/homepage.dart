import 'package:flutter/material.dart';

import '../app.dart';
import '../widgets/basescaffold.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: MyApp.appName,
          child:Container(
            height: 50,
            width: 50,
            child: FittedBox(
              child: Image(
              image: AssetImage('assets/images/hamdamlogo2.png'),
            ),
            ),
          ),
    );
  }
}
