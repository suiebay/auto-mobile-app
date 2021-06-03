import 'package:auto_mobile_app/logic/user/domain/entities/lat_lng.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Address extends Equatable {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  @JsonKey(name: 'geo')
  final LatLng latLng;

  Address(this.street, this.suite, this.city, this.zipcode, this.latLng);

  @override
  List<Object> get props => [];
}