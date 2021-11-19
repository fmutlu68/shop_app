enum AppColors { PRIMARY, SECONDARY }

extension AppColorsValueExtension on AppColors {
  String get value {
    switch (this) {
      case AppColors.PRIMARY:
        return "primary";
      case AppColors.SECONDARY:
        return "secondary";
    }
  }
}
