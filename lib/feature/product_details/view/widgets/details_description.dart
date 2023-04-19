import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsDescription extends StatelessWidget {
  const DetailsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Описание',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'Совершенно новый подход к управлению организацией, позволяющий выйти на мировой рынок и повысить конкурентоспособность.',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
