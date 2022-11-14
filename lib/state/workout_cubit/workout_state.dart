part of 'workout_cubit.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = _Initial;

  const factory WorkoutState.loading() = _Loading;

  const factory WorkoutState.loaded(
    final List<Workout> workouts,
    final MagicUser currentUser,
  ) = _Loaded;

  factory WorkoutState.fromJson(Map<String, dynamic> json) =>
      _$WorkoutStateFromJson(json);
}
