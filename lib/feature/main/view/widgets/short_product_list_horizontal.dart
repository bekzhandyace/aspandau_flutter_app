import 'package:aspandau_flutter_app/core/api/dio_client.dart';
import 'package:aspandau_flutter_app/feature/main/view/widgets/product_info.dart';
import 'package:aspandau_flutter_app/feature/product_details/product_details_screen.dart';
import 'package:aspandau_flutter_app/repositories/products/models/product.dart';
import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortProductListHorizontal extends StatefulWidget {
  const ShortProductListHorizontal({super.key});

  @override
  State<ShortProductListHorizontal> createState() =>
      _ShortProductListHorizontalState();
}

class _ShortProductListHorizontalState
    extends State<ShortProductListHorizontal> {
  final _scrollController = ScrollController();
  final dio = Dio();
  final List<ProductModul> modules = [];
  final api = 'https://lmsyoko.store/api/v1/';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: Container(
        height: 400.h,
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          thickness: 4,
          child: ListView(
            controller: _scrollController,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            scrollDirection: Axis.horizontal,
            primary: false,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ProductInfo(
                        text: Text(
                          '168 000',
                          style: TextStyle(
                            color: const Color.fromRGBO(133, 141, 164, 1),
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        discount: Container(
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
                      ),
                      SizedBox(width: 12),
                      ProductInfo(text: Text(''), discount: Text('')),
                      SizedBox(width: 12),
                      ProductInfo(
                        text: Text(
                          '168 000',
                          style: TextStyle(
                            color: const Color.fromRGBO(133, 141, 164, 1),
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        discount: Container(
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
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

