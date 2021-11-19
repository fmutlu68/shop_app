enum ApiPaths { Fruit, Category, FruitType, Nutrition }

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
    }
  }
}
