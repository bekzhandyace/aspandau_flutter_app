


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/feature/main_page/presentation/widgets/product_list.dart';
import '../../../../core/theme/theme.dart';
import '../widgets/additional_info.dart';
import '../widgets/app_bar.dart';
import '../widgets/horizontal_list_type_buttons.dart';


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
