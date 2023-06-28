import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyle {
  static final TextStyle mainGreen = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: const Color.fromRGBO(10, 194, 183, 1),
  );
  static final TextStyle smallGreen = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: const Color.fromRGBO(10, 194, 183, 1),
  );

  static final TextStyle mainDark = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: const Color.fromRGBO(26, 26, 26, 1),
  );
  static final TextStyle buttonTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: const Color.fromRGBO(133, 141, 164, 1),
  );
  static final TextStyle mainGrey = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: const Color.fromRGBO(133, 141, 164, 1),
  );
  static final TextStyle smallGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: const Color.fromRGBO(133, 141, 164, 1),
  );
  static const green = Color.fromRGBO(10, 194, 183, 1);
  static const grey =  Color.fromRGBO(133, 141, 164, 1);
  
}
