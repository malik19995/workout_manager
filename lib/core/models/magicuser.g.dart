// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'magicuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MagicUser _$$_MagicUserFromJson(Map<String, dynamic> json) => _$_MagicUser(
      name: json['name'] as String,
      age: json['age'] as int,
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      gender: json['gender'] as String,
      email: json['email'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$_MagicUserToJson(_$_MagicUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'gender': instance.gender,
      'email': instance.email,
      'uid': instance.uid,
    };
