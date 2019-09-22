import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

class TextDemoV1 extends SingleChildRenderObjectWidget {
  final String data;

  final TextStyle style;

  TextDemoV1(
    this.data, {
    this.style,
  });

  @override
  RenderParagraph createRenderObject(BuildContext context) {
//    assert(textDirection != null || debugCheckHasDirectionality(context));
    final DefaultTextStyle parent = DefaultTextStyle.of(context);
    return RenderParagraph(
      TextSpan(
          style: DefaultTextStyle.of(context).style.merge(style), text: data),
      textAlign: TextAlign.start,
      textDirection: Directionality.of(context),
      softWrap: true,
      overflow: TextOverflow.clip,
      textScaleFactor: MediaQuery.textScaleFactorOf(context),
      maxLines: 1,
//      strutStyle: strutStyle,
      textWidthBasis: parent.textWidthBasis,
      locale: Localizations.localeOf(context, nullOk: true),
    );
  }
}
