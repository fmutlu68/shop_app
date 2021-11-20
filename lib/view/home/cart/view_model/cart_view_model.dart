import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'cart_view_model.g.dart';

class CartViewModel = _CartViewModelBase with _$CartViewModel;

abstract class _CartViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext ctx) => this.context = ctx;

  void init() {}
}
