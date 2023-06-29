import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12).w,
      ),
    ),
    backgroundColor: const MaterialStatePropertyAll<Color>(
      Color.fromRGBO(245, 249, 254, 1),
    ),
  );
  static const distancesButton = SizedBox(height: 12);
  static final horizontalListButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    shadowColor: Colors.white.withOpacity(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(110).w,
      side: const BorderSide(
        color: const Color.fromRGBO(216, 221, 230, 1),
      ),
    ),
  );
  static const greyButton = const Color.fromRGBO(249, 250, 253, 1);
}
