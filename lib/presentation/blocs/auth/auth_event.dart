part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.login(String email, String password) = _Login;
  const factory AuthEvent.getCurrentUser() = _GetCurrentUser;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.checkUserSignIn() = _CheckUserSignIn;
}
