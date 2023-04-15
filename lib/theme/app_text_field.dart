import 'package:flutter/material.dart';

abstract class AppTextField {
  static final textFieldEmail = InputDecoration(
    labelText: 'Введите Ваш E-mail',
    suffixIcon: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.edit_outlined),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );
  static final textFieldPassword = InputDecoration(
    labelText: 'Пароль',
    suffixIcon: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.remove_red_eye_outlined),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
