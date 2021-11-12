import 'package:flutter/material.dart';

import 'package:fluttter_shop_app/core/entities/components/button/button_style.dart';

class NormalButtonStyle extends BaseButtonStyle {
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final BorderRadiusGeometry? radius;
  final BoxBorder? border;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  NormalButtonStyle({
    this.width,
    this.height,
    this.backgroundColor,
    this.radius,
    this.border,
    this.margin,
    this.padding,
  });

  NormalButtonStyle copyWith({
    double? width,
    double? height,
    Color? backgroundColor,
    BorderRadiusGeometry? radius,
    BoxBorder? border,
    EdgeInsets? margin,
    EdgeInsets? padding,
  }) {
    return NormalButtonStyle(
      width: width ?? this.width,
      height: height ?? this.height,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      radius: radius ?? this.radius,
      border: border ?? this.border,
      margin: margin ?? this.margin,
      padding: padding ?? this.padding,
    );
  }

  @override
  String toString() {
    return 'NormalButtonStyle(width: $width, height: $height, backgroundColor: $backgroundColor, radius: $radius, border: $border)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NormalButtonStyle &&
        other.width == width &&
        other.height == height &&
        other.backgroundColor == backgroundColor &&
        other.radius == radius &&
        other.border == border &&
        other.padding == padding &&
        other.margin == margin;
  }

  @override
  int get hashCode {
    return width.hashCode ^
        height.hashCode ^
        backgroundColor.hashCode ^
        radius.hashCode ^
        border.hashCode;
  }
}
