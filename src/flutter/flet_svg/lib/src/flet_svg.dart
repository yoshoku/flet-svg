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
    const String svgUrl =
      'https://raw.githubusercontent.com/flet-dev/examples/refs/heads/main/python/tutorials/solitaire/solitaire-game-rules/assets/images/King_clubs.svg';
    Widget myControl = SvgPicture.network(
      svgUrl,
      semanticsLabel: 'King of Clubs',
    );

    return constrainedControl(context, myControl, parent, control);
  }
}
