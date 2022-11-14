import 'package:flutter/material.dart';

import '../../../core/models/workout.dart';
import '../../../core/constants/colors.dart';
import '../../../core/navigator/navigator.dart';
import '../workout_detail/workout_detail.dart';
import '../../utils/utils.dart';
import '../../utils/workout_utils.dart';
import '../../widgets/app_text.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;
  final String workoutNo;
  const WorkoutCard({
    super.key,
    required this.workout,
    required this.workoutNo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(
            context,
            WorkoutDetail(
              workout: workout,
            ));
      },
      child: Card(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: AppColors.primary,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SizedBox(
            height: 120,
            width: double.maxFinite,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  spacer(),
                  AppText(
                    '# $workoutNo',
                    weight: FontWeight.w700,
                  ),
                  sized(h: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WorkoutDate(workout.workoutTimestamp),
                      WorkoutSets(workout.sets.length.toString()),
                    ],
                  ),
                  spacer(),
                ]),
          )),
    );
  }
}
