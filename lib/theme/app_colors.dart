import 'package:flutter/material.dart';

abstract class AppColors {
  static final iconDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: const Color.fromRGBO(249, 250, 253, 1),
  );
  static const whiteBorderDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12), topRight: Radius.circular(12)),
    color: Colors.white,
  );
  static const greyBorderDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12), topRight: Radius.circular(12)),
    color: Color.fromRGBO(216, 221, 230, 1),
  );
}
