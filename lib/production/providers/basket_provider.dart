import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/model/basket.dart';

class BasketProvider extends ChangeNotifier {
  List<Basket> basket = [];
  int get basketItemCount => basket.length;

  bool checkIfIsThereFruitInBasket(int fruitId) {
    return basket.any((element) => element.fruitId == fruitId);
  }

  void addToBasket(Basket basketItem) {
    basket.add(basketItem);
    notifyListeners();
  }

  void increaseBasketItemFruitCount(int fruitId) {
    if (checkIfIsThereFruitInBasket(fruitId)) {
      Basket basketItem =
          basket.firstWhere((element) => element.fruitId == fruitId);
      int fruitCount = basketItem.count!;
      basketItem.count = fruitCount + 1;
      notifyListeners();
    }
  }

  void decreaseBasketItemFruitCount(int fruitId) {
    if (checkIfIsThereFruitInBasket(fruitId)) {
      Basket basketItem =
          basket.firstWhere((element) => element.fruitId == fruitId);
      int fruitCount = basketItem.count!;
      if (fruitCount - 1 == 0) {
        basket.removeWhere((element) => element.id == basketItem.id);
      } else {
        basketItem.count = fruitCount - 1;
      }
      notifyListeners();
    }
  }
}
