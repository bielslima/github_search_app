import 'package:json_annotation/json_annotation.dart';
part 'repository.model.g.dart';

@JsonSerializable(anyMap: true, fieldRename: FieldRename.snake)
class RepositoryModel {
  final int id;
  final String name;
  final String fullName;

  @JsonKey(
    defaultValue: ""
  )
  final String description;

  RepositoryModel(this.id, this.name, this.fullName, this.description);

  Map<String, dynamic> toJson() => _$RepositoryModelToJson(this);

  factory RepositoryModel.fromJson(Map json) => _$RepositoryModelFromJson(json);
}
