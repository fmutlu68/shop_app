import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'nutrition.g.dart';

@JsonSerializable()
class Nutrition extends INetworkModel<Nutrition> {
  int? id;
  int? fruitId;
  String? name;
  Nutrition({
    this.id,
    this.fruitId,
    this.name,
  });

  Map<String, dynamic> toJson() {
    return _$NutritionToJson(this);
  }

  factory Nutrition.fromJson(Map<String, dynamic> json) {
    return _$NutritionFromJson(json);
  }

  @override
  Nutrition fromJson(Map<String, dynamic> json) {
    return Nutrition.fromJson(json);
  }
}
