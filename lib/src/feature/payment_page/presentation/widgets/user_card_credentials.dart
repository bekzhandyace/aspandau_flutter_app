import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_expiration_input_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/theme.dart';

class UserCardCredentials extends StatefulWidget {
  const UserCardCredentials({super.key});

  @override
  State<UserCardCredentials> createState() => _UserCardCredentialsState();
}

class _UserCardCredentialsState extends State<UserCardCredentials> {
  final _expiryDateController = TextEditingController();
  final _expiryDateFocusNode = FocusNode();
  final _cvvFocusNode = FocusNode();
  final _cvvController = TextEditingController();
  final _userFocusNode = FocusNode();

  bool _obscureText = true;

  void _showPassowrd() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _obscureText = true;
      });
    });
    return Row(
      children: [
        Container(
          width: 156.w,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12).w,
          ),
          child: TextFormField(
            controller: _expiryDateController,
            onChanged: (text) {
              if (text.length == 5) {
                _cvvFocusNode.requestFocus();
              }
            },
            focusNode: _expiryDateFocusNode,
            keyboardType: TextInputType.datetime,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(4),
              CreditCardExpirationDateFormatter(),
            ],
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(12).w,
              fillColor: AppColors.grey,
              filled: true,
              labelText: 'Дата истечения',
              labelStyle: AppTextField.grey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        SizedBox(width: 15.w),
        Container(
          width: 156.w,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12).w,
          ),
          child: GestureDetector(
            onTap: () => _showPassowrd,
            child: TextFormField(
              controller: _cvvController,
              obscureText: _obscureText,
              onChanged: (text) {
                if (text.length == 3) {
                  _userFocusNode.requestFocus();
                }
              },
              focusNode: _cvvFocusNode,
              keyboardType: TextInputType.datetime,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(3),
              ],
              maxLines: 1,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12).w,
                fillColor: AppColors.grey,
                filled: true,
                labelText: 'СVV',
                labelStyle: AppTextField.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
