import 'package:flutter/material.dart';

import 'colors.dart';
export 'assets.dart';

class Strings {
  static const appTitle = 'Magic Workouts';

  static const workouts = 'Workouts';
  static const add = 'ADD';

  static const addWorkout = 'Add Workout';

  static const fieldsInvalid = 'Make sure all fields are valid';

  static const numberOfSets = 'Number of Sets';
  static const selectExercise = 'Select Exercise';

  static const reps = 'REPS';
  static const submit = 'Submit';

  static const delete = 'Delete';
  static const edit = 'Edit';

  static const workoutTime = 'Workout Time';
  static const forgotPasswordPageText =
      'Enter the email address associated with your account and we\'ll email you a link to reset your password.';

  static const workoutDetails = 'Workout Details';
  static const cancel = 'Cancel';
}

const logoutIcon = Icon(
  Icons.logout,
  color: AppColors.primary,
);

const backIcon = Icon(
  Icons.keyboard_arrow_left_rounded,
  color: AppColors.primary,
);

const customLoader = Center(
  child: CircularProgressIndicator(),
);
