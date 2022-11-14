import 'package:freezed_annotation/freezed_annotation.dart';

import 'workout_set.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  const factory Workout({
    required String workoutId,
    required List<WorkoutSet> sets,
    required DateTime workoutTimestamp,
    Duration? workout,
  }) = _Workout;
  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
}
