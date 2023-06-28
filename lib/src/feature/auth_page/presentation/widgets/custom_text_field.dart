import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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