// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:designer/widgets/theme_elevated_button.dart';
import 'package:flutter/material.dart';

class ViewErrorScreen extends StatelessWidget {
  final String error;
  final void Function()? onRetry;
  const ViewErrorScreen({
    Key? key,
    required this.error,
    this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                error,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Visibility(
                visible: onRetry != null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ThemeElevatedButton(
                    buttonName: "Retry",
                    textFontSize: 12,
                    height: 40,
                    width: 100,
                    onPressed: onRetry,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
