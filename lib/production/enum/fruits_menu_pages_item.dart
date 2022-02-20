import '../../core/start/navigation/routes/navigation_route.dart';

enum FruitsMenuPage { Favorites, ShoppingCart, Account }

extension FruitsMenuPageExtension on FruitsMenuPage {
  NavigationRoute get pageRoute {
    switch (this) {
      case FruitsMenuPage.Favorites:
        return NavigationRoute.navigateToFavorites();
      case FruitsMenuPage.ShoppingCart:
        return NavigationRoute.navigateToShoppingCart();
      case FruitsMenuPage.Account:
        return NavigationRoute.navigateToAccount();
    }
  }
}
