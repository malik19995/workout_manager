import 'package:flutter/material.dart';
import 'package:workout_manager/core/constants/colors.dart';
import 'package:workout_manager/core/mixins/validation_mixin.dart';

// ignore: must_be_immutable
class CustomDropDownField extends StatelessWidget {
  final List<DropdownMenuItem<Object>> items;
  final String label;
  final Object? initialValue;
  final Function(Object?)? onChanged;
  TextStyle? texttStyle;
  TextStyle? hintStyle;
  CustomDropDownField({
    super.key,
    required this.items,
    this.onChanged,
    required this.label,
    this.initialValue,
    this.texttStyle,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    texttStyle ??= Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.primary,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        );

    hintStyle ??= Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.primary,
          fontSize: 20,
        );
    return Center(
      child: DropdownButtonFormField<Object>(
        value: initialValue,
        focusColor: AppColors.primary,
        isExpanded: true,
        alignment: Alignment.center,
        dropdownColor: AppColors.darkPrimary,
        style: texttStyle,
        menuMaxHeight: 200,
        borderRadius: BorderRadius.circular(40),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          hintText: label,
          hintStyle: hintStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              color: AppColors.primary,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              color: AppColors.primary,
            ),
          ),
        ),
        items: items,
        onChanged: onChanged,
        validator: (v) => ValidationsMixin.isNotEmpty(v.toString()),
      ),
    );
  }
}
