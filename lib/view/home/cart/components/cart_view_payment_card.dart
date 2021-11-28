part of 'package:fluttter_shop_app/view/home/cart/view/cart_view.dart';

extension _CartViewPaymentCard on _CartViewState {
  Widget get buildPaymentCard => Card(
        child: ListTile(
          title: buildTotalPriceText,
          trailing: buildGoToPaymentButton,
        ),
      );
  Text get buildTotalPriceText => Text(
        "Total - Rs 570 \$",
        style: context.textTheme.subtitle1?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      );
  Widget get buildGoToPaymentButton => CustomTextButton(
        text: "Place Order",
        onTap: () {},
        style: TextButtonStyle(
          backgroundColor:
              colorService.getColor(AppColors.PRIMARY.value).withOpacity(0.85),
          radius: context.veryLowRadius,
          padding: EdgeInsets.symmetric(
            horizontal: context.lowWidthPadding.horizontal,
            vertical: calculateDynamicHeight(1.5),
          ),
          labelStyle: TextStyle(
            color: context.colors.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
