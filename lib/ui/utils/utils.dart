import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:workout_manager/core/constants/colors.dart';

import '../../core/models/exercise_enum.dart';
export 'page_divider.dart';

final logger = Logger();

///
///
/// SizedBox shorthand
sized({double? h, double? w}) => SizedBox(
      height: h ?? 0,
      width: w ?? 0,
    );

///
///
/// const Spacer shorthand
spacer() => const Spacer();

///
///
/// Utility - To set status and navigation bar colors
setStatusBarColors() {
  FlutterStatusbarcolor.setStatusBarColor(AppColors.darkPrimary);
  FlutterStatusbarcolor.setNavigationBarColor(AppColors.darkPrimary);
}

///
///
/// Flutter toast helper
Future showToast(String string) {
  return Fluttertoast.showToast(
    msg: string,
    backgroundColor: AppColors.darkPrimary,
    textColor: AppColors.primary,
  );
}

///
///
/// Enum to Readable String Converter
String parseExerciseName(ExercisesEnum e) {
  switch (e) {
    case ExercisesEnum.barbellRow:
      return 'Barbell Row';

    case ExercisesEnum.benchPress:
      return 'Bench Press';

    case ExercisesEnum.shoulderPress:
      return 'Shoulder Press';

    case ExercisesEnum.deadlift:
      return 'Dead Lift';

    case ExercisesEnum.squat:
      return 'Squat';
  }
}
