enum ApiPaths { Fruit, Category, FruitType, Nutrition, Auth }

extension ApiPathsExtension on ApiPaths {
  String get path {
    switch (this) {
      case ApiPaths.Fruit:
        return "fruits";
      case ApiPaths.Category:
        return "categories";
      case ApiPaths.FruitType:
        return "fruittypes";
      case ApiPaths.Nutrition:
        return "nutritions";
      case ApiPaths.Auth:
        return "auth";
    }
  }
}
