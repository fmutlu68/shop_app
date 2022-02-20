import 'package:flutter/material.dart';

import 'package:fluttter_shop_app/core/components/button/normal_button.dart';
import 'package:fluttter_shop_app/core/entities/components/button/normal_button_style.dart';

import '../../base/state/base_widget_state.dart';
import '../../base/widget/base_widget.dart';
import '../../entities/components/button/style_types/text_button_style.dart';
import '../../entities/components/fields/text_field_properties.dart';
import '../../extensions/border_radius_extension.dart';
import '../../extensions/padding_extension.dart';
import '../../extensions/spacer_extension.dart';
import '../../extensions/theme_extension.dart';
import '../button/impl/text_button.dart';
import '../fields/custom_text_field.dart';

class CustomForm extends BaseWidgetState {
  final List<TextFieldProperties> formFields;
  final String buttonText;
  final VoidCallback buttonClicked;
  final Widget? labelText;
  final FontWeight? buttonTextFontWeight;
  final Color? buttonColor;
  final Color? loadingCircularColor;
  final bool buttonIsLoading;
  final Key? formKey;
  final Key? buttonKey = Key("Button");
  CustomForm({
    required this.formFields,
    required this.buttonText,
    required this.buttonClicked,
    this.labelText,
    this.buttonTextFontWeight,
    this.buttonColor,
    this.loadingCircularColor,
    this.buttonIsLoading = false,
    this.formKey,
  });
  @override
  Widget build(BuildContext context) {
    setContext(context);
    return BaseWidget(
      onWidgetBuilder: buildForm,
      onWidgetInitalize: () {},
    );
  }

  Widget buildForm(BuildContext _) => Card(
        margin: context.lowSymPadding,
        child: Container(
          padding: context.lowSymPadding,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: buildFormFields(formFields),
            ),
          ),
        ),
        color: Colors.black26,
        shape: RoundedRectangleBorder(
          borderRadius: context.veryLowRadius,
        ),
      );
  List<Widget> buildFormFields(List<TextFieldProperties> formFieldProperties) {
    List<List<Widget>> widgets = formFieldProperties
        .map<List<Widget>>(
          (property) => [
            CustomTextField(
              textFieldProperties: property,
            ),
            context.veryLowHeightSpacer,
          ],
        )
        .toList();
    List<Widget> formItems = [];
    if (labelText != null) {
      formItems.insert(
        0,
        labelText!,
      );
    }
    for (List<Widget> widgetList in widgets) {
      for (var widget in widgetList) {
        formItems.add(widget);
      }
    }
    formItems.add(buildButton);
    return formItems;
  }

  Widget get buildButton => buttonIsLoading
      ? buildLoadingButton
      : CustomTextButton(
          key: buttonKey,
          onTap: buttonClicked,
          text: buttonText,
          style: TextButtonStyle(
            padding: EdgeInsets.symmetric(
              horizontal: calculateDynamicWidth(9),
              vertical: calculateDynamicHeight(1.7),
            ),
            labelStyle: TextStyle(
              fontWeight: buttonTextFontWeight,
            ),
            radius: context.lowRadius,
            backgroundColor: buttonColor ?? context.colors.onBackground,
          ),
        );

  get buildLoadingButton => NormalButton(
        key: buttonKey,
        child: CircularProgressIndicator(
          backgroundColor: context.colors.onBackground,
          valueColor: loadingCircularColor != null
              ? AlwaysStoppedAnimation<Color>(loadingCircularColor!)
              : null,
        ),
        onTap: null,
        style: NormalButtonStyle(
          padding: EdgeInsets.symmetric(
            horizontal: calculateDynamicWidth(9),
            vertical: calculateDynamicHeight(1.7),
          ),
          radius: context.lowRadius,
          backgroundColor: buttonColor ?? context.colors.onBackground,
        ),
      );
}
