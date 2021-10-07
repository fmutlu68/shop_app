import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'onboard_view_model.g.dart';

class OnboardViewModel = _OnboardViewModelBase with _$OnboardViewModel;

abstract class _OnboardViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext ctx) => this.context = ctx;

  void init() {}
}
