import 'package:flet/flet.dart';
import 'package:flutter/material.dart';

class FletSvgControl extends StatelessWidget {
  final Control? parent;
  final Control control;

  const FletSvgControl({
    super.key,
    required this.parent,
    required this.control,
  });

  @override
  Widget build(BuildContext context) {
    String text = control.attrString("value", "")!;
    Widget myControl = Text(text);


    return constrainedControl(context, myControl, parent, control);
  }
}
