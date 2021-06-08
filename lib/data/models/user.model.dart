import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable(
  anyMap: true,
  fieldRename: FieldRename.snake,
)
class UserModel {
  final String login;
  
  final String avatarUrl;

  @JsonKey(
    defaultValue: ''
  )
  final String name;

  @JsonKey(
    defaultValue: ''
  )
  final String bio;
  UserModel(this.login, this.avatarUrl, this.name, this.bio);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map json) => _$UserModelFromJson(json);
}
