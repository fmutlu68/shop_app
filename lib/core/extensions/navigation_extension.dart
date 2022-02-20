import 'package:flutter/material.dart';
import '../start/dependency_injection/dependency_injection_container.dart';
import '../start/navigation/routes/navigation_route.dart';
import '../start/navigation/service/INavigationService.dart';

extension NavigationExtension on BuildContext {
  void navigate(NavigationRoute navigationDetail) {
    INavigationService service = container<INavigationService>();

    service.navigatePath(content: navigationDetail);
  }
}
