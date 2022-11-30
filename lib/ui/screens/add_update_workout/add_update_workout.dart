import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/core/models/exercise_enum.dart';
import 'package:workout_manager/core/models/workout_set.dart';
import 'package:workout_manager/state/new_workout_cubit/new_workout_cubit.dart';
import 'package:workout_manager/ui/utils/size_config.dart';
import 'package:workout_manager/ui/widgets/app_text.dart';
import 'package:workout_manager/ui/widgets/custom_button.dart';
import 'package:workout_manager/ui/widgets/input_fields/dropdown_field.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/models/workout.dart';
import '../../../core/navigator/navigator.dart';
import '../../../state/workout_manager_cubit/workout_manager_cubit.dart';
import '../../utils/utils.dart';
import '../../widgets/page_title.dart';

class AddUpdateWorkout extends StatefulWidget {
  final bool upgrade;
  const AddUpdateWorkout({
    super.key,
    this.upgrade = false,
  });

  @override
  State<AddUpdateWorkout> createState() => _AddUpdateWorkoutState();
}

class _AddUpdateWorkoutState extends State<AddUpdateWorkout> {
  final DateTime nowTime = DateTime.now();

  late TextTheme textTheme;

  setAdded(setCount, NewWorkoutState state, BuildContext context) {
    Workout? ww;
    if (state.newWorkout == null) {
      ww = Workout(
        workoutId: DateTime.now().millisecondsSinceEpoch.toString(),
        workoutTimestamp: DateTime.now(),
        sets: List.generate(
          setCount as int,
          (index) => WorkoutSet(
            setId: index.toString(),
            exercise: null,
            reps: 0,
          ),
        ),
      );
    } else {
      ww = state.newWorkout!.copyWith(
        sets: state.newWorkout!.sets.isEmpty
            ? []
            : _updateWorkoutSets(
                state.newWorkout!.sets.toList(
                  growable: true,
                ),
                setCount as int,
              ),
      );
    }

    context.read<NewWorkoutCubit>().updateWorkout(ww);
  }

