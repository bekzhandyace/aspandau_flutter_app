import 'package:aspandau_flutter_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Магазин',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          width: 91.w,
          height: 32.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8).w,
            color: AppColors.grey,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 16.h,
                width: 16.w,
                child: Image.asset('assets/images/price_image.png'),
              ),
               SizedBox(width: 4.w),
              Text(
                '10025',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
