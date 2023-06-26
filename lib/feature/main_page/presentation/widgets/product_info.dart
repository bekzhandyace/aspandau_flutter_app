import 'package:aspandau_flutter_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../theme/app_text_style.dart';

class ProductInfo extends StatefulWidget {
  final Widget text;
  final Widget discount;
  ProductInfo({
    super.key,
    required this.text,
    required this.discount,
  });

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
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
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 24.h,
              ),
              child: Stack(
                children: [
                  widget.discount,
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
                    widget.text,
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
