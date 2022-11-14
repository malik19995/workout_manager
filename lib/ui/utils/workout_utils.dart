import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/app_text.dart';

class WorkoutDate extends StatelessWidget {
  final DateTime date;
  const WorkoutDate(
    this.date, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
          DateFormat('E - d MMM').format(date).toUpperCase(),
          weight: FontWeight.bold,
          size: 14,
        ),
        AppText(
          DateFormat('hh:mm a').format(date).toUpperCase(),
          weight: FontWeight.bold,
          size: 18,
        ),
      ],
    );
  }
}

class WorkoutSets extends StatelessWidget {
  final String setCount;
  const WorkoutSets(this.setCount, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppText(
          'SETS',
          weight: FontWeight.bold,
          size: 14,
        ),
        AppText(
          setCount,
          size: 20,
          weight: FontWeight.bold,
        ),
      ],
    );
  }
}
