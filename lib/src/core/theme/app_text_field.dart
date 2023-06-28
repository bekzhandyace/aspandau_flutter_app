
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextField {
  static final textFieldEmail = InputDecoration(
  
    labelText: 'Введите Ваш E-mail',
    suffixIcon: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.edit_outlined),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12).w,
    ),
  );
  static final textFieldPassword = InputDecoration(
    labelText: 'Пароль',
    suffixIcon: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.remove_red_eye_outlined),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12).w,
    ),
  );
  static const grey = TextStyle(
    color: Color.fromRGBO(133, 141, 164, 1),
  );
}
