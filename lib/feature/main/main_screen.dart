import 'package:aspandau_flutter_app/feature/main/view/widgets/additional_info.dart';
import 'package:aspandau_flutter_app/feature/main/view/widgets/view.dart';
import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thickness: 3,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ).r,
              child: Column(
                children: [
                  Column(
                    children: [
                      const AppBarWidget(),
                      SizedBox(height: 15.h),
                      const HorizontalListTypeButtons(),
                      SizedBox(height: 16.h),
                      const ProductList(),
                      SizedBox(height: 57.h),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 205).r,
                            child: Text(
                              'Дополнительно',
                              style: TextStyle(
                                color: AppTextStyle.grey,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 18.h),
                          Row(
                            children: [
                              const AdditionalInfo(),
                              SizedBox(width: 13.w),
                              const AdditionalInfo(),
                            ],
                          ),
                          SizedBox(height: 18.h),
                          Row(
                            children: [
                              const AdditionalInfo(),
                              SizedBox(width: 13.w),
                              const AdditionalInfo(),
                            ],
                          ),
                          SizedBox(height: 18.h),
                          Row(
                            children: [
                              const AdditionalInfo(),
                              SizedBox(width: 13.w),
                              const AdditionalInfo(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
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
