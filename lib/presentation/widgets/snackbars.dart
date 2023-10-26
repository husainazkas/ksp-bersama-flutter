import 'package:flutter/material.dart';

const Duration kSnackBarDuration = Duration(milliseconds: 1500);

class FailureSnackBar extends SnackBar {
  final String message;

  FailureSnackBar({
    super.key,
    required this.message,
    Duration? duration,
    super.width = 360.0,
  }) : super(
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          backgroundColor: Colors.red,
          duration: duration ?? kSnackBarDuration,
          behavior: SnackBarBehavior.floating,
        );
}

class InformationSnackBar extends SnackBar {
  final String message;
  InformationSnackBar({
    super.key,
    required this.message,
    Duration? duration,
    super.width = 360.0,
  }) : super(
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          duration: duration ?? kSnackBarDuration,
          behavior: SnackBarBehavior.floating,
        );
}

class SuccessSnackBar extends SnackBar {
  final String message;
  SuccessSnackBar({
    super.key,
    required this.message,
    Duration? duration,
    super.width = 360.0,
  }) : super(
          content: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          backgroundColor: Colors.green,
          duration: duration ?? kSnackBarDuration,
          behavior: SnackBarBehavior.floating,
        );
}
