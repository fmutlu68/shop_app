import 'package:flutter/material.dart';
import '../../../../core/base/model/base_view_model.dart';
import '../../../../model/fruit.dart';
import '../../../../production/providers/fruits_notifier.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'favorites_view_model.g.dart';

class FavoritesViewModel = _FavoritesViewModelBase with _$FavoritesViewModel;

abstract class _FavoritesViewModelBase with Store, BaseViewModel {
  late FruitsNotifier fruitsProvider;
  void setContext(BuildContext ctx) => this.context = ctx;

  void init() {
    fruitsProvider = context!.watch<FruitsNotifier>();
  }

  Future<List<Fruit>> getFavorites() async {
    return fruitsProvider.fruits;
  }
}
