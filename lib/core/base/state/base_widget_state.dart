import 'package:flutter/material.dart';

abstract class BaseWidgetState {
  late BuildContext context;
  void setContext(BuildContext newContext) => context = newContext;

  Size get screenSize => MediaQuery.of(context).size;

  double calculateDynamicHeight(double percentage) =>
      (screenSize.height * percentage) / 100;

  double calculateDynamicWidth(double percentage) =>
      (screenSize.width * percentage) / 100;
}
