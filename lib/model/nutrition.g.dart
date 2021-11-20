// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return Nutrition(
    id: json['id'] as int?,
    fruitId: json['fruitId'] as int?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$NutritionToJson(Nutrition instance) => <String, dynamic>{
      'id': instance.id,
      'fruitId': instance.fruitId,
      'name': instance.name,
    };
