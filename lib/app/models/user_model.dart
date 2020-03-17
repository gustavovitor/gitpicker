import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  UserModel({this.login, this.id, this.avatarUrl, this.name, this.company});

  String login;
  int id;

  @JsonKey(name: 'avatar_url')
  String avatarUrl;

  @JsonKey(name: 'repos_url')
  String reposUrl;

  String url;
  String name;
  String company;
  String bio;

  @JsonKey(name: 'public_repos')
  int publicRepos;

  int followers;
  int following;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}