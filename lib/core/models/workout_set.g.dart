// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutSet _$$_WorkoutSetFromJson(Map<String, dynamic> json) =>
    _$_WorkoutSet(
      setId: json['setId'] as String,
      exercise: $enumDecodeNullable(_$ExercisesEnumEnumMap, json['exercise']),
      reps: json['reps'] as int,
    );

Map<String, dynamic> _$$_WorkoutSetToJson(_$_WorkoutSet instance) =>
    <String, dynamic>{
      'setId': instance.setId,
      'exercise': _$ExercisesEnumEnumMap[instance.exercise],
      'reps': instance.reps,
    };

const _$ExercisesEnumEnumMap = {
  ExercisesEnum.barbellRow: 'barbellRow',
  ExercisesEnum.benchPress: 'benchPress',
  ExercisesEnum.shoulderPress: 'shoulderPress',
  ExercisesEnum.deadlift: 'deadlift',
  ExercisesEnum.squat: 'squat',
};
