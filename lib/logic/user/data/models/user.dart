import 'package:auto_mobile_app/logic/user/data/models/address.dart';
import 'package:auto_mobile_app/logic/user/data/models/company.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? phone;
  final String? website;
  final Address? address;
  final Company? company;

  User({this.id, this.name, this.username, this.email, this.phone, this.website, this.address, this.company});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}