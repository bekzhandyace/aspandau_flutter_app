
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/core/theme/app_button_style.dart';
import '../../../../core/theme/app_text_style.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({super.key});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _obscureText = true;

  void _toggleVisibility() {
    _obscureText = !_obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Введите Ваш E-mail',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit_outlined),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12).w,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              TextFormField(
                obscureText: _obscureText,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'Пароль',
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (_obscureText) {
                          _toggleVisibility();
                         
                        } else {
                          _toggleVisibility();
                        }
                      },
                      icon: Icon(
                        _obscureText
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12).w,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please eneter some text';
                  } else if (value.length < 1) {
                    return "Password must be at least 1 characters";
                  } else if (!value
                      .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                    return 'Password must contain at least one special character';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.h),
              SizedBox(
                width: 350.w,
                height: 48.h,
                child: ElevatedButton(
                  style: AppButtonStyle.linkButton,
                  onPressed: () {},
                  child: Text(
                    'Войти',
                    style: AppTextStyle.buttonTextStyle,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
