import 'package:flutter/material.dart';
import 'package:workout_manager/core/constants/colors.dart';

class PageTitle extends StatelessWidget {
  final String title;
  final double? size;
  final double? lspacing;
  const PageTitle(
      {super.key, required this.title, this.size = 20, this.lspacing = 1.5});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline3!.copyWith(
              color: AppColors.primary,
              fontSize: size,
              letterSpacing: lspacing,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
