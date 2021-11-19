import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/model/network/category.dart';

class CategoriesNotifier extends ChangeNotifier {
  List<Category> categories = [];
  bool get isEmpty => categories.isEmpty;

  void setCategories(List<Category> categories) {
    this.categories = categories;

    notifyListeners();
  }
}
