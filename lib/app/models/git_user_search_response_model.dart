import 'package:gitpicker/app/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'git_user_search_response_model.g.dart';

@JsonSerializable()
class GitUserSearchResponseModel {
  GitUserSearchResponseModel({this.totalCount, this.items});

  @JsonKey(name: 'total_count')
  int totalCount;
  List<UserModel> items;

  factory GitUserSearchResponseModel.fromJson(Map<String, dynamic> json) => _$GitUserSearchResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$GitUserSearchResponseModelToJson(this);
}