import 'package:fluttter_shop_app/model/basket.dart';
import 'package:fluttter_shop_app/model/fruit.dart';

class CartItemModel {
  final Fruit fruit;
  final Basket basket;
  CartItemModel({
    required this.fruit,
    required this.basket,
  });
}
