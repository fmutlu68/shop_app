import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttter_shop_app/core/start/cache/local_cache_manager.dart';
import 'package:fluttter_shop_app/core/start/navigation/router/INavigationRouter.dart';
import 'package:fluttter_shop_app/core/start/navigation/routes/navigation_route.dart';
import 'package:fluttter_shop_app/model/fruit.dart';
import 'package:fluttter_shop_app/production/enum/preferecnces_keys_enum.dart';
import 'package:fluttter_shop_app/view/authenticate/login/view/login_view.dart';
import 'package:fluttter_shop_app/view/authenticate/onboard/view/onboard_view.dart';
import 'package:fluttter_shop_app/view/home/account/view/account_view.dart';
import 'package:fluttter_shop_app/view/home/cart/view/cart_view.dart';
import 'package:fluttter_shop_app/view/home/favorites/view/favorites_view.dart';
import 'package:fluttter_shop_app/view/home/fruit_detail/view/fruit_detail_view.dart';
import 'package:fluttter_shop_app/view/home/fruits/view/fruits_view.dart';

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
      navigateToOnboard: () {
        return generatePageRoute(OnboardView());
      },
      navigateToLogin: () {
        return generatePageRoute(LoginView());
      },
      navigateToFruitDetail: (Fruit fruit) {
        return generatePageRoute(FruitDetailView(fruit: fruit));
      },
      navigateToHome: () {
        return generatePageRoute(FruitsView());
      },
      navigateToShoppingCart: () {
        return generatePageRoute(CartView());
      },
      navigateToFavorites: () {
        return generatePageRoute(FavoritesView());
      },
      navigateToAccount: () {
        return generatePageRoute(AccountView());
      },
    );
  }

  @override
  CupertinoPageRoute generatePageRoute(Widget screen) {
    return CupertinoPageRoute(builder: (_) => screen);
  }
}
