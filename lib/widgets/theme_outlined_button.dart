import 'package:designer/widgets/theme_spinner.dart';
import 'package:flutter/material.dart';

class ThemeOutlinedButton extends StatelessWidget {
  final String buttonName;
  final bool showLoadingSpinner;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final double textFontSize;
  final double loadingSpinnerSize;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? height;
  final double? width;
  final double? borderRadius;
  const ThemeOutlinedButton({
    Key? key,
    this.showLoadingSpinner = false,
    required this.buttonName,
    this.onPressed,
    this.textFontSize = 15,
    this.loadingSpinnerSize = 30,
    this.padding,
    this.backgroundColor,
    this.foregroundColor,
    this.height,
    this.width,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: height ?? 50,
        width: width ?? double.infinity,
        child: OutlinedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 5),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            foregroundColor: MaterialStateProperty.all(foregroundColor),
          ),
          onPressed: () {
            if (onPressed != null && !showLoadingSpinner) {
              onPressed!.call();
            }
          },
          child: Padding(
            padding: padding ??
                const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 12,
                ),
            child: showLoadingSpinner
                ? ThemeSpinner(
                    color: foregroundColor ?? Colors.black,
                    size: loadingSpinnerSize,
                  )
                : Text(
                    buttonName,
                    style: TextStyle(
                      color: foregroundColor ?? Colors.black,
                      fontSize: textFontSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
          ),
        ),
      );
}
