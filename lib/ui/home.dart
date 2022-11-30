import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/core/navigator/navigator.dart';
import 'package:workout_manager/ui/utils/size_config.dart';
import 'package:workout_manager/ui/utils/utils.dart';
import 'package:workout_manager/ui/widgets/custom_button.dart';
import 'package:workout_manager/ui/widgets/page_title.dart';

import '../core/constants/constants.dart';
import '../state/workout_manager_cubit/workout_manager_cubit.dart';
import 'screens/add_update_workout/consumer.dart';
import 'screens/workout_list/workout_card.dart';
import 'widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(child: appLogo),
            const PageDivider(
              bottomPadding: 8,
            ),
            PageTitle(
              title: Strings.workouts.toUpperCase(),
            ),
            sized(h: 12),

            ///
            ///
            /// Main App Consumer - WorkoutCubit
            Expanded(
              flex: 7,
              child: BlocBuilder<WorkoutManagerCubit, WorkoutManagerState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(
                      child: AppText(
                        'No Workouts Added',
                      ),
                    ),
                    loading: () => customLoader,
                    loaded: (workouts, currentUser) => ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: workouts.length,
                      itemBuilder: ((context, index) {
                        return WorkoutCard(
                          workout: workouts[index],
                          workoutNo: (workouts.length - index).toString(),
                        );
                      }),
                    ),
                  );
                },
              ),
            ),
            sized(h: 8),

            ///
            ///
            /// Add Workout Button
            Center(
              child: CustomButton(
                onPressed: () {
                  navigateTo(
                    context,
                    const AddUpdateWorkoutConsumer(),
                  );
                },
                label: Strings.add,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
