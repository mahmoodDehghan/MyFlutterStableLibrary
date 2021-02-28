import 'package:flutter/material.dart';
import 'package:myapp/forms/SimpleSignupForm.dart';

import '../widgets/basescaffold.dart';

class SignUpPage extends StatelessWidget {
  static const String routeName = '/signup';
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title:'SignUp',
      child: SimpleSignUpForm()    
    );
  }
}