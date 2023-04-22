// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'card_form_bloc.dart';

abstract class CardFormEvent extends Equatable {
  const CardFormEvent();

  @override
  List<Object> get props => [];
}

class CardFormAddCard extends CardFormEvent {
  final String cardNumber;
  final String cardExpiryDate;
  final String cardCvv;
  final String cardHolderName;

  CardFormAddCard({
    required this.cardNumber,
    required this.cardExpiryDate,
    required this.cardCvv,
    required this.cardHolderName,
  });
}
