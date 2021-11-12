import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/entities/components/button/normal_button_style.dart';
import 'package:fluttter_shop_app/core/extensions/border_radius_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';

class NormalButton extends StatelessWidget {
  final NormalButtonStyle? style;
  final Widget child;
  final VoidCallback onTap;
  NormalButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: style?.width,
        height: style?.height,
        decoration: buildButtonDecoration(context),
        margin: style?.margin,
        padding: style?.padding,
        child: child,
      ),
    );
  }

  buildButtonDecoration(BuildContext context) {
    return BoxDecoration(
      color: style?.backgroundColor ?? context.colors.primary,
      borderRadius: style?.radius ?? context.veryLowRadius,
      border: style?.border,
    );
  }
}