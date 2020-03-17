// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_user_search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitUserSearchResponseModel _$GitUserSearchResponseModelFromJson(
    Map<String, dynamic> json) {
  return GitUserSearchResponseModel(
    totalCount: json['total_count'] as int,
    items: (json['items'] as List)
        ?.map((e) =>
            e == null ? null : UserModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GitUserSearchResponseModelToJson(
        GitUserSearchResponseModel instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items,
    };
