import 'package:aspandau_flutter_app/feature/main/main_screen.dart';
import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      height: 48.h,
      child: ElevatedButton(
        style: AppButtonStyle.linkButton,
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const MainScreen(),
              ),
              (Route<dynamic> route) => false);
        },
        child: Text(
          'Войти',
          style: AppTextStyle.buttonTextStyle,
        ),
      ),
    );
  }
}
