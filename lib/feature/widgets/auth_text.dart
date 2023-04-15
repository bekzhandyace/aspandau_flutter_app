import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';

class TextWelcome extends StatelessWidget {
  const TextWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Добро пожаловать,',
          style: AppTextStyle.mainDark,
        ),
        Text(
          'Авторизуйтесь',
          style: AppTextStyle.mainGreen,
        ),
      ],
    );
  }
}

class TextGiveAuthSocialNetwork extends StatelessWidget {
  const TextGiveAuthSocialNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 136),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Или авторизуйтесь, через',
            style: AppTextStyle.mainGrey,
          ),
          Text(
            'социаьные сети:',
            style: AppTextStyle.mainGrey,
          ),
        ],
      ),
    );
  }
}
