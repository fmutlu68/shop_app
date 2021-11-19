enum PreferencesKeys { ONBOARD_SCREEN_SHOWED }

extension PreferencesKeysExtension on PreferencesKeys {
  String get key {
    switch (this) {
      case PreferencesKeys.ONBOARD_SCREEN_SHOWED:
        return "ONBOARD_SCREEN_SHOWED";
    }
  }
}
