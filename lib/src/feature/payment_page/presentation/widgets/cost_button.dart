import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/theme.dart';
import '../../bloc/card_form_bloc.dart';

class CostButton extends StatefulWidget {
  const CostButton({super.key});

  @override
  State<CostButton> createState() => _CostButtonState();
}

class _CostButtonState extends State<CostButton> {
  final _userNameController = TextEditingController(text: 'ADMIN ADMIN');
  final _cardNumberController =
      TextEditingController(text: '4307 3566 6712 9732');
  final _expiryDateController = TextEditingController(text: '11/22');
  final _cvvController = TextEditingController(text: '437');

  @override
  void dispose() {
    _userNameController.dispose();
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        SizedBox(
          height: 48.h,
          width: 400.w,
          child: Container(
            decoration: BoxDecoration(
              gradient: AppColors.gradientGreen,
              borderRadius: BorderRadius.circular(12).w,
              border: Border.all(color: AppColors.greenButton),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.white.withOpacity(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12).w,
                  side: const BorderSide(
                    color: AppColors.transparent,
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  context.read<CardFormBloc>().add(CardFormAddCard(
                      cardNumber: _cardNumberController.text,
                      cardExpiryDate: _expiryDateController.text,
                      cardCvv: _cvvController.text,
                      cardHolderName: _userNameController.text));
                  if (_cardNumberController.text != _cardNumberController) {
                    print('Number Card Falilure');
                  }
                });
              },
              child: Text(
                'Купить за  135 000 ₸',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greenButton,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          '* самостоятельное обучение',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
            color: AppTextStyle.grey,
          ),
        ),
        SizedBox(height: 18.h),
        SizedBox(
          height: 48.h,
          width: 400.w,
          child: Container(
            decoration: BoxDecoration(
              gradient: AppColors.gradientGreen,
              borderRadius: BorderRadius.circular(12).w,
              border: Border.all(color: AppColors.greenButton),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.transparent,
                shadowColor: Colors.white.withOpacity(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12).w,
                  side: const BorderSide(
                    color: AppColors.transparent,
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Купить за  135 000 ₸',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          '* с поддержкой куратора',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
            color: AppTextStyle.grey,
          ),
        ),
      ],
    );
  }
}
