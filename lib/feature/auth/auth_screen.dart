import 'package:aspandau_flutter_app/feature/auth/view/widgets/view_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreenWidget extends StatelessWidget {
  const AuthScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const TopDecorations(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const TextWelcome(),
                    SizedBox(height: 71.h),
                    const AuthTextField(),
                    SizedBox(height: 12.h),
                    const AuthButton(),
                    SizedBox(height: 12.h),
                    const RegisterOrForgotPassword(),
                    SizedBox(height: 32.h),
                    const TextGiveAuthSocialNetwork(),
                    SizedBox(height: 12.h),
                    const AuthIcons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
