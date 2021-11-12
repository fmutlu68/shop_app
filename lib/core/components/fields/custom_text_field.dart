import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/widget/base_widget.dart';
import 'package:fluttter_shop_app/core/entities/components/fields/text_field_properties.dart';

class CustomTextField extends StatelessWidget {
  final TextFieldProperties textFieldProperties;
  const CustomTextField({Key? key, required this.textFieldProperties})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(onWidgetBuilder: buildTextField);
  }

  Widget buildTextField(BuildContext context) {
    return textFieldProperties.isInsideForm
        ? buildFormTextField(context)
        : buildTextWithoutForm(context);
  }

  buildFormTextField(BuildContext context) {
    return TextFormField(
      validator: textFieldProperties.validator,
      controller: textFieldProperties.textController,
      keyboardType: textFieldProperties.keyboard,
      obscureText: textFieldProperties.obscureText,
      style: textFieldProperties.inputStyle,
      maxLength: textFieldProperties.maxLength,
      minLines: textFieldProperties.minLines,
      maxLines: textFieldProperties.maxLines,
      onChanged: textFieldProperties.onChanged,
      onFieldSubmitted: textFieldProperties.onSubmitted,
      scrollPadding: textFieldProperties.padding,
      textInputAction: textFieldProperties.textInputAction,
      decoration: textFieldProperties.decoration,
    );
  }

  buildTextWithoutForm(BuildContext context) {
    return TextField(
      controller: textFieldProperties.textController,
      keyboardType: textFieldProperties.keyboard,
      obscureText: textFieldProperties.obscureText,
      style: textFieldProperties.inputStyle,
      maxLength: textFieldProperties.maxLength,
      minLines: textFieldProperties.minLines,
      maxLines: textFieldProperties.maxLines,
      onChanged: textFieldProperties.onChanged,
      onSubmitted: textFieldProperties.onSubmitted,
      scrollPadding: textFieldProperties.padding,
      textInputAction: textFieldProperties.textInputAction,
      decoration: textFieldProperties.decoration,
    );
  }
}
