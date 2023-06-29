import 'package:aspandau_flutter_app/src/feature/main_page/presentation/page/main_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/api/dio_client.dart';
import '../../../../core/theme/app_text_style.dart';
import '../../../../core/theme/theme.dart';
import '../../bloc/bloc/auth_bloc.dart';
import '../../bloc/repositories/auth_repositories.dart';
import '../widgets/auth_text.dart';
import '../widgets/custom_text_field.dart';
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
      try {
        BlocProvider.of<AuthBloc>(context).add(
          SendDataEvent(email: email, password: password),
        );
      } catch (error) {
        setState(() {
          errorMessage = error.toString();
        });
      }
    }
  }

  void _naviagateToMainPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MainScreen(),
      ),
    );
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
        child: BlocProvider(
          create: (context) => AuthBloc(repository: _authRepository),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state is AuthSuccess) {
                _naviagateToMainPage(context);
                print('succes');
              }
              if (state is AuthFailure) {
                errorMessage:
                state.errorMessage;
              }
              return Column(
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
              );
            },
          ),
        ),
      ),
    );
  }
}
