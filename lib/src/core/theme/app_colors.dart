import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppColors {
  static final iconDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(12).w,
    color: const Color.fromRGBO(249, 250, 253, 1),
  );
  static final whiteBorderDecoration = BoxDecoration(
    borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12))
        .w,
    color: Colors.white,
  );
  static final greyBorderDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(12).w,
        topRight: const Radius.circular(12).w),
    color: const Color.fromRGBO(216, 221, 230, 1),
  );
  static final horizontalListAllStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(110).w,
    color: const Color.fromRGBO(10, 194, 183, 1),
    border: Border.all(
      color: const Color.fromRGBO(10, 194, 183, 1),
    ),
  );
  static final horizontalListStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(110).w,
    color: Colors.white,
    border: Border.all(color: Colors.grey),
  );
  static const greenButton = Color.fromRGBO(10, 194, 183, 1);
  static const transparent = Colors.transparent;
  static const gradientGreen = LinearGradient(
    colors: [
      Color.fromRGBO(0, 227, 148, 1),
      Color.fromRGBO(10, 194, 183, 1),
    ],
  );
  static const grey = const Color.fromRGBO(245, 249, 254, 1);
  static const showModalColor = Color.fromRGBO(105, 105, 105, 1);
}
