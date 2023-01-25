// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeadDataModel _$LeadDataModelFromJson(Map<String, dynamic> json) =>
    LeadDataModel(
      parent: Parent.fromJson(json['parent'] as Map<String, dynamic>),
      children: Children.fromJson(json['children'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LeadDataModelToJson(LeadDataModel instance) =>
    <String, dynamic>{
      'parent': instance.parent,
      'children': instance.children,
    };

Parent _$ParentFromJson(Map<String, dynamic> json) => Parent(
      id: json['id'] as String,
      rating: json['Rating'] as String,
      contact: json['Contact'] as String,
      city: json['City'] as String,
      industryName: json['Industry name'] as String,
      leadName: json['Lead Name'] as String,
      leadStatus: json['Lead Status'] as String,
    );

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'id': instance.id,
      'Lead Name': instance.leadName,
      'Contact': instance.contact,
      'City': instance.city,
      'Rating': instance.rating,
      'Industry name': instance.industryName,
      'Lead Status': instance.leadStatus,
    };

Children _$ChildrenFromJson(Map<String, dynamic> json) => Children(
      contacts: Contacts.fromJson(json['Contacts'] as Map<String, dynamic>),
      opportunities:
          Opportunities.fromJson(json['Opportunities'] as Map<String, dynamic>),
      activities:
          Activities.fromJson(json['Activities'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChildrenToJson(Children instance) => <String, dynamic>{
      'Contacts': instance.contacts,
      'Opportunities': instance.opportunities,
      'Activities': instance.activities,
    };

Contacts _$ContactsFromJson(Map<String, dynamic> json) => Contacts(
      contactsData: (json['data'] as List<dynamic>)
          .map((e) => ContactsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ContactsToJson(Contacts instance) => <String, dynamic>{
      'data': instance.contactsData,
    };

ContactsData _$ContactsDataFromJson(Map<String, dynamic> json) => ContactsData(
      contact: json['Contact'] as String,
      designation: json['Designation'] as String,
      email: json['Email'] as String,
      id: json['id'] as String,
      mobile: json['Mobile'] as String,
      recordtype: json['recordtype'] as String,
    );

Map<String, dynamic> _$ContactsDataToJson(ContactsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Contact': instance.contact,
      'Designation': instance.designation,
      'Mobile': instance.mobile,
      'Email': instance.email,
      'recordtype': instance.recordtype,
    };

Opportunities _$OpportunitiesFromJson(Map<String, dynamic> json) =>
    Opportunities(
      opportunitiesData: (json['data'] as List<dynamic>)
          .map((e) => OpportunitiesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpportunitiesToJson(Opportunities instance) =>
    <String, dynamic>{
      'data': instance.opportunitiesData,
    };

OpportunitiesData _$OpportunitiesDataFromJson(Map<String, dynamic> json) =>
    OpportunitiesData(
      recordtype: json['recordtype'] as String,
      id: json['id'] as String,
      opportunityStage: json['Opportunity Stage'] as String,
      rating: json['Rating'] as String,
      remarks: json['Remarks'] as String,
      valueApprox: json['Value Approx.'] as String,
    );

Map<String, dynamic> _$OpportunitiesDataToJson(OpportunitiesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Remarks': instance.remarks,
      'Value Approx.': instance.valueApprox,
      'Opportunity Stage': instance.opportunityStage,
      'Rating': instance.rating,
      'recordtype': instance.recordtype,
    };

Activities _$ActivitiesFromJson(Map<String, dynamic> json) => Activities(
      activitiesData: (json['data'] as List<dynamic>)
          .map((e) => ActivitiesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActivitiesToJson(Activities instance) =>
    <String, dynamic>{
      'data': instance.activitiesData,
    };

ActivitiesData _$ActivitiesDataFromJson(Map<String, dynamic> json) =>
    ActivitiesData(
      id: json['id'] as String,
      recordtype: json['recordtype'] as String,
      description: json['Description'] as String,
      taskDate: json['Task Date'] as String,
      taskType: json['Task Type'] as String,
      to: json['To'] as String,
    );

Map<String, dynamic> _$ActivitiesDataToJson(ActivitiesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'Task Date': instance.taskDate,
      'To': instance.to,
      'Task Type': instance.taskType,
      'Description': instance.description,
      'recordtype': instance.recordtype,
    };
