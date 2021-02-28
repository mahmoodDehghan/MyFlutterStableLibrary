import 'package:flutter/material.dart';
import 'package:myapp/themes/formbuttonbar.dart';
import 'package:myapp/widgets/Buttons/simplebutton.dart';

import '../widgets/FormTextFields/passwordformfield.dart';
import '../widgets/FormTextFields/usernameformfield.dart';

class SimpleSignUpForm extends StatefulWidget {
  @override
  _SimpleSignUpFormState createState() => _SimpleSignUpFormState();
}

class _SimpleSignUpFormState extends State<SimpleSignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        children: [
          UserNameFormField(
            onSaved: (value) => print(value),
          ),
          PasswordFormField(
            isConfirm: false,
            onSaved: (value) => print(value),
          ),
          PasswordFormField(
            isConfirm: true,
            onSaved: (value) => print(value),
          ),
          FormButtonBar(children: [
            SimpleButton(
              label: 'SignIn',
              onPressed: () {},
            ),
            SimpleButton(
              label: 'SignUp',
              onPressed: () {},
            )
          ])
        ],
      ),
    );
  }
}
