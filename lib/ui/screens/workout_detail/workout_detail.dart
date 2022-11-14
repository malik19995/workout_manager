import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/core/models/workout.dart';
import 'package:workout_manager/ui/widgets/app_text.dart';
import 'package:workout_manager/ui/widgets/custom_button.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/models/workout_set.dart';
import '../../../core/navigator/navigator.dart';
import '../../../state/workout_manager_cubit/workout_manager_cubit.dart';
import '../../utils/utils.dart';
import '../../utils/workout_utils.dart';
import '../../widgets/page_title.dart';
import '../add_update_workout/consumer.dart';

class WorkoutDetail extends StatelessWidget {
  final Workout workout;
  const WorkoutDetail({
    super.key,
    required this.workout,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        shape: const Border(
          bottom: BorderSide(
            color: AppColors.primary,
          ),
        ),
        backgroundColor: AppColors.darkPrimary,
        leading: IconButton(
            onPressed: () {
              navigateBack(context);
            },
            icon: backIcon),
        title: PageTitle(
          title: Strings.workoutDetails.toUpperCase(),
          size: 18,
        ),
      ),
      body: Column(
        children: [
          sized(h: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AppText(Strings.workoutTime),
              WorkoutDate(
                workout.workoutTimestamp,
              ),
            ],
          ),
          sized(h: 10),
          Expanded(
            child: ListView.builder(
                itemCount: workout.sets.length,
                itemBuilder: ((context, index) {
                  WorkoutSet currentSet = workout.sets[index];

                  String setNumber =
                      (int.parse(currentSet.setId) + 1).toString();
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    color: AppColors.darkPrimary,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          sized(h: 16),
                          AppText(
                            'Set #$setNumber',
                            textAlign: TextAlign.start,
                            weight: FontWeight.w700,
                          ),
                          const PageDivider(
                            thickness: 1,
                            topPadding: 0,
                            bottomPadding: 0,
                            indents: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppText(
                                parseExerciseName(
                                  workout.sets[index].exercise!,
                                ),
                                size: 14,
                                weight: FontWeight.w600,
                              ),
                              sized(w: 30),
                              AppText(
                                '${workout.sets[index].reps} Reps',
                                size: 14,
                                fontStyle: FontStyle.italic,
                                weight: FontWeight.normal,
                              ),
                            ],
                          ),
                          sized(h: 16)
                        ],
                      ),
                    ),
                  );
                })),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                onPressed: () {
                  navigateAndReplace(
                    context,
                    // Current Workout Passed for update context
                    AddUpdateWorkoutConsumer(
                      w: workout,
                    ),
                  );
                },
                label: Strings.edit,
                borderColor: AppColors.success,
                textColor: AppColors.success,
                size: 65,
              ),
              CustomButton(
                onPressed: () {
                  context.read<WorkoutManagerCubit>().deleteWorkout(workout);
                  navigateBack(context);
                },
                label: Strings.delete,
                size: 65,
                borderColor: AppColors.error,
                textColor: AppColors.error,
              ),
            ],
          )
        ],
      ),
    );
  }
}
