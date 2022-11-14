import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:workout_manager/core/models/exercise_enum.dart';
import 'package:workout_manager/core/models/workout.dart';
import 'package:workout_manager/core/models/workout_set.dart';

part 'new_workout_cubit.freezed.dart';
part 'new_workout_state.dart';

class NewWorkoutCubit extends Cubit<NewWorkoutState> {
  NewWorkoutCubit({NewWorkoutState? newWorkout})
      : super(const NewWorkoutState.update(null));

  updateWorkout(Workout updatedWorkout) {
    emit(
      NewWorkoutState.update(updatedWorkout),
    );
  }

  incrementReps(
    int setIndex,
  ) {
    Workout pp = state.newWorkout!;
    List<WorkoutSet> updatedSets = List.from(pp.sets);
    updatedSets[setIndex] = updatedSets[setIndex].copyWith(
      reps: pp.sets[setIndex].reps + 1,
    );

    emit(
      state.copyWith(
        newWorkout: state.newWorkout!.copyWith(sets: updatedSets),
      ),
    );
  }

  updateExercise(
    int setIndex,
    dynamic selectedExercise,
  ) {
    List<WorkoutSet> updatedSets = List.from(state.newWorkout!.sets);
    updatedSets[setIndex] = updatedSets[setIndex].copyWith(
      exercise: selectedExercise as ExercisesEnum,
    );
    emit(
      state.copyWith(
        newWorkout: state.newWorkout!.copyWith(sets: updatedSets),
      ),
    );
  }

  decrementReps(
    int setIndex,
  ) {
    Workout pp = state.newWorkout!;
    List<WorkoutSet> updatedSets = List.from(state.newWorkout!.sets);

    int currReps = pp.sets[setIndex].reps;

    updatedSets[setIndex] = updatedSets[setIndex].copyWith(
      reps: currReps > 0 ? currReps - 1 : 0,
    );

    emit(
      state.copyWith(
        newWorkout: state.newWorkout!.copyWith(sets: updatedSets),
      ),
    );
  }
}
