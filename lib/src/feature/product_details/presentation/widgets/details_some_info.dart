
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_style.dart';

class DetailsSomeInfo extends StatelessWidget {
  const DetailsSomeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 400.w,
          height: 270.h,
          child: Image.asset('assets/images/group_two.png'),
        ),
        SizedBox(height: 22.h),
        Text(
          'Государственное правление и управление',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 17.h),
        Row(
          children: [
            Container(
              width: 98.w,
              height: 48.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12).w,
                color: AppColors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 8).r,
                child: Row(
                  children: [
                    const Icon(
                      Icons.alarm,
                      size: 18,
                    ),
                    const SizedBox(width: 7),
                    Text(
                      '300 ч',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: AppTextStyle.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 17.w),
            Container(
              width: 128.w,
              height: 48.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12).w,
                color: AppColors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 8).r,
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_box_outlined,
                      size: 18,
                    ),
                    const SizedBox(width: 7),
                    Text(
                      '10 курсов',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: AppTextStyle.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
