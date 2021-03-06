import 'package:flutter/material.dart';
import '../../model/nutrition.dart';

class NutritionsNotifier extends ChangeNotifier {
  Map<int, List<Nutrition>> nutritionsByFruit = {};

  void addNutrition(int fruitId, List<Nutrition> nutritions) {
    nutritionsByFruit[fruitId] = nutritions;
    notifyListeners();
  }

  bool checkIfIsThereFruitIdsNutritions(int fruitId) {
    return nutritionsByFruit[fruitId] != null;
  }
}
