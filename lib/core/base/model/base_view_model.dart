import 'package:flutter/material.dart';

import '../../start/navigation/service/INavigationService.dart';
import '../../start/navigation/service/navigation_service.dart';

abstract class BaseViewModel {
  BuildContext? context;
  void setContext(BuildContext newContext);
  void init();

  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(context!);
  INavigationService navigationService = NavigationService.shared;
}
