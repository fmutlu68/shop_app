import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/components/button/normal_button.dart';
import 'package:fluttter_shop_app/core/entities/components/button/normal_button_style.dart';
import 'package:fluttter_shop_app/core/extensions/dynamic_size_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/production/enum/companies_enum.dart';

class CompanyButton extends StatelessWidget {
  final Companies company;
  final VoidCallback onTap;

  const CompanyButton({Key? key, required this.onTap, required this.company})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NormalButton(
      child: buildContent(context),
      onTap: onTap,
      style: NormalButtonStyle(
        padding: EdgeInsets.symmetric(
          horizontal: context.lowWidth,
          vertical: context.veryLowHeight,
        ),
        border: Border.all(
          color: context.colors.background,
        ),
        backgroundColor: context.colors.onSurface,
      ),
    );
  }

  buildContent(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        Image.asset(company.iconPath),
        Column(
          children: [
            Text("Log In With"),
            Text(
              company.name,
              style: context.textTheme.caption,
            ),
          ],
        )
      ],
    );
  }
}
