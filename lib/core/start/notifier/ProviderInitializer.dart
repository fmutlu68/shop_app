import 'package:fluttter_shop_app/core/start/theme/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderInitializer {
  static ProviderInitializer? _instance;
  static ProviderInitializer get instance {
    if (_instance == null) _instance = ProviderInitializer._init();
    return _instance!;
  }

  ProviderInitializer._init();

  List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => ThemeNotifier()),
  ];
}
