import 'dart:io';
import 'package:flet/flet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    String src = control.attrString('src') ?? '';
    String kind = control.attrString('kind') ?? 'network';
    Widget myControl;
    switch (kind) {
      case 'asset':
        myControl = SvgPicture.asset(
          src
        );
        break;
      case 'file':
        myControl = SvgPicture.file(
          File(src)
        );
        break;
      case 'network':
        myControl = SvgPicture.network(
          src
        );
        break;
      default:
        myControl = SvgPicture.string(
          src
        );
    }

    return constrainedControl(context, myControl, parent, control);
  }
}
