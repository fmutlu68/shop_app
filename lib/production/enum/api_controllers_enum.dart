enum FruitRoutePaths { List, GetById, GetFruitsByTypeId }
enum AuthRoutePaths { Login, Register }

extension FruitRoutePathsEnumExtension on FruitRoutePaths {
  String get path {
    switch (this) {
      case FruitRoutePaths.List:
        return "getfruits";
      case FruitRoutePaths.GetById:
        return "getfruitbyid/";
      case FruitRoutePaths.GetFruitsByTypeId:
        return "getfruitsbytype";
    }
  }
}

extension AuthRoutePathsEnumExtension on AuthRoutePaths {
  String get path {
    switch (this) {
      case AuthRoutePaths.Login:
        return "login";
      case AuthRoutePaths.Register:
        return "register";
    }
  }
}
