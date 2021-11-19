import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/extensions/dynamic_size_extension.dart';
import 'package:fluttter_shop_app/core/extensions/padding_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/model/local/fruit.dart';
import 'package:fluttter_shop_app/view/home/fruits/components/fruit_card.dart';

class FruitsListRow extends StatelessWidget {
  final List<Fruit> fruits;
  final String title;
  final String subtitle;
  const FruitsListRow({
    Key? key,
    required this.fruits,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.veryLowWidthPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTitleText(context),
          buildSubtitleText(context),
          buildFruitsListView(context),
        ],
      ),
    );
  }

  buildTitleText(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.headline6?.copyWith(
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    );
  }

  buildSubtitleText(BuildContext context) {
    return Text(
      subtitle,
      style: context.textTheme.subtitle1,
      textAlign: TextAlign.left,
    );
  }

  buildFruitsListView(BuildContext context) {
    return SizedBox(
      height: context.calculateDynamicHeight(30),
      child: ListView.builder(
        padding: context.veryLowHeightPadding,
        scrollDirection: Axis.horizontal,
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: context.veryLowWidthPadding.right),
            child: FruitCard(fruit: fruits[index]),
          );
        },
      ),
    );
  }
}
