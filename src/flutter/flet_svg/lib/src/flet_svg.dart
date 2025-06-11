import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
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
      case 'file':
        myControl = SvgPicture.file(
          File(src)
        );
      case 'network':
        myControl = SvgPicture.network(
          src
        );
      case 'memory':
        myControl = SvgPicture.memory(
          Uint8List.fromList(utf8.encode(src))
        );
      default:
        myControl = SvgPicture.string(
          src
        );
    }

    return constrainedControl(context, myControl, parent, control);
  }
}
