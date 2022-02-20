import 'package:flutter/material.dart';
import '../../../../core/base/services/base_color_service.dart';
import '../../../../core/components/button/impl/text_button.dart';
import '../../../../core/entities/components/button/style_types/text_button_style.dart';
import '../../../../core/extensions/border_radius_extension.dart';
import '../../../../core/extensions/dynamic_size_extension.dart';
import '../../../../core/extensions/padding_extension.dart';
import '../../../../core/extensions/theme_extension.dart';
import '../../../../model/basket.dart';
import '../../../../model/fruit.dart';
import '../../../../production/enum/app_colors_enum.dart';

class FavoriteFruitItemCard extends StatefulWidget {
  final Fruit fruit;
  final BaseColorService colorService;
  final void Function(Basket basket)? onAddClicked;
  const FavoriteFruitItemCard({
    Key? key,
    required this.fruit,
    required this.colorService,
    this.onAddClicked,
  }) : super(key: key);

  @override
  _FavoriteFruitItemCardState createState() => _FavoriteFruitItemCardState();
}

class _FavoriteFruitItemCardState extends State<FavoriteFruitItemCard> {
  late Basket basket;
  @override
  void initState() {
    super.initState();
    basket = Basket(fruitId: widget.fruit.id, count: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.lowSymPadding,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          buildFruitImage,
          Spacer(),
          buildFruitInfoColumn,
          buildAddFruitToBasketColumn,
        ],
      ),
    );
  }

  get buildFruitImage {
    return Flexible(
      flex: 4,
      child: Container(
        height: context.normalHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(widget.fruit.imageLink!),
            fit: BoxFit.fill,
          ),
          borderRadius: context.veryLowRadius,
        ),
      ),
    );
  }

  get buildFruitInfoColumn {
    return Flexible(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildFruitNameText,
          buildFruitSubtitleText,
          buildRateFruitRow,
          buildFruitCount,
        ],
      ),
    );
  }

  Text get buildFruitNameText {
    return Text(
      widget.fruit.name!,
      style: context.textTheme.subtitle1?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text get buildFruitSubtitleText {
    return Text(
      widget.fruit.detail!,
      style: context.textTheme.caption,
    );
  }

  Widget get buildRateFruitRow {
    return Row(
      children: List.generate(
        5,
        (index) => Icon(
          Icons.star,
          size: context.lowWidth,
          color: Colors.orange,
        ),
      ),
    );
  }

  Widget get buildFruitCount {
    return Row(
      children: [
        buildDecreaseFruitBasketCountButton,
        buildFruitBasketCountText,
        buildIncreaseFruitBasketCountButton,
      ],
    );
  }

  Widget get buildDecreaseFruitBasketCountButton {
    return IconButton(
      onPressed: () {
        setState(() {
          int count = basket.count ?? 0;
          basket.count = count + (count > 1 ? -1 : 0);
        });
      },
      icon: Icon(Icons.remove),
    );
  }

  Widget get buildFruitBasketCountText {
    return Text(
      basket.count.toString(),
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget get buildIncreaseFruitBasketCountButton {
    return IconButton(
      onPressed: () {
        setState(() {
          int count = basket.count ?? 0;
          basket.count = count + 1;
        });
      },
      icon: Icon(Icons.add),
    );
  }

  Widget get buildAddFruitToBasketColumn {
    return Flexible(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildFruitPriceText,
          buildAddFruitToBasketButton,
        ],
      ),
    );
  }

  Text get buildFruitPriceText {
    return Text(
      "${widget.fruit.price} Per/ kg",
      style: context.textTheme.bodyText2?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget get buildAddFruitToBasketButton {
    return CustomTextButton(
      onTap: () => (widget.onAddClicked ?? (_) {})(basket),
      text: "Add",
      style: TextButtonStyle(
        backgroundColor:
            widget.colorService.getColor(AppColors.SECONDARY.value),
        radius: context.veryLowRadius,
        labelStyle: TextStyle(
          color: context.colors.onSurface,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
