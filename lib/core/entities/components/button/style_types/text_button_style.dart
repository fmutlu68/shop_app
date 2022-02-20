import 'package:flutter/material.dart';

import '../normal_button_style.dart';

class TextButtonStyle extends NormalButtonStyle {
  final TextAlign? labelAlign;
  final TextStyle? labelStyle;
  TextButtonStyle({
    this.labelAlign,
    this.labelStyle,
    Color? backgroundColor,
    BoxBorder? border,
    double? height,
    double? width,
    double? elevation,
    EdgeInsets? margin,
    EdgeInsets? padding,
    BorderRadiusGeometry? radius,
  }) : super(
          backgroundColor: backgroundColor,
          border: border,
          height: height,
          width: width,
          margin: margin,
          padding: padding,
          radius: radius,
          elevation: elevation,
        );
}
