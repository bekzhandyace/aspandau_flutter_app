import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            color: AppColors.greenButton,
            onPressed: () {
              Navigator.of(context).pop(context);
            },
            icon: Padding(
              padding: const EdgeInsets.only(
                left: 2,
                bottom: 20,
                top: 0,
              ).r,
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        SizedBox(width: 17.w),
        Text(
          'Модуль Государственное прав...',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
