import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class LatLng extends Equatable{
  final String lat;
  final String lng;

  LatLng(this.lat, this.lng);

  @override
  List<Object> get props => [];
}