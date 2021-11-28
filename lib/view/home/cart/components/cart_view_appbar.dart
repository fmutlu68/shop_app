part of 'package:fluttter_shop_app/view/home/cart/view/cart_view.dart';

extension _CartViewAppBar on _CartViewState {
  AppBar get buildCartViewAppBar => AppBar(
        title: Text(
          "Shopping Cart",
          style: context.textTheme.subtitle1?.copyWith(
            color: context.colors.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: colorService.getColor(AppColors.PRIMARY.value),
      );
}
