import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/model/base_view_model.dart';
import 'package:fluttter_shop_app/model/nutrition.dart';
import 'package:fluttter_shop_app/production/providers/nutritions_notifier.dart';
import 'package:fluttter_shop_app/view/home/fruit_detail/service/fruit_detail_service.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'fruit_detail_view_model.g.dart';

class FruitDetailViewModel = _FruitDetailViewModelBase
    with _$FruitDetailViewModel;

abstract class _FruitDetailViewModelBase with Store, BaseViewModel {
  late IFruitDetailService service;
  late NutritionsNotifier nutritionProvider;
  void setContext(BuildContext ctx) => this.context = ctx;

  void init() {
    service = FruitDetailService(networkManager);
    nutritionProvider = context!.watch<NutritionsNotifier>();
  }

  Future<List<Nutrition>?> getNutritions(int fruitId) async {
    List<Nutrition>? dataResult;
    if (nutritionProvider.checkIfIsThereFruitIdsNutritions(fruitId)) {
      dataResult = nutritionProvider.nutritionsByFruit[fruitId];
    } else {
      dataResult = (await service.getNutritions(fruitId))?.data;
      if (dataResult != null)
        nutritionProvider.addNutrition(fruitId, dataResult);
    }

    return dataResult;
  }
}
