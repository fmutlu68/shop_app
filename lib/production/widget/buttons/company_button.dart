import 'package:flutter/material.dart';
import '../../../core/components/button/normal_button.dart';
import '../../../core/entities/components/button/normal_button_style.dart';
import '../../../core/extensions/border_radius_extension.dart';
import '../../../core/extensions/dynamic_size_extension.dart';
import '../../../core/extensions/theme_extension.dart';
import '../../enum/companies_enum.dart';

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
        border: Border.all(color: context.colors.background, width: 0.3),
        backgroundColor: context.colors.onSurface,
        radius: context.veryLowRadius,
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
