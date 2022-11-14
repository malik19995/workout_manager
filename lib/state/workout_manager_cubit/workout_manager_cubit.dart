import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:workout_manager/core/models/magicuser.dart';
import 'package:workout_manager/core/models/workout.dart';
import 'package:workout_manager/ui/utils/utils.dart';

part 'workout_manager_state.dart';
part 'workout_manager_cubit.freezed.dart';
part 'workout_manager_cubit.g.dart';

class WorkoutManagerCubit extends HydratedCubit<WorkoutManagerState> {
  WorkoutManagerCubit() : super(const WorkoutManagerState.initial());

  deleteWorkout(Workout deleteWorkout) {
    var newState = state.whenOrNull(
      loaded: (workouts, currentUser) {
        return [workouts, currentUser];
      },
    );
    if (newState != null) {
      List<Workout> currentList = List.from(
        newState[0] as List<Workout>,
        growable: true,
      );
      currentList.removeWhere(
        (element) => element.workoutId == deleteWorkout.workoutId,
      );

      emit(
        WorkoutManagerState.loaded(
          currentList,
          newState[1] as MagicUser,
        ),
      );
      showToast('Workout Deleted');
    }
  }

  addWorkout(Workout w, {bool upgrade = false}) {
    var newState = state.whenOrNull(
        loaded: (workouts, currentUser) {
          return [workouts, currentUser];
        },
        initial: () => [
              List<Workout>.empty(),
              const MagicUser(
                name: 'Test User',
                age: 23,
                weight: 85,
                height: 185,
                gender: 'Male',
                email: 'hamzaa.malik194@gmail.com',
                uid: '1',
              )
            ]);
    if (newState != null) {
      List<Workout> currentList = List.from(
        newState[0] as List<Workout>,
        growable: true,
      );

      if (upgrade) {
        currentList[currentList
            .indexWhere((element) => element.workoutId == w.workoutId)] = w;
      } else {
        currentList.insert(0, w);
      }
      emit(
        WorkoutManagerState.loaded(
          currentList,
          newState[1] as MagicUser,
        ),
      );
      showToast('Workout Added');
    }
  }

  @override
  WorkoutManagerState? fromJson(Map<String, dynamic> json) {
    if (json.isNotEmpty) {
      return WorkoutManagerState.fromJson(json);
    } else {
      return const WorkoutManagerState.initial();
    }
  }

  @override
  Map<String, dynamic>? toJson(WorkoutManagerState state) {
    return state.whenOrNull(
      loaded: (workouts, currentUser) {
        return state.toJson();
      },
    );
  }
}
