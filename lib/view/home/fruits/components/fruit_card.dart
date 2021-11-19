import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/extensions/border_radius_extension.dart';
import 'package:fluttter_shop_app/core/extensions/dynamic_size_extension.dart';
import 'package:fluttter_shop_app/core/extensions/navigation_extension.dart';
import 'package:fluttter_shop_app/core/extensions/padding_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/core/start/navigation/routes/navigation_route.dart';
import 'package:fluttter_shop_app/model/local/fruit.dart';

class FruitCard extends StatelessWidget {
  final Fruit fruit;
  const FruitCard({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.navigate(NavigationRoute.navigateToFruitDetail(fruit));
      },
      child: Container(
        width: context.mediumWidth + context.calculateDynamicWidth(1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImageCard(context),
            buildFruitTitle(context),
            buildFruitPriceText(context),
          ],
        ),
      ),
    );
  }

  Container buildImageCard(BuildContext context) {
    return Container(
      decoration: buildDecoration(context),
      height: context.calculateDynamicHeight(14),
      width: context.mediumWidth,
    );
  }

  buildDecoration(BuildContext context) {
    return BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          fruit.imageLink!,
        ),
        fit: BoxFit.fill,
      ),
      borderRadius: context.lowRadius,
    );
  }

  buildImageDecoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: context.lowRadius,
    );
  }

  buildFruitTitle(BuildContext context) {
    return Padding(
      padding: context.veryLowWidthPadding,
      child: Text(
        fruit.name!,
        style: context.textTheme.headline6?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  buildFruitPriceText(BuildContext context) {
    return Padding(
      padding: context.veryLowWidthPadding,
      child: Text(
        "\$${fruit.price.toString()} Per/Kg",
        style: context.textTheme.subtitle1?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
