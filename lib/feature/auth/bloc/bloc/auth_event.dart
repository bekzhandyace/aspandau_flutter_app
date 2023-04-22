// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class SendDataEvent extends AuthEvent {
  final String email;
  final String password;

  const SendDataEvent({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];

  @override
  String toString() => 'LoginButtonPreesed(email: $email, password: $password)';
}
