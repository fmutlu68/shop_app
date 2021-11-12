import 'package:fluttter_shop_app/core/base/services/base_color_service.dart';
import 'package:fluttter_shop_app/core/start/navigation/service/INavigationService.dart';
import 'package:fluttter_shop_app/core/start/navigation/service/navigation_service.dart';
import 'package:fluttter_shop_app/production/services/color_service.dart';
import 'package:get_it/get_it.dart';

final GetIt _injectionContainer = GetIt.instance;
GetIt get container => _injectionContainer;

void setupContainer() {
  _setupAppInit();
  _setupViewmodels();
  _setupServices();
}

void _setupServices() {
  _injectionContainer
      .registerSingleton<BaseColorService>(ColorService()..initService());
}

void _setupAppInit() {
  _injectionContainer
      .registerSingleton<INavigationService>(NavigationService.shared);
}

void _setupViewmodels() {}
