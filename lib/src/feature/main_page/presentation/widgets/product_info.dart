import 'package:aspandau_flutter_app/src/feature/product_details/presentation/page/service_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/theme.dart';

class ProductInfo extends StatefulWidget {
  final dynamic product;

  ProductInfo({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    final avatarUrl = widget.product['avatar'];
    final kind = widget.product['kind'] ?? '';

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
                  SizedBox(
                    width: 265.w,
                    height: 209.h,
                    child: avatarUrl != null && avatarUrl.isNotEmpty
                        ? Image.network(avatarUrl)
                        : Center(
                            child: Text('No Image'),
                          ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: AppColors.gradientGreen,
                      borderRadius: BorderRadius.circular(8).w,
                    ),
                    width: 58.w,
                    height: 33.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 6.h,
                        horizontal: 2.w,
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
                      '135.000',
                      style: TextStyle(
                        color: const Color.fromRGBO(133, 141, 164, 1),
                        decoration: TextDecoration.lineThrough,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      kind,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(),
                          ),
                        );
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
