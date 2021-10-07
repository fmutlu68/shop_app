import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/view/authenticate/onboard/view/onboard_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_route.freezed.dart';

@freezed
class NavigationRoute with _$NavigationRoute {
  const factory NavigationRoute.navigateToHome(Widget screen) =
      NavigationRouteHome;
  const factory NavigationRoute.navigateToPayment(Widget screen) =
      NavigationRoutePayment;
  const factory NavigationRoute.navigateToOnboard(OnboardView? view) =
      NavigationRouteOnboard;
}

extension NavigationPathExtension on NavigationRoute {
  String get path {
    return this.when<String>(
      navigateToHome: (_) => "/home",
      navigateToPayment: (_) => "/payment",
      navigateToOnboard: (_) => "/onboard",
    );
  }
}
