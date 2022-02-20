import '../../core/base/services/base_color_service.dart';
import '../../core/extensions/color_extension.dart';
import '../enum/app_colors_enum.dart';

class ColorService extends BaseColorService {
  @override
  initService() {
    addColor(AppColors.PRIMARY.value, "#69A03A".color);
    addColor(AppColors.SECONDARY.value, "#CC7D00".color);
  }
}
