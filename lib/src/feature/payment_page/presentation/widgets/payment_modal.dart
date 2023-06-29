import 'package:aspandau_flutter_app/src/feature/payment_page/presentation/widgets/cost_button.dart';
import 'package:aspandau_flutter_app/src/feature/payment_page/presentation/widgets/number_card.dart';
import 'package:aspandau_flutter_app/src/feature/payment_page/presentation/widgets/username_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_colors.dart';

import '../../bloc/card_form_bloc.dart';
import '../../bloc/repositories/card_repositories.dart';
import 'user_card_credentials.dart';

class PaymentModal extends StatefulWidget {
  const PaymentModal({super.key});

  @override
  State<PaymentModal> createState() => _PaymentModalState();
}

class _PaymentModalState extends State<PaymentModal> {
  final cardRepositories = CardRepositories();

  final _formKey = GlobalKey<FormState>();

  final String errorMessage = 'Incorrect data, please check';
  final String succesMessage = 'Сongratulations! The operation is completed';

  @override
  Widget build(BuildContext context) {
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
                        Future.delayed(const Duration(seconds: 2));

                        return Center(
                          child: Text(
                            'success',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                          color: const Color.fromARGB(255, 220, 33, 19),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  if (context.select((CardFormBloc bloc) => bloc.state)
                      is CardFormSuccess)
                    Text(
                      '$succesMessage',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 133, 157, 134),
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
                  NumberCard(),
                  SizedBox(height: 15.h),
                  UserCardCredentials(),
                  SizedBox(height: 15.h),
                  UsernameField(),
                  CostButton(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
