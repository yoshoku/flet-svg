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
    String type = control.attrString('type') ?? 'url';
    Widget myControl;
    if (type == 'url') {
      myControl = SvgPicture.network(
        src,
        semanticsLabel: 'King of Clubs',
      );
    } else {
      myControl = SvgPicture.string(
        src,
        semanticsLabel: 'King of Clubs',
      );
    }

    return constrainedControl(context, myControl, parent, control);
  }
}
