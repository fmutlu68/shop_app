import 'package:fluttter_shop_app/production/constants/app_path_constants.dart';

enum Companies { FACEBOOK, GOOGLE }

extension CompaniesEnumValue on Companies {
  String get name {
    switch (this) {
      case Companies.FACEBOOK:
        return "Facebook";
      case Companies.GOOGLE:
        return "Google";
    }
  }

  String get iconPath {
    switch (this) {
      case Companies.FACEBOOK:
        return AppPathConstants.instance.facebookLogo;
      case Companies.GOOGLE:
        return AppPathConstants.instance.googleLogo;
    }
  }
}
