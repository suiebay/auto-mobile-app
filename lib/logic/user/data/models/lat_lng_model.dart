import 'package:auto_mobile_app/logic/user/domain/entities/lat_lng.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lat_lng_model.g.dart';

@JsonSerializable()
class LatLngModel extends LatLng{

  LatLngModel({
    required String lat,
    required String lng
  }): super(lat, lng);

  factory LatLngModel.fromJson(Map<String, dynamic> json) => _$LatLngModelFromJson(json);

  Map<String, dynamic> toJson() => _$LatLngModelToJson(this);
}