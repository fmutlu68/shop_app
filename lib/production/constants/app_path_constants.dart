class AppPathConstants {
  static AppPathConstants? _instance;
  static AppPathConstants get instance {
    if (_instance == null) _instance = AppPathConstants._init();
    return _instance!;
  }

  AppPathConstants._init();

  String get _mainImagesDirPath => 'assets/images/';
  String get _pngImagesDirPath => '${_mainImagesDirPath}png/';

  String get facebookLogo => '${_pngImagesDirPath}facebook.png';
  String get googleLogo => '${_pngImagesDirPath}google.png';
}
