// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Basket _$BasketFromJson(Map<String, dynamic> json) {
  return Basket(
    id: json['id'] as int?,
    count: json['count'] as int?,
    fruitId: json['fruitId'] as int?,
    userId: json['userId'] as int?,
  );
}

Map<String, dynamic> _$BasketToJson(Basket instance) => <String, dynamic>{
      'id': instance.id,
      'count': instance.count,
      'fruitId': instance.fruitId,
      'userId': instance.userId,
    };
