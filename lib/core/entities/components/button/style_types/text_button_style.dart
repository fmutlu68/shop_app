import 'package:flutter/material.dart';

import 'package:fluttter_shop_app/core/entities/components/button/normal_button_style.dart';

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
        );
}
