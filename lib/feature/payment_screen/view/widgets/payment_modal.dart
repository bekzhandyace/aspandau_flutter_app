import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentModal extends StatefulWidget {
  const PaymentModal({super.key});

  @override
  State<PaymentModal> createState() => _PaymentModalState();
}

class _PaymentModalState extends State<PaymentModal> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final onChanged = (text) {
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
    };
    bool _showPassword = true;

    void _togglePasswordVisibility() {
      setState(() {
        _showPassword = !_showPassword;
      });
      Timer(Duration(seconds: 1), () {
        setState(() {
          _showPassword = false;
        });
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        Text(
          'Добавление карты',
          style: TextStyle(
            color: AppColors.greenButton,
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 24.h),
        SizedBox(
          height: 48.h,
          width: 400.w,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grey,
              ),
              borderRadius: BorderRadius.circular(12).w,
            ),
            child: TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(16),
                CreditCardNumberInputFormatter(),
              ],
              decoration: InputDecoration(
                counterText: '',
                fillColor: AppColors.grey,
                filled: true,
                labelText: 'Номер карточки',
                labelStyle: AppTextField.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 15.h),
        Row(
          children: [
            Container(
              width: 156.w,
              height: 48.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12).w,
              ),
              child: TextFormField(
                controller: _controller,
                onChanged: onChanged,
                keyboardType: TextInputType.datetime,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                  CreditCardExpirationDateFormatter(),
                ],
                decoration: InputDecoration(
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
              child: TextFormField(
                obscureText: !_showPassword,
                keyboardType: TextInputType.datetime,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(3),
                ],
                maxLines: 1,
                decoration: InputDecoration(
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
          ],
        ),
        SizedBox(height: 15.h),
        Container(
          width: 327.w,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12).w,
          ),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              fillColor: AppColors.grey,
              filled: true,
              labelText: 'Имя на карточке',
              labelStyle: AppTextField.grey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
