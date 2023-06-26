import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../theme/app_button_style.dart';
import '../../../../theme/app_text_style.dart';

import '../../bloc/repositories/auth_repositories.dart';
import '../widgets/auth_text.dart';
import '../widgets/register_or_forgot_password.dart';
import '../widgets/select_auth_icons.dart';
import '../widgets/top_decoration.dart';

class AuthScreenPage extends StatefulWidget {
  AuthScreenPage({Key? key}) : super(key: key);

  @override
  State<AuthScreenPage> createState() => _AuthScreenPageState();
}

class _AuthScreenPageState extends State<AuthScreenPage> {
  final _authRepository = AuthRepository();
  final _emailController = TextEditingController(text: 'admin@amin.kz');
  final _passwordController = TextEditingController(text: '1');

  String? errorMessage;

  bool _obscureText = false;

  void _toggleVisibility() {
    _obscureText = !_obscureText;
  }

  Future<void> _startTimer() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      setState(() {
        _obscureText = true;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopDecorations(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const TextWelcome(),
                  SizedBox(height: 71.h),
                  Column(
                    children: [
                      EmailTextField(
                        controller: _emailController,
                      ),
                      SizedBox(height: 12.h),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscureText,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          errorText: errorMessage,
                          labelText: 'Пароль',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (_obscureText) {
                                  _toggleVisibility();
                                  _startTimer();
                                } else {
                                  _toggleVisibility();
                                }
                              });
                            },
                            icon: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12).w,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      SizedBox(
                        width: 350.w,
                        height: 48.h,
                        child: ElevatedButton(
                          style: AppButtonStyle.linkButton,
                          onPressed: () {
                            Navigator.pushNamed(context, '/auth/main');
                          },
                          child: Text(
                            'Войти',
                            style: AppTextStyle.buttonTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  const RegisterOrForgotPassword(),
                  SizedBox(height: 32.h),
                  const AuthWithSocialNetwork(),
                  SizedBox(height: 12.h),
                  const SelectAuth(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmailTextField extends StatefulWidget {
  final TextEditingController controller;
  const EmailTextField({super.key, required this.controller});

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        // errorText: '',
        labelText: 'Введите Ваш E-mail',
        suffixIcon: IconButton(
          onPressed: () {
            widget.controller.clear();
          },
          icon: const Icon(Icons.edit_outlined),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12).w,
        ),
      ),
    );
  }
}
