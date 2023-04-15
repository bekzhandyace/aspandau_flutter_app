import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 48,
      child: ElevatedButton(
        style: AppButtonStyle.linkButton,
        onPressed: () {},
        child: const Text(
          'Войти',
          style: AppTextStyle.buttonTextStyle,
        ),
      ),
    );
  }
}
