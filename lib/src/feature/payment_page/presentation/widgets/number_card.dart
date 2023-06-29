import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/theme.dart';

class NumberCard extends StatefulWidget {
  NumberCard({super.key});

  @override
  State<NumberCard> createState() => _NumberCardState();
}

class _NumberCardState extends State<NumberCard> {
  final _cardNumberController =
      TextEditingController(text: '4307 3566 6712 9732');

  final _expiryDateFocusNode = FocusNode();

  final _cardNumberFocusNode = FocusNode();

  @override
  void dispose() {
    _cardNumberController.dispose();
    _cardNumberFocusNode.dispose();
    _expiryDateFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          autofocus: true,
          controller: _cardNumberController,
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
            contentPadding: const EdgeInsets.all(12).w,
            labelStyle: AppTextField.grey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onChanged: (text) {
            if (text.length == 19) {
              _expiryDateFocusNode.requestFocus();
            }
          },
          focusNode: _cardNumberFocusNode,
        ),
      ),
    );
  }
}
