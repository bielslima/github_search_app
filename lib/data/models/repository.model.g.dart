// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryModel _$RepositoryModelFromJson(Map json) {
  return RepositoryModel(
    json['id'] as int,
    json['name'] as String,
    json['full_name'] as String,
    json['description'] as String? ?? '',
  );
}

Map<String, dynamic> _$RepositoryModelToJson(RepositoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'description': instance.description,
    };
