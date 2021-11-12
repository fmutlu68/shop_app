enum AppColors { PRIMARY }

extension AppColorsValueExtension on AppColors {
  String get value {
    switch (this) {
      case AppColors.PRIMARY:
        return "primary";
    }
  }
}
