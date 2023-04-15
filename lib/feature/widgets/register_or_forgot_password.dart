import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';

class RegisterOrForgotPassword extends StatelessWidget {
  const RegisterOrForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
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
