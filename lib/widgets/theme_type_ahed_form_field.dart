// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class ThemeTypeAheadFormField<T> extends StatefulWidget {
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
  final double? borderRadius;
  final OutlineInputBorder? activeBorderStyle;
  final OutlineInputBorder? deActiveBorderStyle;
  final AxisDirection direction;

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
    this.hintStyle,
    this.style,
    this.prefixIcon,
    this.contentPadding,
    this.borderRadius,
    this.activeBorderStyle,
    this.deActiveBorderStyle,
    this.direction = AxisDirection.down,
  }) : super(key: key);

  @override
  State<ThemeTypeAheadFormField<T>> createState() =>
      _ThemeTypeAheadFormFieldState<T>();
}

class _ThemeTypeAheadFormFieldState<T>
    extends State<ThemeTypeAheadFormField<T>> {
  late OutlineInputBorder activeBorderStyle;
  late OutlineInputBorder deActiveBorderStyle;
  @override
  void initState() {
    super.initState();

    activeBorderStyle = widget.activeBorderStyle ??
        OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
        );

    deActiveBorderStyle = widget.deActiveBorderStyle ??
        OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
        );
  }

  @override
  Widget build(BuildContext context) => TypeAheadFormField<T>(
        direction: widget.direction,
        itemBuilder: widget.itemBuilder,
        autoFlipDirection: true,
        onSuggestionSelected: widget.onSuggestionSelected,
        suggestionsCallback: widget.suggestionsCallback,
        noItemsFoundBuilder: widget.noItemsFoundBuilder,
        textFieldConfiguration: TextFieldConfiguration(
          enabled: widget.enabled,
          controller: widget.controller,
          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization,
          inputFormatters: widget.inputFormatters,
          onChanged: widget.onChanged,
          maxLines: widget.maxLines,
          onTap: widget.onTap,
          style: widget.style,
          decoration: InputDecoration(
            contentPadding: widget.contentPadding,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            hintText: widget.label,
            hintStyle: widget.hintStyle,
            filled: true,
            fillColor: Colors.white,
            focusedBorder: activeBorderStyle,
            enabledBorder: deActiveBorderStyle,
            focusedErrorBorder: activeBorderStyle,
            errorBorder: deActiveBorderStyle,
            disabledBorder: deActiveBorderStyle,
          ),
        ),
        validator: widget.validator,
      );
}
