import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_manager/core/constants/colors.dart';
import 'package:workout_manager/ui/utils/utils.dart';

// Default textInputAction is next. For last field use 'done'.
class CustomTextInputField extends StatefulWidget {
  const CustomTextInputField(
      {Key? key,
      required this.label,
      this.isRequired = false,
      this.isEnabled = true,
      this.isLocationField = false,
      this.onChanged,
      this.hintText,
      this.initialValue = '',
      this.validator,
      this.obscureText = false,
      this.maxLength,
      this.textInputAction = TextInputAction.next,
      this.isNumberField = false})
      : super(key: key);
  final String label;
  final bool obscureText;
  final bool isRequired;
  final String? hintText;
  final String? Function(String?)? validator;
  final int? maxLength;
  final String initialValue;
  final bool isEnabled;
  final bool isNumberField;
  final bool isLocationField;
  final TextInputAction textInputAction;
  final Function(String s)? onChanged;

  @override
  State<CustomTextInputField> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  late TextEditingController _textEditingController;
  @override
  initState() {
    super.initState();
    _textEditingController = TextEditingController(text: widget.initialValue);
  }

  @override
  void didChangeDependencies() {
    _textEditingController.text = widget.initialValue;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.isEnabled,
      controller: _textEditingController,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      style: !widget.isEnabled
          ? const TextStyle(
              color: Color(0xffC8C8C8),
              fontSize: 14,
              fontWeight: FontWeight.w400)
          : null,
      onSaved: (s) {
        if (widget.onChanged != null) widget.onChanged!(s ?? '');
      },
      validator: (s) {
        if (widget.isRequired && (s != null && s.isEmpty)) {
          return "Required Field";
        }
        if (widget.validator != null && s != null && s.isNotEmpty) {
          return widget.validator!(s);
        }
        return null;
      },
      maxLength: widget.maxLength,
      inputFormatters: widget.isNumberField
          ? [
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ]
          : [],
      keyboardType: widget.isNumberField ? TextInputType.number : null,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        hintText: widget.hintText ??
            (widget.isRequired ? '${widget.label} *' : widget.label),
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColors.primary),
        suffixIcon: widget.isLocationField
            ? const Icon(Icons.location_pin, color: AppColors.borderColor)
            : sized(w: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(
            color: AppColors.primary,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(
            color: AppColors.primary,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
      ),
    );
  }
}
