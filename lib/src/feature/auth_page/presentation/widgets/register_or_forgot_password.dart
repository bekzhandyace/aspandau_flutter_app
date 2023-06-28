
import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_style.dart';

class RegisterOrForgotPassword extends StatelessWidget {
  const RegisterOrForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(
          'Регистрация',
          style: AppTextStyle.smallGreen,
        ),
        Text(
          'Забыли пароль?',
          style: AppTextStyle.smallGrey,
        ),
      ],
    );
  }
}
