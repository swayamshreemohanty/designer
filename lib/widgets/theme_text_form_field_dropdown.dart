// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ThemeTextFormFieldDropDown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(T?)? validator;
  final String? label;
  final String? hint;
  final int? maxLines;
  final Widget? prefixIcon;
  final T? value;

  const ThemeTextFormFieldDropDown({
    Key? key,
    required this.items,
    this.onChanged,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.label,
    this.hint,
    this.prefixIcon,
    this.maxLines = 1,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 12),
        child: DropdownButtonFormField<T>(
          value: value,
          items: items,
          onChanged: onChanged,
          validator: validator,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            labelText: label,
            hintText: hint,
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(15),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      );
}
