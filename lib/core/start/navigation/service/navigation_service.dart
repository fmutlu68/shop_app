import 'package:flutter/material.dart';
import '../routes/navigation_route.dart';
import 'INavigationService.dart';
import 'navigation_parameters.dart';

class NavigationService extends INavigationService {
  static final NavigationService shared = NavigationService._init();

  NavigationService._init();

  final GlobalKey<NavigatorState> navigationKey = GlobalKey();
  @override
  Future<T?> navigatePath<T>(
      {required NavigationRoute content,
      NavigationParameters? parameters}) async {
    if (navigationKey.currentState == null) {
      return null;
    } else {
      if (parameters?.willReplace ?? false) {
        return await navigationKey.currentState!
            .pushReplacementNamed(content.path, arguments: content);
      } else if (parameters?.removeUntil ?? false) {
        return await navigationKey.currentState!.pushNamedAndRemoveUntil(
            content.path, (_) => false,
            arguments: content);
      } else {
        return await navigationKey.currentState!
            .pushNamed<T>(content.path, arguments: content);
      }
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
