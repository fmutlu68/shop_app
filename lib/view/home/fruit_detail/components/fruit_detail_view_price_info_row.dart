part of 'package:fluttter_shop_app/view/home/fruit_detail/view/fruit_detail_view.dart';

extension _FruitDetailViewPriceInfoRow on _FruitDetailViewState {
  Card get buildPriceInfoCard => Card(
        child: ListTile(
          leading: buildPriceInfoText,
          trailing: buildBuyButton,
        ),
        elevation: 0,
        color: Colors.transparent,
      );

  get buildPriceInfoText => Text(
        "\$ ${widget.fruit.price} Per/ Kg",
        style: context.textTheme.headline6?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      );

  get buildBuyButton => CustomTextButton(
        text: "Buy Now",
        onTap: () {},
        style: buildBuyButtonStyle,
      );
  TextButtonStyle get buildBuyButtonStyle {
    return TextButtonStyle(
      backgroundColor:
          colorService.getColor(AppColors.PRIMARY.value).withOpacity(0.9),
      padding: EdgeInsets.symmetric(
        horizontal: calculateDynamicWidth(10),
        vertical: calculateDynamicHeight(2.5),
      ),
      radius: context.veryLowRadius,
      labelAlign: TextAlign.center,
      labelStyle: context.textTheme.subtitle2?.copyWith(
        color: context.colors.onSurface,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
