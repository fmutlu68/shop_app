import 'package:flutter/material.dart';

import '../../../entities/components/button/style_types/text_button_style.dart';
import '../normal_button.dart';

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
      key: key,
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
