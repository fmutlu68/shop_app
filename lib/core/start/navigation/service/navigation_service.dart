import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/start/navigation/routes/navigation_route.dart';
import 'package:fluttter_shop_app/core/start/navigation/service/INavigationService.dart';

class NavigationService extends INavigationService {
  static final NavigationService shared = NavigationService._init();

  NavigationService._init();

  final GlobalKey<NavigatorState> navigationKey = GlobalKey();
  @override
  Future<T?> navigatePath<T>({required NavigationRoute content}) async {
    if (navigationKey.currentState == null) {
      return null;
    } else {
      return await navigationKey.currentState!
          .pushNamed<T>(content.path, arguments: content);
    }
  }

  @override
  void popByParam<T>({T? data}) {
    navigationKey.currentState!.pop<T>(data);
  }

  @override
  void popWidget() {
    navigationKey.currentState!.pop();
  }
}
