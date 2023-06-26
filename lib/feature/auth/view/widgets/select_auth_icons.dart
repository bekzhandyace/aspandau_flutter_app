import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectAuth extends StatelessWidget {
  const SelectAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        IconGoogle(),
        SizedBox(width: 12),
        IconFacebook(),
      ],
    );
  }
}

class IconGoogle extends StatelessWidget {
  const IconGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 48.w,
      decoration: AppColors.iconDecoration,
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/icon_google.png',
        ),
      ),
    );
  }
}

class IconFacebook extends StatelessWidget {
  const IconFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: AppColors.iconDecoration,
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/icon_facebook.png',
        ),
      ),
    );
  }
}
