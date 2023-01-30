import 'package:json_annotation/json_annotation.dart';

part 'form_data_model.g.dart';

@JsonSerializable()
class FormDataModel {
  @JsonKey(name: "fieldname", defaultValue: "")
  final String? fieldName;
  @JsonKey(name: "controltype", defaultValue: "")
  final String? controlType;
  @JsonKey(name: "default", defaultValue: "")
  final String? defaultString;
  @JsonKey(name: "caption", defaultValue: "")
  final String? caption;
  @JsonKey(name: "Options", defaultValue: "")
  final String? options;

  FormDataModel(
      {required this.caption,
      required this.controlType,
      required this.defaultString,
      required this.fieldName,
      required this.options});

  factory FormDataModel.fromJson(Map<String, dynamic> json) =>
      _$FormDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$FormDataModelToJson(this);
}
