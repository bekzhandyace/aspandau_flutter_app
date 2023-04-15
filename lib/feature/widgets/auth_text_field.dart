import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          decoration: AppTextField.textFieldEmail,
        ),
        const SizedBox(height: 12),
        TextField(
          obscureText: true,
          keyboardType: TextInputType.text,
          decoration: AppTextField.textFieldPassword,
        ),
      ],
    );
  }
}
