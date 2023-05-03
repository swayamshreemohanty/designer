// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final String? Function(String? text)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final void Function(String)? onChanged;
  final String? label;
  final String? hint;
  final int? maxLines;
  final bool? enabled;
  final void Function()? onTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final bool readOnly;
  final bool obscureText;
  final double topPadding;
  final int? maxLength;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintStyle;
  final TextStyle? style;

  ThemeTextFormField({
    Key? key,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.autofillHints,
    this.validator,
    this.inputFormatters,
    this.onChanged,
    this.maxLines = 1,
    this.textCapitalization = TextCapitalization.words,
    this.label,
    this.hint,
    this.enabled,
    this.onTap,
    this.suffixIcon,
    this.prefix,
    this.prefixIcon,
    this.topPadding = 8,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLength,
    this.contentPadding,
    this.hintStyle,
    this.style,
  }) : super(key: key);

  final OutlineInputBorder activeBorderStyle = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.grey.shade400),
    borderRadius: BorderRadius.circular(15),
  );
  final OutlineInputBorder deActiveBorderStyle = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.grey.shade200),
    borderRadius: BorderRadius.circular(15),
  );
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(top: topPadding),
        child: TextFormField(
          maxLength: maxLength,
          obscureText: obscureText,
          readOnly: readOnly,
          enabled: enabled,
          controller: controller,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          autofillHints: autofillHints,
          inputFormatters: inputFormatters,
          validator: validator,
          onChanged: onChanged,
          maxLines: maxLines,
          onTap: onTap,
          decoration: InputDecoration(
            contentPadding: contentPadding ??
                const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            suffixIcon: suffixIcon,
            prefix: prefix,
            prefixIcon: prefixIcon,
            hintText: hint,
            labelText: label,
            filled: true,
            fillColor: Colors.white,
            focusedBorder: activeBorderStyle,
            enabledBorder: deActiveBorderStyle,
            focusedErrorBorder: activeBorderStyle,
            errorBorder: deActiveBorderStyle,
            disabledBorder: deActiveBorderStyle,
          ),
        ),
      );
}
