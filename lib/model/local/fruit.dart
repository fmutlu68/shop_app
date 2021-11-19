import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'fruit.g.dart';

@JsonSerializable()
class Fruit extends INetworkModel<Fruit> {
  int? id;
  int? price;
  int? count;
  String? name;
  String? imageLink;
  String? detail;

  Fruit(
      {this.id,
      this.price,
      this.count,
      this.name,
      this.imageLink,
      this.detail});

  factory Fruit.fromJson(Map<String, dynamic> json) {
    return _$FruitFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FruitToJson(this);
  }

  @override
  Fruit fromJson(Map<String, dynamic> json) {
    return Fruit.fromJson(json);
  }
}
