import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttter_shop_app/core/start/navigation/router/INavigationRouter.dart';
import 'package:fluttter_shop_app/core/start/navigation/routes/navigation_route.dart';
import 'package:fluttter_shop_app/view/authenticate/login/view/login_view.dart';
import 'package:fluttter_shop_app/view/authenticate/onboard/view/onboard_view.dart';

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
      return generatePageRoute(OnboardView());
    }
    NavigationRoute content = settings.arguments as NavigationRoute;

    return content.when(navigateToOnboard: () {
      return generatePageRoute(OnboardView());
    }, navigateToLogin: () {
      return generatePageRoute(LoginView());
    });
  }

  @override
  CupertinoPageRoute generatePageRoute(Widget screen) {
    return CupertinoPageRoute(builder: (_) => screen);
  }
}
