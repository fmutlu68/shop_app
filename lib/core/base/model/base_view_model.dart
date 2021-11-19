import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/start/cache/ILocalCacheManager.dart';
import 'package:fluttter_shop_app/core/start/cache/local_cache_manager.dart';
import 'package:vexana/vexana.dart';

import '../../start/navigation/service/INavigationService.dart';
import '../../start/navigation/service/navigation_service.dart';

abstract class BaseViewModel {
  BuildContext? context;
  void setContext(BuildContext newContext);
  void init();

  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(context!);
  INavigationService navigationService = NavigationService.shared;
  ILocalCacheManager cacheManager = LocalCacheManager.instance;
  INetworkManager networkManager = NetworkManager(
      options: BaseOptions(baseUrl: 'http://192.168.1.7:5199/api/'),
      isEnableLogger: true);
}
