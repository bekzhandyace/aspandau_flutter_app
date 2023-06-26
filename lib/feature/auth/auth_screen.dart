import 'dart:async';

import 'package:aspandau_flutter_app/feature/auth/bloc/repositories/auth_repositories.dart';
import 'package:aspandau_flutter_app/feature/auth/view/widgets/view_widgets.dart';
import 'package:aspandau_flutter_app/theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/bloc/auth_bloc.dart';

class AuthScreenWidget extends StatefulWidget {
  AuthScreenWidget({super.key});

  @override
  State<AuthScreenWidget> createState() => _AuthScreenWidgetState();
}

class _AuthScreenWidgetState extends State<AuthScreenWidget> {
  final authRepository = AuthRepository();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String? errorMessage;
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _startTimer() {
    setState(() {
      Timer(Duration(seconds: 2), () {
        _obscureText = true;
      });
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void _clearEmailField() {
    emailController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authRepository,
      child: BlocProvider(
        create: (context) => AuthBloc(
          repository: authRepository,
          email: emailController.text,
          password: passwordController.text,
          errorMessage: '',
        ),
        child: Scaffold(
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
                      BlocListener<AuthBloc, AuthState>(
                        listener: (context, state) {
                          if (state is AuthFailure) {
                            errorMessage = state.errorMessage;
                          }
                        },
                        child: BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            if (state is AuthSuccess) {
                              Navigator.pushReplacementNamed(
                                  context, '/auth/main');
                              print('succes');
                            } else if (state is AuthFailure) {
                              errorMessage = state.errorMessage;
                            }

                            return Column(
                              children: [
                                TextFormField(
                                  controller: emailController,
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    errorText: errorMessage,
                                    labelText: 'Введите Ваш E-mail',
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        _clearEmailField();
                                      },
                                      icon: const Icon(Icons.edit_outlined),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12).w,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                TextFormField(
                                  controller: passwordController,
                                  obscureText: _obscureText,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                    errorText: errorMessage,
                                    labelText: 'Пароль',
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        if (_obscureText) {
                                          _toggleVisibility();
                                          _startTimer();
                                        } else {
                                          _toggleVisibility();
                                        }
                                      },
                                      icon: Icon(_obscureText
                                          ? Icons.visibility
                                          : Icons.visibility_off),
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
                                      context.read<AuthBloc>().add(
                                            SendDataEvent(
                                              email: emailController.text,
                                              password: passwordController.text,
                                            ),
                                          );
                                    },
                                    child: Text(
                                      'Войти',
                                      style: AppTextStyle.buttonTextStyle,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
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
      ),
    );
  }
}

