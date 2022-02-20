import 'package:fluttter_shop_app/core/start/navigation/service/navigation_parameters.dart';

import '../routes/navigation_route.dart';

abstract class INavigationService {
  Future<T?> navigatePath<T>(
      {required NavigationRoute content, NavigationParameters? parameters});
  void popByParam<T>({T? data});
  void popWidget();
}
