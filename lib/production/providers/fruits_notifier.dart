import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/model/fruit.dart';
import 'package:fluttter_shop_app/core/entities/result/data_result.dart';

class FruitsNotifier extends ChangeNotifier {
  List<Fruit> fruits = [];
  Map<int, DataResult<List<Fruit>>> fruitsByTypeId = {};
  bool get isEmpty => fruits.isEmpty;

  void setFruits(List<Fruit> newFruits) {
    fruits = newFruits;
    notifyListeners();
  }

  void addFruitsByTypeId(int typeId, DataResult<List<Fruit>> fruitsByType) {
    fruitsByTypeId[typeId] = fruitsByType;
    notifyListeners();
  }

  bool isThereFruitsRelatedType(int typeId) {
    return fruitsByTypeId[typeId] != null;
  }
}
