import '../../../../model/basket.dart';
import '../../../../model/fruit.dart';

class CartItemModel {
  final Fruit fruit;
  final Basket basket;
  CartItemModel({
    required this.fruit,
    required this.basket,
  });
}
