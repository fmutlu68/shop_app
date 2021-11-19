enum FruitTypes { OrganicFruits, MixedFruits }

extension FruitTypesExtension on FruitTypes {
  int get typeId {
    switch (this) {
      case FruitTypes.OrganicFruits:
        return 1;
      case FruitTypes.MixedFruits:
        return 2;
    }
  }
}
