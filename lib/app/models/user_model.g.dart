// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    login: json['login'] as String,
    id: json['id'] as int,
    avatarUrl: json['avatar_url'] as String,
    name: json['name'] as String,
    company: json['company'] as String,
  )
    ..reposUrl = json['repos_url'] as String
    ..url = json['url'] as String
    ..bio = json['bio'] as String
    ..publicRepos = json['public_repos'] as int
    ..followers = json['followers'] as int
    ..following = json['following'] as int;
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'repos_url': instance.reposUrl,
      'url': instance.url,
      'name': instance.name,
      'company': instance.company,
      'bio': instance.bio,
      'public_repos': instance.publicRepos,
      'followers': instance.followers,
      'following': instance.following,
    };
