import 'package:aspandau_flutter_app/feature/product_details/product_details_screen.dart';
import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortProductListHorizontal extends StatelessWidget {
  const ShortProductListHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        primary: false,
        children: [
          Row(
            children: const [
              ServiceInfoContainerWithDiscount(),
              SizedBox(width: 12),
              ServiceInfoContainer(),
              SizedBox(width: 12),
              ServiceInfoContainerWithDiscount(),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceInfoContainerWithDiscount extends StatelessWidget {
  const ServiceInfoContainerWithDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(216, 221, 230, 1),
        ),
        borderRadius: BorderRadius.circular(16).w,
      ),
      width: 297.w,
      height: 392.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: AppColors.gradientGreen,
                      borderRadius: BorderRadius.circular(8).w,
                    ),
                    width: 58.w,
                    height: 33.h,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 2,
                      ),
                      child: Text(
                        '-35%',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 265.w,
                    height: 209.h,
                    child: Image.asset('assets/images/group.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Государственное правление и управление',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '168 000',
                      style: TextStyle(
                        color: const Color.fromRGBO(133, 141, 164, 1),
                        decoration: TextDecoration.lineThrough,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '135 000',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: AppTextStyle.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48.h,
                  width: 128.w,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: AppColors.gradientGreen,
                      borderRadius: BorderRadius.circular(12).w,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.transparent,
                        shadowColor: Colors.white.withOpacity(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12).w,
                          side: const BorderSide(
                            color: AppColors.transparent,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/main/productDetails');
                      },
                      child: const Text(
                        'Подробнее',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceInfoContainer extends StatelessWidget {
  const ServiceInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(216, 221, 230, 1),
        ),
        borderRadius: BorderRadius.circular(16).w,
      ),
      width: 297.w,
      height: 392.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
              ),
              child: Stack(
                children: [
                  SizedBox(
                    width: 265.w,
                    height: 209.h,
                    child: Image.asset('assets/images/group.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Государственное правление и управление',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: Text(
                        '135 000',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: AppTextStyle.green,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48.h,
                  width: 128.w,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: AppColors.gradientGreen,
                      borderRadius: BorderRadius.circular(12).w,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.transparent,
                        shadowColor: Colors.white.withOpacity(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12).w,
                          side: const BorderSide(
                            color: AppColors.transparent,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetails(),
                            ),
                            (Route<dynamic> route) => false);
                      },
                      child: const Text(
                        'Подробнее',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
