import 'package:flutter/material.dart';
import '../../model/category.dart';

class CategoriesNotifier extends ChangeNotifier {
  List<Category> categories = [];
  bool get isEmpty => categories.isEmpty;

  void setCategories(List<Category> categories) {
    this.categories = categories;

    notifyListeners();
  }
}
