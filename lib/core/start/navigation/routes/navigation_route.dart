import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_route.freezed.dart';

@freezed
class NavigationRoute with _$NavigationRoute {
  const factory NavigationRoute.navigateToOnboard() = NavigationRouteOnboard;
  const factory NavigationRoute.navigateToLogin() = NavigationRouteLogin;
}

extension NavigationPathExtension on NavigationRoute {
  String get path {
    return this.when<String>(
      navigateToLogin: () => "/mainlogin",
      navigateToOnboard: () => "/onboard",
    );
  }
}
