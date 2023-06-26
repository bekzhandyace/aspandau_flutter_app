// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'card_form_bloc.dart';

abstract class CardFormState extends Equatable {
  const CardFormState();

  @override
  List<Object> get props => [];
}

class CardFormInitial extends CardFormState {}

class CardFormInLoading extends CardFormState {
 
}

class CardFormSuccess extends CardFormState {
  final String cardNumber;
  final String cardExpiryDate;
  final String cardCvv;
  final String cardHolderName;
  CardFormSuccess({
    this.cardNumber = '4307 3566 6712 9732',
    this.cardExpiryDate = '11/22',
    this.cardCvv = '437',
    this.cardHolderName = 'ADMIN ADMIN',
    required CardRepositories cardRepositories,
  });
}

class CardFormFailrure extends CardFormState {
  CardFormFailrure({required this.errorMessage});
  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() => 'CardFormFailureState { error: $errorMessage }';
}
