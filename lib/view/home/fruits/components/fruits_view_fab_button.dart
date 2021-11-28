part of 'package:fluttter_shop_app/view/home/fruits/view/fruits_view.dart';

extension _FruitsViewFabButton on _FruitsViewState {
  AnimatedFabButton get buildFabButton => AnimatedFabButton(
        focusedColor: Colors.red,
        unfocusedColor: colorService.getColor(AppColors.PRIMARY.value),
        items: [
          FabButtonItem(
            Icon(Icons.shopping_cart_outlined),
            () => viewModel.onMenuItemClicked(FruitsMenuPage.ShoppingCart),
            tooltip: "Shopping Cart",
            backgroundColor: colorService.getColor(AppColors.SECONDARY.value),
          ),
          FabButtonItem(
            Icon(Icons.favorite_outline),
            () => viewModel.onMenuItemClicked(FruitsMenuPage.Favorites),
            tooltip: "Favourite",
            backgroundColor: colorService.getColor(AppColors.SECONDARY.value),
          ),
          FabButtonItem(
            Icon(Icons.person_outline),
            () => viewModel.onMenuItemClicked(FruitsMenuPage.Account),
            tooltip: "Account",
            backgroundColor: colorService.getColor(AppColors.SECONDARY.value),
          ),
        ],
        listDirection: Axis.horizontal,
      );
}
