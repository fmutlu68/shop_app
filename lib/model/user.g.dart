// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int?,
    name: json['name'] as String?,
    email: json['email'] as String?,
    phoneNumber: json['phoneNumber'] as String?,
    password: json['password'] as String?,
    address: json['address'] as String?,
    maleOrFemale: json['maleOrFemale'] as bool?,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'address': instance.address,
      'maleOrFemale': instance.maleOrFemale,
    };
