part of 'package:fluttter_shop_app/view/home/fruits/view/fruits_view.dart';

extension _FruitsViewFabButton on _FruitsViewState {
  AnimatedFabButton get buildFabButton => AnimatedFabButton(
        focusedColor: Colors.red,
        unfocusedColor: colorService.getColor(AppColors.PRIMARY.value),
        items: [
          FabButtonItem(
            Icon(Icons.shopping_cart_outlined),
            () {},
            tooltip: "Shopping Cart",
          ),
          FabButtonItem(
            Icon(Icons.favorite_outline),
            () {},
            tooltip: "Favourite",
          ),
          FabButtonItem(
            Icon(Icons.person_outline),
            () {},
            tooltip: "Account",
          ),
        ],
        listDirection: Axis.horizontal,
      );
}
