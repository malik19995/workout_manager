// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';

part 'magicuser.freezed.dart';
part 'magicuser.g.dart';

@freezed
class MagicUser with _$MagicUser {
  const factory MagicUser({
    required String name,
    required int age,
    required double weight,
    required double height,
    required String gender,
    required String email,
    required String uid,
  }) = _MagicUser;

  factory MagicUser.fromJson(Map<String, Object?> json) =>
      _$MagicUserFromJson(json);
}
