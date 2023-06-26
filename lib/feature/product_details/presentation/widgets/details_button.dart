

import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'self_learning_service_button.dart';
import 'support_service_button.dart';

class DetailsButton extends StatefulWidget {
  const DetailsButton({super.key});

  @override
  State<DetailsButton> createState() => _DetailsButtonState();
}

class _DetailsButtonState extends State<DetailsButton> {
  bool isScrollControlled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SelfLearningServiceButton(),
        SizedBox(height: 6.h),
        Text(
          '* самостоятельное обучение',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
            color: AppTextStyle.grey,
          ),
        ),
        SizedBox(height: 18.h),
        const CuratorSupportServiceButton(),
        SizedBox(height: 6.h),
        Text(
          '* с поддержкой куратора',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
            color: AppTextStyle.grey,
          ),
        ),
      ],
    );
  }
}
