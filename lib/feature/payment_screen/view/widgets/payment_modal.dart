import 'package:aspandau_flutter_app/feature/payment_screen/bloc/card_form_bloc.dart';
import 'package:aspandau_flutter_app/feature/payment_screen/bloc/card_repositories.dart';

import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentModal extends StatefulWidget {
  const PaymentModal({super.key});

  @override
  State<PaymentModal> createState() => _PaymentModalState();
}

class _PaymentModalState extends State<PaymentModal> {
  final cardRepositories = CardRepositories();

  final _userNameController = TextEditingController(text: 'ADMIN ADMIN');
  final _cardNumberController =
      TextEditingController(text: '4307 3566 6712 9732');
  final _expiryDateController = TextEditingController(text: '11/22');
  final _cvvController = TextEditingController(text: '437');

  final _cardNumberFocusNode = FocusNode();
  final _expiryDateFocusNode = FocusNode();
  final _cvvFocusNode = FocusNode();
  final _userFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();

  final String errorMessage = 'Incorrect data, please check';
  final String succesMessage = 'Сongratulations! The operation is completed';

  @override
  void dispose() {
    _userNameController.dispose();
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvController.dispose();

    _expiryDateController.dispose();
    _cardNumberFocusNode.dispose();
    _expiryDateFocusNode.dispose();
    _cvvFocusNode.dispose();
    _userFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;

    void _showPassowrd() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _obscureText = true;
      });
    });

    return SingleChildScrollView(
      child: BlocProvider(
        create: (context) => CardFormBloc(
          cardCvv: '',
          cardExpiryDate: '',
          cardHolderName: '',
          cardNumber: '',
          cardRepositories: cardRepositories,
        ),
        child: BlocBuilder<CardFormBloc, CardFormState>(
          builder: (context, state) {
            if (state is CardFormSuccess) {
              CircularProgressIndicator();
            }
            if (state is CardFormFailrure) {
              errorMessage:
              state.errorMessage;
            } else if (state is CardFormInLoading) {
              return Center(
                  child: FutureBuilder(
                      future: Future.delayed(Duration(seconds: 3)),
                      builder: (BuildContext context, AsyncSnapsnapshot) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }));
            }
            return Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  if (context.select((CardFormBloc bloc) => bloc.state)
                      is CardFormFailrure)
                    Text(
                      '$errorMessage',
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 33, 19),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  if (context.select((CardFormBloc bloc) => bloc.state)
                      is CardFormSuccess)
                    Text(
                      '$succesMessage',
                      style: TextStyle(
                          color: Color.fromARGB(255, 133, 157, 134),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  SizedBox(height: 5.h),
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
                          onTap: _showPassowrd,
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
                  ),
                  SizedBox(height: 15.h),
                  Container(
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
                  ),
                  Column(
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
                                context.read<CardFormBloc>().add(
                                    CardFormAddCard(
                                        cardNumber: _cardNumberController.text,
                                        cardExpiryDate:
                                            _expiryDateController.text,
                                        cardCvv: _cvvController.text,
                                        cardHolderName:
                                            _userNameController.text));
                                if (_cardNumberController.text !=
                                    _cardNumberController) {
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
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
