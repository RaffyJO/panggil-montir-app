part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loginSuccess(AuthResponseModel model) = _SuccessLogin;
  const factory AuthState.logoutSuccess() = _SuccessLogout;
  const factory AuthState.error(String message) = _Error;
}
