import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreDetailsButton extends StatelessWidget {
  const MoreDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(right: 248),
          child: Text(
            'Подробнее',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
