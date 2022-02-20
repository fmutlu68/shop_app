import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../../production/providers/basket_provider.dart';
import '../../../production/providers/categories_notifier.dart';
import '../../../production/providers/fruits_notifier.dart';
import '../../../production/providers/nutritions_notifier.dart';
import '../../../production/providers/user_notifier.dart';
import '../theme/theme_notifier.dart';

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

  List<SingleChildWidget> providersRelatedUI = [
    ChangeNotifierProvider(create: (context) => CategoriesNotifier()),
    ChangeNotifierProvider(create: (context) => FruitsNotifier()),
    ChangeNotifierProvider(create: (context) => NutritionsNotifier()),
    ChangeNotifierProvider(create: (context) => UserNotifier()),
    ChangeNotifierProvider(create: (context) => BasketNotifier()),
  ];
}
