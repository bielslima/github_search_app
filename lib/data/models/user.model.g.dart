// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map json) {
  return UserModel(
    json['login'] as String,
    json['avatar_url'] as String,
    json['name'] as String? ?? '',
    json['bio'] as String? ?? '',
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'name': instance.name,
      'bio': instance.bio,
    };
