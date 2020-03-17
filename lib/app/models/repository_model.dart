import 'package:json_annotation/json_annotation.dart';

part 'repository_model.g.dart';

@JsonSerializable()
class RepositoryModel {
  RepositoryModel({this.id, this.name, this.language});

  int id;
  String name;
  String language;

  factory RepositoryModel.fromJson(Map<String, dynamic> json) => _$RepositoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$RepositoryModelToJson(this);
}