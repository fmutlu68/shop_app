import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/components/button/normal_button.dart';
import 'package:fluttter_shop_app/core/entities/components/button/style_types/text_button_style.dart';

class CustomTextButton extends StatelessWidget {
  final TextButtonStyle? style;
  final String text;
  final VoidCallback onTap;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NormalButton(
      onTap: onTap,
      style: style,
      child: Text(
        text,
        style: style?.labelStyle,
        textAlign: style?.labelAlign,
      ),
    );
  }
}
