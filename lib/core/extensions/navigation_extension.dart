import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/start/dependency_injection/dependency_injection_container.dart';
import 'package:fluttter_shop_app/core/start/navigation/routes/navigation_route.dart';
import 'package:fluttter_shop_app/core/start/navigation/service/INavigationService.dart';

extension NavigationExtension on BuildContext {
  void navigate(NavigationRoute navigationDetail) {
    INavigationService service = container<INavigationService>();

    service.navigatePath(content: navigationDetail);
  }
}
