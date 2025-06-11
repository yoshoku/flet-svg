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
    String alignmentStr = control.attrString('alignment') ?? 'center';
    double? width = control.attrDouble('width');
    double? height = control.attrDouble('height');
    bool matchTextDirection = control.attrBool('match_text_direction') ?? false;
    bool allowDrawingOutsideViewBox = control.attrBool('allow_drawing_outside_view_box') ?? false;
    String? semanticsLabel = control.attrString('semantics_label');
    bool excludeFromSemantics = control.attrBool('exclude_from_semantics') ?? false;
    AlignmentGeometry alignment = switch(alignmentStr) {
      'bottom_right' => Alignment.bottomRight,
      'bottom_center' => Alignment.bottomCenter,
      'bottom_left' => Alignment.bottomLeft,
      'top_right' => Alignment.topRight,
      'top_center' => Alignment.topCenter,
      'top_left' => Alignment.topLeft,
      _ => Alignment.center,
    };

    Widget myControl = switch(kind) {
      'asset' => SvgPicture.asset(
        src,
        width: width,
        height: height,
        alignment: alignment,
        matchTextDirection: matchTextDirection,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        semanticsLabel: semanticsLabel,
        excludeFromSemantics: excludeFromSemantics
      ),
      'file' => SvgPicture.file(
        File(src),
        width: width,
        height: height,
        alignment: alignment,
        matchTextDirection: matchTextDirection,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        semanticsLabel: semanticsLabel,
        excludeFromSemantics: excludeFromSemantics
      ),
      'network' => SvgPicture.network(
        src,
        width: width,
        height: height,
        alignment: alignment,
        matchTextDirection: matchTextDirection,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        semanticsLabel: semanticsLabel,
        excludeFromSemantics: excludeFromSemantics
      ),
      'memory' => SvgPicture.memory(
        Uint8List.fromList(utf8.encode(src)),
        width: width,
        height: height,
        alignment: alignment,
        matchTextDirection: matchTextDirection,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        semanticsLabel: semanticsLabel,
        excludeFromSemantics: excludeFromSemantics
      ),
      _ => SvgPicture.string(
        src,
        width: width,
        height: height,
        alignment: alignment,
        matchTextDirection: matchTextDirection,
        allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
        semanticsLabel: semanticsLabel,
        excludeFromSemantics: excludeFromSemantics
      ),
    };

    return constrainedControl(context, myControl, parent, control);
  }
}
