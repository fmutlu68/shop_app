import 'package:flutter/material.dart';
import 'package:fluttter_shop_app/core/extensions/theme_mode_extension.dart';
import 'package:fluttter_shop_app/core/start/cache/local_cache_manager.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeMode _mode = _getInitialThemeMode();

  /// The Member... hatası static sayesinde çözüldü.
  static ThemeMode _getInitialThemeMode() =>
      LocalCacheManager.instance.get<String>("theme") == ThemeMode.dark.theme
          ? ThemeMode.dark
          : ThemeMode.light;

  void changeTheme() {
    if (_mode == ThemeMode.dark) {
      _mode = ThemeMode.light;
    } else {
      _mode = ThemeMode.light;
    }
    notifyListeners();
  }

  ThemeMode get getTheme => _mode;
}
