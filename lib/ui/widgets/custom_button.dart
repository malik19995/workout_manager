import 'package:flutter/material.dart';
import 'package:workout_manager/core/constants/colors.dart';
import 'package:workout_manager/ui/widgets/app_text.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String label;
  final double size;
  final Color? backgroundColor;
  final Color textColor;
  final Color borderColor;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.size = 75,
    this.backgroundColor,
    this.borderColor = AppColors.primary,
    this.textColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.darkPrimary,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor, width: 3),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        onPressed: onPressed,
        child: Center(
          child: AppText(
            label,
            textAlign: TextAlign.center,
            textColor: textColor,
            weight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
