import 'package:flutter/material.dart';
import '../../../../model/fruit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_route.freezed.dart';

@freezed
class NavigationRoute with _$NavigationRoute {
  const factory NavigationRoute.navigateToOnboard() = NavigationRouteOnboard;
  const factory NavigationRoute.navigateToMainLogin() =
      NavigationRouteMainLogin;
  const factory NavigationRoute.navigateToHome() = NavigationRouteHome;
  const factory NavigationRoute.navigateToLogin() = NavigationRouteLogin;
  const factory NavigationRoute.navigateToAccount() = NavigationRouteAccount;
  const factory NavigationRoute.navigateToFavorites() =
      NavigationRouteFavorites;
  const factory NavigationRoute.navigateToShoppingCart() =
      NavigationRouteShoppingCart;
  const factory NavigationRoute.navigateToFruitDetail(Fruit fruit) =
      NavigationRouteFruitDetail;
}

extension NavigationPathExtension on NavigationRoute {
  String get path {
    return this.when<String>(
      navigateToMainLogin: () => "/mainlogin",
      navigateToOnboard: () => "/onboard",
      navigateToFruitDetail: (_) => "/fruitdetail",
      navigateToHome: () => "/home",
      navigateToShoppingCart: () => "/cart",
      navigateToFavorites: () => "/favorites",
      navigateToAccount: () => "/account",
      navigateToLogin: () => "/login",
    );
  }
}
