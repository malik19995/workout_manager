import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/models/workout.dart';
import '../../../state/new_workout_cubit/new_workout_cubit.dart';
import 'add_update_workout.dart';

class AddUpdateWorkoutConsumer extends StatelessWidget {
  final Workout? w;
  const AddUpdateWorkoutConsumer({super.key, this.w});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => w != null
          ? (NewWorkoutCubit()..updateWorkout(w!))
          : NewWorkoutCubit(),
      child: AddUpdateWorkout(upgrade: w != null),
    );
  }
}
