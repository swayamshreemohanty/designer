// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class ThemeTypeAheadFormField<T> extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final void Function(String)? onChanged;
  final String label;
  final int? maxLines;
  final bool enabled;
  final void Function()? onTap;
  final Widget Function(BuildContext context, T? snapshot) itemBuilder;
  final void Function(T? selecteditem) onSuggestionSelected;
  final FutureOr<Iterable<T>> Function(String query) suggestionsCallback;
  final Widget Function(BuildContext context)? noItemsFoundBuilder;
  final T? value;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;

  ThemeTypeAheadFormField({
    Key? key,
    required this.controller,
    this.keyboardType,
    this.textInputAction,
    this.autofillHints,
    this.validator,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    required this.label,
    this.maxLines = 1,
    this.enabled = true,
    this.onTap,
    required this.itemBuilder,
    required this.onSuggestionSelected,
    required this.suggestionsCallback,
    this.noItemsFoundBuilder,
    this.value,
    this.suffixIcon,
    this.prefixIcon,
    this.hintStyle,
    this.style,
    this.contentPadding,
  }) : super(key: key);

  final OutlineInputBorder activeBorderStyle = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Color(0xffCECECE),
      width: 1.2,
    ),
    borderRadius: BorderRadius.circular(6),
  );
  final OutlineInputBorder deActiveBorderStyle = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.grey.shade400),
    borderRadius: BorderRadius.circular(6),
  );

  @override
  Widget build(BuildContext context) => TypeAheadFormField<T>(
        itemBuilder: itemBuilder,
        autoFlipDirection: true,
        onSuggestionSelected: onSuggestionSelected,
        suggestionsCallback: suggestionsCallback,
        noItemsFoundBuilder: noItemsFoundBuilder,
        textFieldConfiguration: TextFieldConfiguration(
          enabled: enabled,
          controller: controller,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          inputFormatters: inputFormatters,
          onChanged: onChanged,
          maxLines: maxLines,
          onTap: onTap,
          style: style,
          decoration: InputDecoration(
            contentPadding: contentPadding,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: label,
            hintStyle: hintStyle,
            filled: true,
            fillColor: Colors.white,
            focusedBorder: activeBorderStyle,
            enabledBorder: deActiveBorderStyle,
            focusedErrorBorder: activeBorderStyle,
            errorBorder: deActiveBorderStyle,
            disabledBorder: deActiveBorderStyle,
          ),
        ),
        validator: validator,
      );
}
