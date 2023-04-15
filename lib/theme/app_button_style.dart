import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    backgroundColor: const MaterialStatePropertyAll<Color>(
      Color.fromRGBO(245, 249, 254, 1),
    ),
  );
  static const dicstnceButton = SizedBox(height: 12);
}
