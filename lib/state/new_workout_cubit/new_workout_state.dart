part of 'new_workout_cubit.dart';

@freezed
class NewWorkoutState with _$NewWorkoutState {
  const factory NewWorkoutState.update(Workout? newWorkout) = _Update;
}
