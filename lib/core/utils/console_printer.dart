class ConsolePrinter {
  static final ConsolePrinter shared = ConsolePrinter._init();

  ConsolePrinter._init();

  void printError(String errorMessage, {String? method, String? errorName}) {
    print('''
      ----ERROR----
      Method Name: $method
      Error Details : {
        Name: $errorName
        Message: $errorMessage
      }
    ''');
  }
}
