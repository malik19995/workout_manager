import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_manager/core/models/exercise_enum.dart';

part 'workout_set.freezed.dart';
part 'workout_set.g.dart';

@freezed
class WorkoutSet with _$WorkoutSet {
  const factory WorkoutSet({
    required String setId,
    required ExercisesEnum? exercise,
    required int reps,
  }) = _WorkoutSet;

  factory WorkoutSet.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSetFromJson(json);
}
