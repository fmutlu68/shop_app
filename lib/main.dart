import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/start/cache/local_cache_manager.dart';
import 'package:fluttter_shop_app/core/start/dependency_injection/dependency_injection_container.dart';
import 'package:fluttter_shop_app/core/start/navigation/router/navigation_router.dart';
import 'package:fluttter_shop_app/core/start/navigation/service/navigation_service.dart';
import 'package:fluttter_shop_app/core/start/notifier/ProviderInitializer.dart';
import 'package:fluttter_shop_app/core/start/theme/theme_notifier.dart';
import 'package:fluttter_shop_app/core/start/theme/themes/dark_theme.dart';
import 'package:fluttter_shop_app/core/start/theme/themes/light_theme.dart';
import 'package:provider/provider.dart';

import 'core/utils/console_printer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalCacheManager.instance.initCacheService();
  setupContainer();
  FlutterError.onError = (FlutterErrorDetails errorDetails) {
    print("======= Flutter Error =======");
    ConsolePrinter.shared.printError(
      errorDetails.exceptionAsString(),
      errorName: errorDetails.exception.runtimeType.toString(),
    );
    print(errorDetails.exception.runtimeType);
    print("${errorDetails.library}\n\n");
  };
  runZonedGuarded(
      () => runApp(
            MultiProvider(
              providers: ProviderInitializer.instance.providers,
              child: MyApp(),
            ),
          ), (error, stackTrace) {
    print("======= Dart Error =======");
    print("Error: $stackTrace");
    print("Error: $error \n\n");
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      onGenerateRoute: NavigationRouter.instance.generateRoute,
      navigatorKey: NavigationService.shared.navigationKey,
      theme: LightTheme.instance.theme,
      darkTheme: DarkTheme.instance.theme,
      themeMode: context.watch<ThemeNotifier>().getTheme,
    );
  }
}
