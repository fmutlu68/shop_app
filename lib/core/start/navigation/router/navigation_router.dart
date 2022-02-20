import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../cache/local_cache_manager.dart';
import 'INavigationRouter.dart';
import '../routes/navigation_route.dart';
import '../../../../model/fruit.dart';
import '../../../../production/enum/preferecnces_keys_enum.dart';
import '../../../../view/authenticate/login/view/login_view.dart';
import '../../../../view/authenticate/main_login/view/login_view.dart';
import '../../../../view/authenticate/onboard/view/onboard_view.dart';
import '../../../../view/home/account/view/account_view.dart';
import '../../../../view/home/cart/view/cart_view.dart';
import '../../../../view/home/favorites/view/favorites_view.dart';
import '../../../../view/home/fruit_detail/view/fruit_detail_view.dart';
import '../../../../view/home/fruits/view/fruits_view.dart';

class NavigationRouter extends INavigationRouter {
  static NavigationRouter? _instance;
  static NavigationRouter get instance {
    if (_instance == null) _instance = NavigationRouter._init();
    return _instance!;
  }

  NavigationRouter._init();

  @override
  Route generateRoute(RouteSettings settings) {
    if (settings.arguments == null) {
      bool? wasOnboardScreenShowed = LocalCacheManager.instance
          .get<bool>(PreferencesKeys.ONBOARD_SCREEN_SHOWED.key);
      if (wasOnboardScreenShowed == true) {
        return generatePageRoute(LoginView());
      }
      return generatePageRoute(OnboardView());
    }
    NavigationRoute content = settings.arguments as NavigationRoute;

    return content.when(
      navigateToOnboard: () => generatePageRoute(OnboardView()),
      navigateToMainLogin: () => generatePageRoute(MainLoginView()),
      navigateToFruitDetail: (Fruit fruit) =>
          generatePageRoute(FruitDetailView(fruit: fruit)),
      navigateToHome: () => generatePageRoute(FruitsView()),
      navigateToShoppingCart: () => generatePageRoute(CartView()),
      navigateToFavorites: () => generatePageRoute(FavoritesView()),
      navigateToAccount: () => generatePageRoute(AccountView()),
      navigateToLogin: () => generatePageRoute(LoginView()),
    );
  }

  @override
  CupertinoPageRoute generatePageRoute(Widget screen) {
    return CupertinoPageRoute(builder: (_) => screen);
  }
}
