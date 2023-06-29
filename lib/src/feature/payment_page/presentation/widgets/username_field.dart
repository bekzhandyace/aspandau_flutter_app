import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/theme.dart';

class UsernameField extends StatelessWidget {
  const UsernameField({super.key});

  @override
  Widget build(BuildContext context) {
    final _userNameController = TextEditingController(text: 'ADMIN ADMIN');
    final _userFocusNode = FocusNode();
    return Container(
      width: 327.w,
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12).w,
      ),
      child: TextFormField(
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp('[A-Z ]')),
          FilteringTextInputFormatter.deny(RegExp('[ +]{2,}')),
        ],
        textCapitalization: TextCapitalization.characters,
        controller: _userNameController,
        focusNode: _userFocusNode,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(12).w,
          fillColor: AppColors.grey,
          filled: true,
          labelText: 'Имя на карточке',
          labelStyle: AppTextField.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
