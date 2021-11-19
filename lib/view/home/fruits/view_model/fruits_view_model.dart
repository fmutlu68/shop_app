import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/model/base_view_model.dart';
import 'package:fluttter_shop_app/model/local/fruit.dart';
import 'package:fluttter_shop_app/model/network/category.dart';
import 'package:fluttter_shop_app/core/entities/result/data_result.dart';
import 'package:fluttter_shop_app/production/providers/categories_notifier.dart';
import 'package:fluttter_shop_app/production/providers/fruits_notifier.dart';
import 'package:fluttter_shop_app/view/home/fruits/service/fruits_service.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'fruits_view_model.g.dart';

class FruitsViewModel = _FruitsViewModelBase with _$FruitsViewModel;

abstract class _FruitsViewModelBase with Store, BaseViewModel {
  late IFruitsService service;
  late CategoriesNotifier categoryProvider;
  late FruitsNotifier fruitsNotifier;
  void setContext(BuildContext ctx) => this.context = ctx;

  void init() {
    service = FruitsSerivce(networkManager);
    categoryProvider = context!.watch<CategoriesNotifier>();
    fruitsNotifier = context!.watch<FruitsNotifier>();
  }

  Future<List<Fruit>?> getFruits() async {
    List<Fruit>? fruits;
    if (fruitsNotifier.isEmpty) {
      fruits = await service.getFruits();
      if (fruits != null && fruits.isNotEmpty) fruitsNotifier.setFruits(fruits);
    } else {
      fruits = fruitsNotifier.fruits;
    }
    return fruits;
  }

  Future<DataResult<List<Fruit>>?> getFruitsByTypeId(int typeId) async {
    DataResult<List<Fruit>>? fruitsByType;
    if (fruitsNotifier.isThereFruitsRelatedType(typeId)) {
      fruitsByType = fruitsNotifier.fruitsByTypeId[typeId];
    } else {
      fruitsByType = await service.getFruitsByType(typeId);
      if (fruitsByType?.data?.isNotEmpty ?? false) {
        fruitsNotifier.addFruitsByTypeId(typeId, fruitsByType!);
      }
    }
    return fruitsByType;
  }

  Future<List<Category>?> getCategories() async {
    List<Category>? categories;
    if (categoryProvider.isEmpty) {
      categories = await service.getCategories();
      if (categories?.isNotEmpty ?? false) {
        categoryProvider.setCategories(categories!);
      }
    } else {
      categories = categoryProvider.categories;
    }

    return categories;
  }
}
