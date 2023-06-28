
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/core/api/dio_client.dart';
import '../../../../../app/core/theme/app_button_style.dart';
import '../../../../../app/feature/auth_page/bloc/bloc/auth_bloc.dart';
import '../../../../../app/feature/auth_page/bloc/repositories/auth_repositories.dart';
import '../../../../core/theme/app_text_style.dart';
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
  final dio = DioClient();
  final _authRepository = AuthRepository();
  final _emailController = TextEditingController(text: 'admin@admin.kz');
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

  void _login(BuildContext context) {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      BlocProvider.of<AuthBloc>(context).add(
        SendDataEvent(email: email, password: password),
      );
    }
  }

  void _naviagateToMainPage(BuildContext context) {
    Navigator.pushNamed(context, '/auth/main');
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authRepository,
      child: BlocProvider(
        create: (context) => AuthBloc(
          repository: _authRepository,
        ),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthSuccess) {
              _naviagateToMainPage(context);
              print('succes');
            }
            if (state is AuthFailure) {
              errorMessage = state.errorMessage;
            }
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
                                errorText: errorMessage,
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
                                    _login(context);
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
          },
        ),
      ),
    );
  }
}

class EmailTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? errorText;
  const EmailTextField({
    super.key,
    required this.controller,
    required this.errorText,
  });

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
        errorText: widget.errorText,
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
