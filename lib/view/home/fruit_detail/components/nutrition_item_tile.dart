import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/extensions/dynamic_size_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/model/nutrition.dart';

class NutritionItemTile extends StatelessWidget {
  final Nutrition nutrition;
  const NutritionItemTile({Key? key, required this.nutrition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: context.calculateDynamicWidth(1.8),
        backgroundColor: context.colors.onPrimary.withOpacity(0.4),
      ),
      title: Text(nutrition.name!),
      minVerticalPadding: 0,
    );
  }
}
