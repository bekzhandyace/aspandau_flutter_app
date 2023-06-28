import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';

import '../repositories/auth_repositories.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository repository;

  final Logger _logger = Logger();

  AuthBloc({required this.repository}) : super(AuthInitial()) {
    on<SendDataEvent>((event, emit) async {
      try {
        await repository.login(email: event.email, password: event.password);

        if (event is SendDataEvent) {
          final email = event.email.trim();
          final password = event.password.trim();

          if (email.isEmpty || password.isEmpty) {
            emit(AuthFailure(
                errorMessage: 'Please enter both email and password'));
          } else if (email != 'admin@admin.kz' || password != '1') {
            emit(AuthFailure(errorMessage: 'Incorrect email or password'));
          } else {
            emit(AuthSuccess(
                email: email, password: password, repository: repository));
          }
        }
      } catch (e) {
        _logger.e(e);
        emit(AuthFailure(errorMessage: 'Failed to login. Please try again'));
      }
    });
  }
}
