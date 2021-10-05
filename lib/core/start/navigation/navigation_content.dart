import 'package:flutter/material.dart';

class NavigationContent {
  final Widget? page;
  final String? pageRoute;

  NavigationContent({this.page, this.pageRoute})
      : assert(page != null && pageRoute != null);
}
