import 'package:auto_mobile_app/logic/user/data/models/lat_lng_model.dart';
import 'package:auto_mobile_app/logic/user/domain/entities/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel extends Address {

  AddressModel({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    required LatLngModel latLng
  }) : super(street, suite, city, zipcode, latLng);

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}