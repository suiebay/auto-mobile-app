import 'package:json_annotation/json_annotation.dart';

import 'lat_lng.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final LatLng? latLng;

  Address({this.street, this.suite, this.city, this.zipcode, this.latLng});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}