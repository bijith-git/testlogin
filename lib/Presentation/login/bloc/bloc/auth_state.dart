part of 'auth_bloc.dart';

enum AuthStatus { authorized, unauthorized, unknown }

class AuthState extends Equatable {
  final AuthStatus status;
  final User user;

  const AuthState._({required this.status, this.user = User.empty});
  const AuthState.authenticated(User user)
      : this._(status: AuthStatus.authorized, user: user);
  const AuthState.unAuthenticated() : this._(status: AuthStatus.unauthorized);
  @override
  List<Object> get props => [status, user];
}
