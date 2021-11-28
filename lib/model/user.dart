import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends INetworkModel<User> {
  int? id;
  String? name;
  String? email;
  String? phoneNumber;
  String? password;
  String? address;
  bool? maleOrFemale;
  User({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.password,
    this.address,
    this.maleOrFemale,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  User fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$UserToJson(this);
}
