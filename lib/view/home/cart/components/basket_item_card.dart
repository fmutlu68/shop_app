import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/extensions/border_radius_extension.dart';
import 'package:fluttter_shop_app/core/extensions/dynamic_size_extension.dart';
import 'package:fluttter_shop_app/core/extensions/padding_extension.dart';
import 'package:fluttter_shop_app/core/extensions/spacer_extension.dart';
import 'package:fluttter_shop_app/core/extensions/theme_extension.dart';
import 'package:fluttter_shop_app/model/basket.dart';
import 'package:fluttter_shop_app/model/fruit.dart';

class BasketItemCard extends StatefulWidget {
  final Fruit fruit;
  final Basket basket;
  final void Function(int newCount)? onBasketFruitCountChanged;
  final VoidCallback? onBasketDeleted;
  const BasketItemCard({
    Key? key,
    required this.fruit,
    required this.basket,
    this.onBasketFruitCountChanged,
    this.onBasketDeleted,
  }) : super(key: key);

  @override
  _BasketItemCardState createState() => _BasketItemCardState();
}

class _BasketItemCardState extends State<BasketItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.calculateDynamicWidth(2.5),
        vertical: context.veryLowHeight,
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          buildFruitImageContainer,
          Spacer(),
          buildFruitInfoTextColumn,
          Spacer(),
          buildBuyColumn,
        ],
      ),
    );
  }

  get buildFruitImageContainer => Flexible(
        flex: 3,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.fruit.imageLink!),
              fit: BoxFit.fill,
            ),
            borderRadius: context.veryLowRadius,
          ),
          height: context.normalHeight,
        ),
      );
  get buildFruitInfoTextColumn => Flexible(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildFruitNameText,
            buildFruitPriceText,
          ],
        ),
      );
  Widget get buildFruitNameText => Text(widget.fruit.name!,
      style: context.textTheme.subtitle1?.copyWith(
        fontWeight: FontWeight.bold,
      ));

  Widget get buildFruitPriceText => Text(
        "${widget.fruit.price} Per/ kg",
        style: context.textTheme.bodyText1?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      );

  Widget get buildBuyColumn => Flexible(
        flex: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                (widget.onBasketDeleted ?? () {})();
              },
              icon: Icon(
                Icons.delete,
              ),
            ),
            context.veryLowHeightSpacer,
            buildBasketsFruitCountRow,
          ],
        ),
      );
  Widget get buildBasketsFruitCountRow => Row(
        children: [
          buildFruitCountIncreaseButton,
          buildFruitCountText,
          buildFruitCountDecreaseButton,
        ],
      );
  Widget get buildFruitCountIncreaseButton => IconButton(
        onPressed: () {
          setState(() {
            int count = widget.basket.count ?? 0;
            widget.basket.count = count + 1;
          });
          (widget.onBasketFruitCountChanged ?? (_) {})(widget.basket.count!);
        },
        icon: Icon(
          Icons.add,
        ),
      );
  Widget get buildFruitCountDecreaseButton => IconButton(
        onPressed: () {
          setState(() {
            int count = widget.basket.count ?? 0;
            widget.basket.count = count + (count > 1 ? -1 : 0);
          });
          (widget.onBasketFruitCountChanged ?? (_) {})(widget.basket.count!);
        },
        icon: Icon(
          Icons.remove,
        ),
      );
  Widget get buildFruitCountText => Text(widget.basket.count.toString());
}
