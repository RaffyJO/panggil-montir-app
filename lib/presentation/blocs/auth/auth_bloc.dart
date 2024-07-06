import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/auth_remote_datasource.dart';
import 'package:panggil_montir_app/data/dto/register_model.dart';

import '../../../data/dto/login_response.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRemoteDatasource _authRemoteDatasource;
  AuthBloc(
    this._authRemoteDatasource,
  ) : super(const _Initial()) {
    // Login
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final result =
          await _authRemoteDatasource.login(event.email, event.password);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_SuccessLogin(r)),
      );
    });

    // Register
    on<_Register>((event, emit) async {
      emit(const _Loading());
      final result = await _authRemoteDatasource.register(event.model);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_SuccessLogin(r)),
      );
    });

    // Check Email
    on<_CheckEmail>((event, emit) async {
      emit(const _Loading());
      final result = await _authRemoteDatasource.checkEmail(event.email);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => r
            ? emit(const _Error('Email sudah ada yang menggunakan'))
            : emit(const _AuthCheckEmailSuccess()),
      );
    });

    // Logout
    on<_Logout>((event, emit) async {
      emit(const _Loading());
      final response = await _authRemoteDatasource.logout();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(
          const _SuccessLogout(),
        ),
      );
    });

    // Get current user
    on<_GetCurrentUser>((event, emit) async {
      emit(const _Loading());
      final response = await _authRemoteDatasource.getCurrentUser();
      response.fold(
        (l) => emit(const _Error("Belum login")),
        (r) => emit(
          _SuccessLogin(r),
        ),
      );
    });
  }
}
