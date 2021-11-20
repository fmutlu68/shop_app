// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fruit _$FruitFromJson(Map<String, dynamic> json) {
  return Fruit(
    id: json['id'] as int?,
    price: json['price'] as int?,
    count: json['count'] as int?,
    name: json['name'] as String?,
    imageLink: json['imageLink'] as String?,
    detail: json['detail'] as String?,
  );
}

Map<String, dynamic> _$FruitToJson(Fruit instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'count': instance.count,
      'name': instance.name,
      'imageLink': instance.imageLink,
      'detail': instance.detail,
    };
