import 'package:aspandau_flutter_app/feature/auth/bloc/repositories/auth_repositories.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String email = 'admin@admin.kz';
  String password = '1';

  AuthRepository repository;

  final Logger _logger = Logger();
  String errorMessage;

  AuthBloc({
    required this.repository,
    required this.email,
    required this.password,
    required this.errorMessage,
  }) : super(AuthInitial()) {
    on<SendDataEvent>((event, emit) async {
      try {
        await repository.login(email: event.email, password: event.password);
        if (event is SendDataEvent) {
          final email = event.email.trim();
          final password = event.password.trim();

          if (email.isEmpty || password.isEmpty) {
            emit(const AuthFailure(
                errorMessage: 'Please enter both email and password'));
          } else if (email != email || password != password) {
            emit(
                const AuthFailure(errorMessage: 'Incorrect email or password'));
          } else {
            emit(AuthSuccess(repository: repository));
          }
        }
      } catch (e) {
        _logger.e(e);
        emit(const AuthFailure(
            errorMessage: 'Failed to login. Please try again'));
      }
    });
  }
}



