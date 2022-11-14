// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Workout _$$_WorkoutFromJson(Map<String, dynamic> json) => _$_Workout(
      workoutId: json['workoutId'] as String,
      sets: (json['sets'] as List<dynamic>)
          .map((e) => WorkoutSet.fromJson(e as Map<String, dynamic>))
          .toList(),
      workoutTimestamp: DateTime.parse(json['workoutTimestamp'] as String),
      workout: json['workout'] == null
          ? null
          : Duration(microseconds: json['workout'] as int),
    );

Map<String, dynamic> _$$_WorkoutToJson(_$_Workout instance) =>
    <String, dynamic>{
      'workoutId': instance.workoutId,
      'sets': instance.sets,
      'workoutTimestamp': instance.workoutTimestamp.toIso8601String(),
      'workout': instance.workout?.inMicroseconds,
    };
