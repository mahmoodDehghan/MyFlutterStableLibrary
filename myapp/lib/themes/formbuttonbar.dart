import 'package:flutter/material.dart';

class FormButtonBar extends StatelessWidget {
  ///default button bar class for using in forms
  static const double defaultPadding = 10;
  static const double defaultSize = 60;

  final List<Widget> _children;
  final MainAxisAlignment? _alignment;
  final double _padding;
  final double? _buttonHeight;
  final double? _buttonMinWidth;
  final bool _isPadded;

  FormButtonBar({
    List<Widget> children = const <Widget>[],
    MainAxisAlignment? alignment,
    double padding = defaultPadding,
    double? buttonHeight = defaultSize,
    double? buttonMinWidth = defaultSize,
    bool? isPadded = false,
  })  : _children = children,
        _alignment = alignment,
        _padding = padding,
        _buttonHeight = buttonHeight,
        _buttonMinWidth = buttonMinWidth,
        _isPadded = isPadded ?? false;

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: _children,
      alignment: _alignment ?? MainAxisAlignment.end,
      buttonHeight: _buttonHeight,
      buttonPadding: EdgeInsets.all(_padding),
      buttonMinWidth: _buttonMinWidth,
      layoutBehavior: _isPadded
          ? ButtonBarLayoutBehavior.padded
          : ButtonBarLayoutBehavior.constrained,
    );
  }
}
