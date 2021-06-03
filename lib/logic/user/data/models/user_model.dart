import 'package:auto_mobile_app/logic/user/data/models/address_model.dart';
import 'package:auto_mobile_app/logic/user/data/models/company_model.dart';
import 'package:auto_mobile_app/logic/user/domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends User{

  UserModel({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
    required AddressModel address,
    required CompanyModel company
  }) : super(
    id, name, username, email, phone, website, address, company
  );

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}