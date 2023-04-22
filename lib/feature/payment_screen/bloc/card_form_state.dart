// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'card_form_bloc.dart';

abstract class CardFormState extends Equatable {
  const CardFormState();

  @override
  List<Object> get props => [];
}

class CardFormInitial extends CardFormState {}

class CardFormInLoading extends CardFormState {}

class CardFormSuccess extends CardFormState {}

class CardFormFailrure extends CardFormState {
  CardFormFailrure({required this.errorMessage});
  final String errorMessage;
}
