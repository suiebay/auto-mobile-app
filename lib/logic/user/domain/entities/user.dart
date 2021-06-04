import 'package:auto_mobile_app/logic/user/domain/entities/address.dart';
import 'package:auto_mobile_app/logic/user/domain/entities/company.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User extends Equatable{
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final Address address;
  final Company company;

  User(this.id, this.name, this.username, this.email, this.phone, this.website, this.address, this.company);

  @override
  List<Object> get props => [id, name, username, email, phone, website, address, company];
}