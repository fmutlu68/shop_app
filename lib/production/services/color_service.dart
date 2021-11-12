import 'package:fluttter_shop_app/core/base/services/base_color_service.dart';
import 'package:fluttter_shop_app/core/extensions/color_extension.dart';

class ColorService extends BaseColorService {
  @override
  initService() {
    addColor("primary", "#69A03A".color);
  }
}
