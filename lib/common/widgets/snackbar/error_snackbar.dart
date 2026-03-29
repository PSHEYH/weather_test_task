
import 'package:flutter/material.dart';

class ErrorSnackBar {
  static void show({
    required BuildContext context,
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.red,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      content: Column(
        children: [
          Text('Error', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),),
          Text(
            message,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ],
      ),
      duration: duration,
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}