// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeadDataModel _$LeadDataModelFromJson(Map<String, dynamic> json) =>
    LeadDataModel(
      parent: json['parent'] as Map<String, dynamic>,
      children: json['children'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$LeadDataModelToJson(LeadDataModel instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'children': instance.children,
    };
