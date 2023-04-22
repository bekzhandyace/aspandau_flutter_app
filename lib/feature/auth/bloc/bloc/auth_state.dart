// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String email;
  
   final String password;
  const AuthSuccess({
    this.email = 'admin@admin.kz',
    this.password = '1',
    required AuthRepository repository,
  });
}

class AuthFailure extends AuthState {
  final String errorMessage;

  const AuthFailure({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() => 'AuthFailureState { error: $errorMessage }';
}
