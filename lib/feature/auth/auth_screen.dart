import 'package:aspandau_flutter_app/feature/widgets/auth_icons.dart';
import 'package:aspandau_flutter_app/feature/widgets/auth_widgets.dart';
import 'package:aspandau_flutter_app/feature/widgets/register_or_forgot_password.dart';
import 'package:aspandau_flutter_app/feature/widgets/top_decoration.dart';
import 'package:aspandau_flutter_app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

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
                  children: const [
                    TextWelcome(),
                    SizedBox(height: 71),
                    AuthTextField(),
                    SizedBox(height: 12),
                    AuthButton(),
                    SizedBox(height: 12),
                    RegisterOrForgotPassword(),
                    SizedBox(height: 32),
                    TextGiveAuthSocialNetwork(),
                    SizedBox(height: 12),
                    AuthIcons(),
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
