// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:workout_manager/core/constants/constants.dart';
import 'package:workout_manager/core/models/exercise_enum.dart';
import 'package:workout_manager/core/models/workout.dart';
import 'package:workout_manager/core/models/workout_set.dart';
import 'package:workout_manager/main.dart';

import 'package:workout_manager/state/workout_cubit/workout_cubit.dart';

import 'helper/hydrated_bloc.dart';

void main() {
  initHydratedStorage();

  group('TaskCubit test', () {
    late WorkoutCubit workoutCubit;
    late Storage storage;

    setUp(() {
      workoutCubit = WorkoutCubit();
    });
    blocTest<WorkoutCubit, WorkoutState>(
        'emits [WorkoutLoaded,] states for successful workout addition',
        build: () => workoutCubit,
        act: (cubit) => cubit.addWorkout(
              Workout(
                workoutId: '00',
                workoutTimestamp: DateTime.now(),
                sets: const [
                  WorkoutSet(
                    setId: '0',
                    exercise: ExercisesEnum.barbellRow,
                    reps: 10,
                  ),
                ],
              ),
            ),
        expect: () {
          return [
            WorkoutState,
          ];
        });

    tearDown(() {
      workoutCubit.close();
    });
  });
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    await tester.pump(new Duration(seconds: 5));

    // Verify that our counter starts at 0.
    expect(find.text(Strings.add), findsOneWidget);
    expect(find.text('WORKOUTS'), findsOneWidget);

    await tester.tap(find.text('ADD'));
    await tester.pump();

    expect(find.text('WORKOUTS'), findsNothing);
    expect(find.text('ADD WORKOUT'), findsOneWidget);
  });
}
