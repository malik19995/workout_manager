// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_manager_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initial _$$_InitialFromJson(Map<String, dynamic> json) => _$_Initial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_InitialToJson(_$_Initial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_Loading _$$_LoadingFromJson(Map<String, dynamic> json) => _$_Loading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadingToJson(_$_Loading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_Loaded _$$_LoadedFromJson(Map<String, dynamic> json) => _$_Loaded(
      (json['workouts'] as List<dynamic>)
          .map((e) => Workout.fromJson(e as Map<String, dynamic>))
          .toList(),
      MagicUser.fromJson(json['currentUser'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoadedToJson(_$_Loaded instance) => <String, dynamic>{
      'workouts': instance.workouts,
      'currentUser': instance.currentUser,
      'runtimeType': instance.$type,
    };
