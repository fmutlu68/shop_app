import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'category.g.dart';

@JsonSerializable()
class Category extends INetworkModel<Category> {
  int? id;
  String? name;
  Category({
    this.id,
    this.name,
  });

  @override
  Category fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$CategoryToJson(this);
}
