import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/model/basket.dart';

class BasketNotifier extends ChangeNotifier {
  List<Basket> baskets = [
    Basket(fruitId: 1, count: 2),
    Basket(fruitId: 2, count: 5),
    Basket(fruitId: 6, count: 1),
  ];
  int get basketItemCount => baskets.length;

  bool checkIfIsThereFruitInBasket(int fruitId) {
    return baskets.any((element) => element.fruitId == fruitId);
  }

  void addToBasket(Basket basketItem) {
    baskets.add(basketItem);
    notifyListeners();
  }

  void increaseBasketItemFruitCount(int fruitId) {
    if (checkIfIsThereFruitInBasket(fruitId)) {
      Basket basketItem =
          baskets.firstWhere((element) => element.fruitId == fruitId);
      int fruitCount = basketItem.count!;
      basketItem.count = fruitCount + 1;
      notifyListeners();
    }
  }

  void decreaseBasketItemFruitCount(int fruitId) {
    if (checkIfIsThereFruitInBasket(fruitId)) {
      Basket basketItem =
          baskets.firstWhere((element) => element.fruitId == fruitId);
      int fruitCount = basketItem.count!;
      if (fruitCount - 1 == 0) {
        baskets.removeWhere((element) => element.id == basketItem.id);
      } else {
        basketItem.count = fruitCount - 1;
      }
      notifyListeners();
    }
  }
}
