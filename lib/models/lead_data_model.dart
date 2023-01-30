import 'package:json_annotation/json_annotation.dart';

part 'lead_data_model.g.dart';

@JsonSerializable()
class LeadDataModel {
  @JsonKey(name: "parent")
  Map<String,dynamic> parent;
  @JsonKey(name: "children")
  Map<String,dynamic> children;

  LeadDataModel({required this.parent, required this.children});

  factory LeadDataModel.fromJson(Map<String, dynamic> json) =>
      _$LeadDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$LeadDataModelToJson(this);
}

// @JsonSerializable()
// class Parent with EquatableMixin{
//   @JsonKey(name: "id")
//   String id;
//   @JsonKey(name: "Lead Name")
//   String leadName;
//   @JsonKey(name: "Contact")
//   String contact;
//   @JsonKey(name: "City")
//   String city;
//   @JsonKey(name: "Rating")
//   String rating;
//   @JsonKey(name: "Industry name")
//   String industryName;
//   @JsonKey(name: "Lead Status")
//   String leadStatus;
//
//   Parent(
//       {required this.id,
//       required this.rating,
//       required this.contact,
//       required this.city,
//       required this.industryName,
//       required this.leadName,
//       required this.leadStatus});
//
//   factory Parent.fromJson(Map<String, dynamic> json) =>
//       _$ParentFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ParentToJson(this);
//
//   @override
//   // TODO: implement props
//   List<Object?> get props => [id];
// }
//
// @JsonSerializable()
// class Children {
//   @JsonKey(name: "Contacts")
//   Contacts contacts;
//   @JsonKey(name: "Opportunities")
//   Opportunities opportunities;
//   @JsonKey(name: "Activities")
//   Activities activities;
//
//   Children(
//       {required this.contacts,
//       required this.opportunities,
//       required this.activities});
//
//   factory Children.fromJson(Map<String, dynamic> json) =>
//       _$ChildrenFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ChildrenToJson(this);
// }
//
// @JsonSerializable()
// class Contacts {
//   @JsonKey(name: "data")
//   List<ContactsData> contactsData;
//
//   Contacts({required this.contactsData});
//   factory Contacts.fromJson(Map<String, dynamic> json) =>
//       _$ContactsFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ContactsToJson(this);
// }
//
// @JsonSerializable()
// class ContactsData {
//   @JsonKey(name: "id")
//   String id;
//   @JsonKey(name: "Contact")
//   String contact;
//   @JsonKey(name: "Designation")
//   String designation;
//   @JsonKey(name: "Mobile")
//   String mobile;
//   @JsonKey(name: "Email")
//   String email;
//   @JsonKey(name: "recordtype")
//   String recordtype;
//
//   ContactsData(
//       {required this.contact,
//       required this.designation,
//       required this.email,
//       required this.id,
//       required this.mobile,
//       required this.recordtype});
//   factory ContactsData.fromJson(Map<String, dynamic> json) =>
//       _$ContactsDataFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ContactsDataToJson(this);
// }
//
// @JsonSerializable()
// class Opportunities {
//   @JsonKey(name: "data")
//   List<OpportunitiesData> opportunitiesData;
//
//   Opportunities({required this.opportunitiesData});
//
//   factory Opportunities.fromJson(Map<String, dynamic> json) =>
//       _$OpportunitiesFromJson(json);
//
//   Map<String, dynamic> toJson() => _$OpportunitiesToJson(this);
// }
//
// @JsonSerializable()
// class OpportunitiesData {
//   @JsonKey(name: "id")
//   String id;
//   @JsonKey(name: "Remarks")
//   String remarks;
//   @JsonKey(name: "Value Approx.")
//   String valueApprox;
//   @JsonKey(name: "Opportunity Stage")
//   String opportunityStage;
//   @JsonKey(name: "Rating")
//   String rating;
//   @JsonKey(name: "recordtype")
//   String recordtype;
//
//   OpportunitiesData(
//       {required this.recordtype,
//       required this.id,
//       required this.opportunityStage,
//       required this.rating,
//       required this.remarks,
//       required this.valueApprox});
//
//   factory OpportunitiesData.fromJson(Map<String, dynamic> json) =>
//       _$OpportunitiesDataFromJson(json);
//
//   Map<String, dynamic> toJson() => _$OpportunitiesDataToJson(this);
// }
//
// @JsonSerializable()
// class Activities {
//   @JsonKey(name: "data")
//   List<ActivitiesData> activitiesData;
//
//   Activities({required this.activitiesData});
//
//   factory Activities.fromJson(Map<String, dynamic> json) =>
//       _$ActivitiesFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ActivitiesToJson(this);
// }
//
// @JsonSerializable()
// class ActivitiesData {
//   @JsonKey(name: "id")
//   String id;
//   @JsonKey(name: "Task Date")
//   String taskDate;
//   @JsonKey(name: "To")
//   String to;
//   @JsonKey(name: "Task Type")
//   String taskType;
//   @JsonKey(name: "Description")
//   String description;
//   @JsonKey(name: "recordtype")
//   String recordtype;
//
//   ActivitiesData(
//       {required this.id,
//       required this.recordtype,
//       required this.description,
//       required this.taskDate,
//       required this.taskType,
//       required this.to});
//
//   factory ActivitiesData.fromJson(Map<String, dynamic> json) =>
//       _$ActivitiesDataFromJson(json);
//
//   Map<String, dynamic> toJson() => _$ActivitiesDataToJson(this);
// }