  @override
  Widget build(BuildContext context) {
    textTheme = Theme.of(context).textTheme;
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
        title: PageTitle(title: Strings.addWorkout.toUpperCase()),
      ),
      body: SafeArea(
        child: BlocBuilder<NewWorkoutCubit, NewWorkoutState>(
          buildWhen: ((previous, current) =>
              previous.newWorkout != current.newWorkout),
          builder: (context, state) {
            ///
            ///
            /// Submit Method
            /// Validates inputs
            /// Stores Workout in WorkoutCubit
            submitWorkout() {
              if (state.newWorkout == null ||
                  state.newWorkout!.sets.any(
                    (element) => element.reps == 0,
                  ) ||
                  state.newWorkout!.sets
                      .any((element) => element.exercise == null)) {
                showToast(
                  Strings.fieldsInvalid,
                );
              } else {
                context.read<WorkoutManagerCubit>().addWorkout(
                      state.newWorkout!,
                      upgrade: widget.upgrade,
                    );

                navigateBack(context);
              }
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                sized(h: 12),
                Expanded(
                  child: Form(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomDropDownField(
                            initialValue: state.newWorkout?.sets.length,
                            items: List.generate(
                              50,
                              (index) => DropdownMenuItem<int>(
                                value: index + 1,
                                child: Center(
                                    child: Text(
                                  '${index + 1}',
                                  style: textTheme.bodyMedium!.copyWith(
                                    color: AppColors.primary,
                                    fontSize: 24,
                                  ),
                                )),
                              ),
                            ),
                            label: Strings.numberOfSets,
                            onChanged: (setCount) => setAdded(
                              setCount,
                              state,
                              context,
                            ),
                          ),
                          (state.newWorkout?.sets.isNotEmpty ?? false)
                              ? Expanded(
                                  child: ListView.builder(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                      shrinkWrap: true,
                                      itemCount: state.newWorkout!.sets.length,
                                      itemBuilder: (context, index) {
                                        ///
                                        ///
                                        /// Increment a Rep in indexed set.
                                        void incrementSet() {
                                          context
                                              .read<NewWorkoutCubit>()
                                              .incrementReps(
                                                index,
                                              );
                                        }

                                        ///
                                        ///
                                        /// Decrement a Rep in indexed set.
                                        void decrementSet() {
                                          context
                                              .read<NewWorkoutCubit>()
                                              .decrementReps(
                                                index,
                                              );
                                        }

                                        void onExerciseSelect(
                                            selectedExercise) {
                                          context
                                              .read<NewWorkoutCubit>()
                                              .updateExercise(
                                                  index, selectedExercise);
                                        }

                                        return Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 12),
                                          height: 100,
                                          child: Column(
                                            children: [
                                              AppText('Set #${index + 1}'),
                                              const PageDivider(
                                                thickness: 1,
                                                topPadding: 0,
                                                bottomPadding: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    width:
                                                        SizeConfig.screenWidth /
                                                            2.5,
                                                    child: CustomDropDownField(
                                                      initialValue: state
                                                          .newWorkout!
                                                          .sets[index]
                                                          .exercise,
                                                      hintStyle: textTheme
                                                          .bodyMedium!
                                                          .copyWith(
                                                        color:
                                                            AppColors.primary,
                                                        fontSize: 14,
                                                      ),
                                                      texttStyle: textTheme
                                                          .bodyMedium!
                                                          .copyWith(
                                                        color:
                                                            AppColors.primary,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                      onChanged:
                                                          onExerciseSelect,
                                                      items: ExercisesEnum
                                                          .values
                                                          .map<
                                                              DropdownMenuItem<
                                                                  Object>>(
                                                            (e) => DropdownMenuItem<
                                                                ExercisesEnum>(
                                                              value: e,
                                                              child: Text(
                                                                parseExerciseName(
                                                                    e),
                                                              ),
                                                            ),
                                                          )
                                                          .toList(),
                                                      label: Strings
                                                          .selectExercise,
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    width:
                                                        SizeConfig.screenWidth /
                                                            2,
                                                    child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          IconButton(
                                                            onPressed: () =>
                                                                decrementSet(),
                                                            icon: const Icon(
                                                              Icons.remove,
                                                              color: AppColors
                                                                  .primary,
                                                            ),
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                state
                                                                    .newWorkout!
                                                                    .sets[index]
                                                                    .reps
                                                                    .toString(),
                                                                style: textTheme
                                                                    .bodyLarge!
                                                                    .copyWith(
                                                                  fontSize: 20,
                                                                  color: AppColors
                                                                      .primary,
                                                                ),
                                                              ),
                                                              Text(
                                                                Strings.reps,
                                                                style: textTheme
                                                                    .bodySmall!
                                                                    .copyWith(
                                                                  fontSize: 10,
                                                                  color: AppColors
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          IconButton(
                                                            onPressed: () =>
                                                                incrementSet(),
                                                            icon: const Icon(
                                                              Icons.add,
                                                              color: AppColors
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ]),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      }),
                                )
                              : spacer(),
                          CustomButton(
                            onPressed: () => submitWorkout(),
                            label: Strings.submit,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  List<WorkoutSet> _updateWorkoutSets(
      List<WorkoutSet> ss, int updatedSetCount) {
    List<WorkoutSet> currentSets = ss;
    if (ss.length > updatedSetCount) {
      currentSets.removeRange(updatedSetCount, ss.length);
    } else {
      currentSets.addAll(
        List.generate(
          updatedSetCount - ss.length,
          (index) => WorkoutSet(
            setId: (ss.length + index).toString(),
            exercise: null,
            reps: 0,
          ),
        ).toList(),
      );
    }
    return currentSets;
  }
}
