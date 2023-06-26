
import 'package:aspandau_flutter_app/feature/payment_screen/bloc/card_repositories.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

part 'card_form_event.dart';
part 'card_form_state.dart';

class CardFormBloc extends Bloc<CardFormEvent, CardFormState> {
  CardRepositories cardRepositories;

  String cardNumber;
  String cardExpiryDate;
  String cardCvv;
  String cardHolderName;

  CardFormBloc({
    required this.cardRepositories,
    required this.cardNumber,
    required this.cardExpiryDate,
    required this.cardCvv,
    required this.cardHolderName,
  }) : super(CardFormInitial()) {
    on<CardFormAddCard>(
      (event, emit) async {
        try {
          await cardRepositories.addCard(
            cardNumber: event.cardNumber,
            cardExpiryDate: event.cardExpiryDate,
            cardCvv: event.cardCvv,
            cardHolderName: event.cardHolderName,
          );
          if (event is CardFormAddCard) {
            final cardNumber = event.cardNumber;
            final cardExpiryDate = event.cardExpiryDate;
            final cardCvv = event.cardCvv;
            final cardHolderName = event.cardHolderName;

            if (cardNumber.isEmpty ||
                cardExpiryDate.isEmpty ||
                cardCvv.isEmpty ||
                cardHolderName.isEmpty) {
              emit(CardFormFailrure(
                  errorMessage:
                      'please fill in the details from the card field'));
            } else if (cardNumber != cardNumber) {
              emit(CardFormFailrure(
                  errorMessage: 'Incorrect, please check your data'));
            } else if (cardNumber == cardNumber) {
              emit(CardFormInLoading());
            } else {
              emit(CardFormSuccess(
                cardRepositories: cardRepositories,
              ));

              print('succes bro');
            }
          }
        } catch (e) {
          print('Unfortunately it was not possible to add a map');
        }
      },
    );
  }
}
