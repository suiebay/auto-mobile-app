import 'package:auto_mobile_app/logic/user/domain/entities/company.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_model.g.dart';

@JsonSerializable()
class CompanyModel extends Company{

  CompanyModel({
    required String name,
    required String catchPhrase,
    required String bs
  }) : super(name, catchPhrase, bs);

  factory CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyModelToJson(this);
}