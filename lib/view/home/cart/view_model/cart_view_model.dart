import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/model/base_view_model.dart';
import 'package:fluttter_shop_app/model/basket.dart';
import 'package:fluttter_shop_app/model/fruit.dart';
import 'package:fluttter_shop_app/model/user.dart';
import 'package:fluttter_shop_app/production/providers/basket_provider.dart';
import 'package:fluttter_shop_app/production/providers/fruits_notifier.dart';
import 'package:fluttter_shop_app/production/providers/user_notifier.dart';
import 'package:fluttter_shop_app/view/home/cart/model/cart_item_model.dart';
import 'package:fluttter_shop_app/view/home/cart/service/cart_service.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'cart_view_model.g.dart';

class CartViewModel = _CartViewModelBase with _$CartViewModel;

abstract class _CartViewModelBase with Store, BaseViewModel {
  late BasketNotifier basketProvider;
  late FruitsNotifier fruitsProvider;
  late UserNotifier userProvider;
  late ICartService cartService;
  void setContext(BuildContext ctx) => this.context = ctx;

  void init() {
    basketProvider = context!.watch<BasketNotifier>();
    fruitsProvider = context!.watch<FruitsNotifier>();
    userProvider = context!.watch<UserNotifier>();
    cartService = CartService(networkManager);
  }

  Future<List<CartItemModel>> getBasketItems() async {
    List<Basket> basketItems = basketProvider.baskets;
    List<Fruit> fruits = [];
    for (var basket in basketItems) {
      fruits.add(
          (await cartService.getFruitById(basket.fruitId!))?.data ?? Fruit());
    }
    return basketItems
        .map<CartItemModel>((e) => CartItemModel(
            fruit: fruits.firstWhere((element) => element.id == e.fruitId),
            basket: e))
        .toList();
  }

  User getLoginedUser() {
    return userProvider.loginedUser!;
  }
}
