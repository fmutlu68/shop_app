import 'package:flutter/material.dart';
import '../../entities/components/button/normal_button_style.dart';
import '../../extensions/border_radius_extension.dart';
import '../../extensions/theme_extension.dart';

class NormalButton extends StatelessWidget {
  final NormalButtonStyle? style;
  final Widget child;
  final VoidCallback? onTap;
  NormalButton({
    Key? key,
    required this.child,
    required this.onTap,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: style?.margin ?? EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onTap,
        child: child,
        style: ElevatedButton.styleFrom(
          padding: style?.padding,
          shape: RoundedRectangleBorder(
            borderRadius: style?.radius ?? BorderRadius.zero,
            side: style?.border == null
                ? BorderSide.none
                : BorderSide(
                    color: style!.border!.top.color,
                    style: style!.border!.top.style,
                    width: style!.border!.top.width,
                  ),
          ),
          primary: style?.backgroundColor,
          elevation: style!.elevation,
        ),
      ),
    );

    // return InkWell(
    //   onTap: onTap,
    //   child: Container(
    //     width: style?.width,
    //     height: style?.height,
    //     decoration: buildButtonDecoration(context),
    //     margin: style?.margin,
    //     padding: style?.padding,
    //     child: child,
    //   ),
    // );
  }

  buildButtonDecoration(BuildContext context) {
    return BoxDecoration(
      color: style?.backgroundColor ?? context.colors.primary,
      borderRadius: style?.radius ?? context.veryLowRadius,
      border: style?.border,
    );
  }
}
