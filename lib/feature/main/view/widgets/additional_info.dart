import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      height: 176.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: AppTextStyle.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 104, bottom: 5),
              child: Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: AppColors.gradientGreen,
                ),
                child: SizedBox(
                  child: Image.asset('assets/images/product.png'),
                ),
              ),
            ),
            Text(
              'Название товара макс в 2 строки',
              textAlign: TextAlign.start,
              maxLines: 2,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  SizedBox(
                    height: 16.h,
                    width: 16.w,
                    child: Image.asset('assets/images/price_image.png'),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    '1250',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 40.w),
                  Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: AppColors.grey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: IconButton(
                        color: AppColors.greenButton,
                        onPressed: () {},
                        splashRadius: 32,
                        icon: Padding(
                          padding: const EdgeInsets.only().r,
                          child: const Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
