import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const TextStyle mainGreen = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Color.fromRGBO(10, 194, 183, 1),
  );
  static const TextStyle smallGreen = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(10, 194, 183, 1),
  );

  static const TextStyle mainDark = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Color.fromRGBO(26, 26, 26, 1),
  );
  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(133, 141, 164, 1),
  );
  static const TextStyle mainGrey = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(133, 141, 164, 1),
  );
  static const TextStyle smallGrey = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(133, 141, 164, 1),
  );
}
