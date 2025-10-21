import 'package:flutter/material.dart';

class AppSnackBar {
  static void errorSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.red,
      content: Text(message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
