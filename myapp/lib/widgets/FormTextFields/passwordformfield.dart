import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  /// creates a [TextFormField] with default
  /// password [FormFieldValidator] and defult[InputDecoration]
  /// and default [Key]
  final FormFieldValidator<String>? _validator;
  final InputDecoration? _decoration;
  final Key _key;
  final FormFieldSetter _onSaved;
  final TextEditingController? _controller;
  final bool _isConfirm;

  PasswordFormField(
      {TextEditingController? controller,
      FormFieldValidator? validator,
      InputDecoration? decoration,
      Key? key,
      required FormFieldSetter onSaved,
      required isConfirm})
      : this._controller = controller,
        this._validator = validator,
        this._key = key ?? isConfirm
            ? ValueKey('confirmPassword')
            : ValueKey('password'),
        this._decoration = decoration,
        this._onSaved = onSaved,
        this._isConfirm = isConfirm;

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _showPassText = false;

  set showPassText(bool show) {
    setState(() {
      _showPassText = show;
    });
  }

  String? _defaultValidator(String? value) {
    var val = value ?? '';
    if (val.isEmpty)
      return this.widget._isConfirm
          ? "Please confirm your password!"
          : "Please enter a password!";
    if (!widget._isConfirm &&
        !val.contains(
          new RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{8,}$'),
        )) return "Too weak password!";
    return null;
  }

  Key get key {
    return widget._key;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: 100,
      child: TextFormField(
          controller: widget._controller,
          key: widget._key,
          obscureText: !_showPassText,
          decoration: widget._decoration ??
              InputDecoration(
                labelText: widget._isConfirm ? 'ConfirmPassword' : 'Password',
                labelStyle: Theme.of(context).textTheme.bodyText2,
              ),
          textInputAction:
              widget._isConfirm ? TextInputAction.done : TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.visiblePassword,
          validator: widget._validator ?? _defaultValidator,
          onSaved: widget._onSaved),
    );
  }
}
