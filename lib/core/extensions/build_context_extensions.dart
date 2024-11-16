import 'package:flutter/material.dart';

/// Extension added to [BuildContext] class
extension CustomSnackBarExtension on BuildContext {
  /// Returns the screen size using `MediaQuery.of(this).size`.
  ///
  /// Example:
  /// ```dart
  /// Size screenSize = context.mqSize;
  /// ```
  Size get mqSize => MediaQuery.of(this).size;

  void showCustomSnackBar({
    required String message,
    Color backgroundColor = Colors.black,
    Duration duration = const Duration(seconds: 4),
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        backgroundColor: backgroundColor,
        duration: duration,
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 4),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        dismissDirection: DismissDirection.down,
        showCloseIcon: true,
        closeIconColor: Colors.black,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
