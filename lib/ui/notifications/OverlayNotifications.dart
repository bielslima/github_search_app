import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

class OverlayNotifications {
  static Duration _durationDefault = Duration(seconds: 5);

  static void _showNotification(
    String message, {
    bool error = false,
    required Color backgroundColor,
    required Duration duration,
    bool autoDismiss = true,
  }) {
    showSimpleNotification(
      Text(message),
      background: error ? Colors.red : backgroundColor,
      leading: error ? Icon(Icons.info_outline) : null,
      duration: duration,
      autoDismiss: autoDismiss,
    );
  }

  static void showToastError(String message, {Duration? duration}) {
    _showNotification(message,
        error: true,
        duration: duration ?? _durationDefault,
        backgroundColor: Colors.red);
  }

  static void showToastAlert(String message, {Duration? duration}) {
    _showNotification(message,
        error: true,
        duration: duration ?? _durationDefault,
        backgroundColor: Colors.amber);
  }

  static void showToastSuccess(String message, {Duration? duration}) {
    _showNotification(message,
        error: true,
        duration: duration ?? _durationDefault,
        backgroundColor: Colors.green);
  }
}
