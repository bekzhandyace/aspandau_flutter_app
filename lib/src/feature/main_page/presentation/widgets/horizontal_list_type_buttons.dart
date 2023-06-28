
import 'package:aspandau_flutter_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'horizontal_list_custom_button.dart';

class HorizontalListTypeButtons extends StatelessWidget {
  const HorizontalListTypeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        primary: false,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HorizontalListCustomButton(
                title: Text(
                  'Все',
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(0, 227, 148, 1),
                      Color.fromRGBO(10, 194, 183, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(110),
                ),
                width: 60.w,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.white.withOpacity(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(110).w,
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              HorizontalListCustomButton(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                ),
                width: 230.w,
                style: AppButtonStyle.horizontListButtonStyle,
                title: Text(
                  'Master of Organization Administration',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              HorizontalListCustomButton(
                title: Text(
                  'Master of Business',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                ),
                width: 168.w,
                style: AppButtonStyle.horizontListButtonStyle,
              ),
              SizedBox(width: 15.w),
              HorizontalListCustomButton(
                title: Text(
                  'Master of Government Administration',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110),
                ),
                width: 280.w,
                style: AppButtonStyle.horizontListButtonStyle,
              ),
              SizedBox(height: 57),
            ],
          ),
        ],
      ),
    );
  }
}
