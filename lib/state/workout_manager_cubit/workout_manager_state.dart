part of 'workout_manager_cubit.dart';

@freezed
class WorkoutManagerState with _$WorkoutManagerState {
  const factory WorkoutManagerState.initial() = _Initial;

  const factory WorkoutManagerState.loading() = _Loading;

  const factory WorkoutManagerState.loaded(
    final List<Workout> workouts,
    final MagicUser currentUser,
  ) = _Loaded;

  factory WorkoutManagerState.fromJson(Map<String, dynamic> json) =>
      _$WorkoutManagerStateFromJson(json);
}
