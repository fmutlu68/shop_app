import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'basket.g.dart';

@JsonSerializable()
class Basket extends INetworkModel<Basket> {
  int? id;
  int? count;
  int? fruitId;
  int? userId;
  Basket({
    this.id,
    this.count,
    this.fruitId,
    this.userId,
  });
  @override
  Basket fromJson(Map<String, dynamic> json) => _$BasketFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$BasketToJson(this);
}
