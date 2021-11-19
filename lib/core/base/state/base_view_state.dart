import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/base/services/base_color_service.dart';
import 'package:fluttter_shop_app/core/start/dependency_injection/dependency_injection_container.dart';
import 'package:fluttter_shop_app/core/start/navigation/service/INavigationService.dart';

abstract class BaseViewState<T extends StatefulWidget> extends State<T> {
  Size get screenSize => MediaQuery.of(context).size;

  double calculateDynamicHeight(double percentage) =>
      (screenSize.height * percentage) / 100;

  double calculateDynamicWidth(double percentage) =>
      (screenSize.width * percentage) / 100;

  BaseColorService colorService = container<BaseColorService>();
  INavigationService navigationService = container<INavigationService>();
}
