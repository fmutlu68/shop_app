enum FruitRoutePaths { List, GetById, GetFruitsByTypeId }

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
