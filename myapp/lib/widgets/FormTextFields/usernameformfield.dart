import 'package:flutter/material.dart';

class UserNameFormField extends StatelessWidget {
  /// creates a [TextFormField] with default not
  /// empty [FormFieldValidator] and defult[InputDecoration]
  /// and default [Key]
  final FormFieldValidator<String>? _validator;
  final InputDecoration? _decoration;
  final Key _key;
  final FormFieldSetter _onSaved;
  final TextEditingController? _controller;

  String? _defaultValidator(String? value) {
    var val = value ?? '';
    if (val.isEmpty) 
      return "Please insert a username!";
    if (val.contains(
      new RegExp(r'[^a-zA-Z0-9_]'),
    )) 
      return "The Username can has alphabet and numbers and _";
    return null;
  }

  Key get key {
    return _key;
  }

  UserNameFormField({
    TextEditingController? controller, 
    FormFieldValidator? validator,
    InputDecoration? decoration,
    Key? key,
    required FormFieldSetter onSaved,
  })  : this._controller = controller,
        this._validator = validator,
        this._key = key ?? ValueKey('username'),
        this._decoration = decoration,
        this._onSaved = onSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: 100,
      child: TextFormField(
          controller: _controller,
          key: _key,
          decoration: _decoration ??
              InputDecoration(
                labelText: 'Username',
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.text,
          validator: _validator ?? _defaultValidator,
          onSaved: _onSaved),
    );
  }
}
