import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../Data/Repository/auth_repository.dart';
import '../../model/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  StreamSubscription<User>? userSubscription;
  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState.unAuthenticated()) {
    on<UserChanged>(onUserChange);
    on<LogoutRequested>(onLogout);
  }
  onUserChange(UserChanged event, Emitter<AuthState> emit) {}
  onLogout(LogoutRequested event, Emitter<AuthState> emit) {}
}
