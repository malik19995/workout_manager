import 'package:flutter/material.dart';
import 'package:workout_manager/core/constants/colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final FontWeight? weight;
  final double? size;
  final Color? textColor;
  final FontStyle? fontStyle;

  const AppText(this.text,
      {super.key,
      this.textAlign,
      this.weight,
      this.size,
      this.textColor = AppColors.primary,
      this.fontStyle = FontStyle.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: textColor,
            fontWeight: weight,
            fontSize: size,
            fontStyle: fontStyle,
          ),
      textAlign: textAlign,
    );
  }
}
