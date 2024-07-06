// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) checkEmail,
    required TResult Function(RegisterModel model) register,
    required TResult Function() getCurrentUser,
    required TResult Function() logout,
    required TResult Function() checkUserSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? checkEmail,
    TResult? Function(RegisterModel model)? register,
    TResult? Function()? getCurrentUser,
    TResult? Function()? logout,
    TResult? Function()? checkUserSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? checkEmail,
    TResult Function(RegisterModel model)? register,
    TResult Function()? getCurrentUser,
    TResult Function()? logout,
    TResult Function()? checkUserSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_CheckEmail value) checkEmail,
    required TResult Function(_Register value) register,
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckUserSignIn value) checkUserSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_CheckEmail value)? checkEmail,
    TResult? Function(_Register value)? register,
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckUserSignIn value)? checkUserSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_CheckEmail value)? checkEmail,
    TResult Function(_Register value)? register,
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckUserSignIn value)? checkUserSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) checkEmail,
    required TResult Function(RegisterModel model) register,
    required TResult Function() getCurrentUser,
    required TResult Function() logout,
    required TResult Function() checkUserSignIn,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? checkEmail,
    TResult? Function(RegisterModel model)? register,
    TResult? Function()? getCurrentUser,
    TResult? Function()? logout,
    TResult? Function()? checkUserSignIn,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? checkEmail,
    TResult Function(RegisterModel model)? register,
    TResult Function()? getCurrentUser,
    TResult Function()? logout,
    TResult Function()? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_CheckEmail value) checkEmail,
    required TResult Function(_Register value) register,
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckUserSignIn value) checkUserSignIn,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_CheckEmail value)? checkEmail,
    TResult? Function(_Register value)? register,
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckUserSignIn value)? checkUserSignIn,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_CheckEmail value)? checkEmail,
    TResult Function(_Register value)? register,
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckUserSignIn value)? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) checkEmail,
    required TResult Function(RegisterModel model) register,
    required TResult Function() getCurrentUser,
    required TResult Function() logout,
    required TResult Function() checkUserSignIn,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? checkEmail,
    TResult? Function(RegisterModel model)? register,
    TResult? Function()? getCurrentUser,
    TResult? Function()? logout,
    TResult? Function()? checkUserSignIn,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? checkEmail,
    TResult Function(RegisterModel model)? register,
    TResult Function()? getCurrentUser,
    TResult Function()? logout,
    TResult Function()? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_CheckEmail value) checkEmail,
    required TResult Function(_Register value) register,
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckUserSignIn value) checkUserSignIn,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_CheckEmail value)? checkEmail,
    TResult? Function(_Register value)? register,
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckUserSignIn value)? checkUserSignIn,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_CheckEmail value)? checkEmail,
    TResult Function(_Register value)? register,
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckUserSignIn value)? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final String email, final String password) = _$LoginImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckEmailImplCopyWith<$Res> {
  factory _$$CheckEmailImplCopyWith(
          _$CheckEmailImpl value, $Res Function(_$CheckEmailImpl) then) =
      __$$CheckEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$CheckEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckEmailImpl>
    implements _$$CheckEmailImplCopyWith<$Res> {
  __$$CheckEmailImplCopyWithImpl(
      _$CheckEmailImpl _value, $Res Function(_$CheckEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$CheckEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckEmailImpl implements _CheckEmail {
  const _$CheckEmailImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.checkEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckEmailImplCopyWith<_$CheckEmailImpl> get copyWith =>
      __$$CheckEmailImplCopyWithImpl<_$CheckEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) checkEmail,
    required TResult Function(RegisterModel model) register,
    required TResult Function() getCurrentUser,
    required TResult Function() logout,
    required TResult Function() checkUserSignIn,
  }) {
    return checkEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? checkEmail,
    TResult? Function(RegisterModel model)? register,
    TResult? Function()? getCurrentUser,
    TResult? Function()? logout,
    TResult? Function()? checkUserSignIn,
  }) {
    return checkEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? checkEmail,
    TResult Function(RegisterModel model)? register,
    TResult Function()? getCurrentUser,
    TResult Function()? logout,
    TResult Function()? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (checkEmail != null) {
      return checkEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_CheckEmail value) checkEmail,
    required TResult Function(_Register value) register,
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckUserSignIn value) checkUserSignIn,
  }) {
    return checkEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_CheckEmail value)? checkEmail,
    TResult? Function(_Register value)? register,
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckUserSignIn value)? checkUserSignIn,
  }) {
    return checkEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_CheckEmail value)? checkEmail,
    TResult Function(_Register value)? register,
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckUserSignIn value)? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (checkEmail != null) {
      return checkEmail(this);
    }
    return orElse();
  }
}

abstract class _CheckEmail implements AuthEvent {
  const factory _CheckEmail(final String email) = _$CheckEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$CheckEmailImplCopyWith<_$CheckEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterModel model});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$RegisterImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RegisterModel,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(this.model);

  @override
  final RegisterModel model;

  @override
  String toString() {
    return 'AuthEvent.register(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) checkEmail,
    required TResult Function(RegisterModel model) register,
    required TResult Function() getCurrentUser,
    required TResult Function() logout,
    required TResult Function() checkUserSignIn,
  }) {
    return register(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? checkEmail,
    TResult? Function(RegisterModel model)? register,
    TResult? Function()? getCurrentUser,
    TResult? Function()? logout,
    TResult? Function()? checkUserSignIn,
  }) {
    return register?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? checkEmail,
    TResult Function(RegisterModel model)? register,
    TResult Function()? getCurrentUser,
    TResult Function()? logout,
    TResult Function()? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_CheckEmail value) checkEmail,
    required TResult Function(_Register value) register,
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckUserSignIn value) checkUserSignIn,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_CheckEmail value)? checkEmail,
    TResult? Function(_Register value)? register,
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckUserSignIn value)? checkUserSignIn,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_CheckEmail value)? checkEmail,
    TResult Function(_Register value)? register,
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckUserSignIn value)? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(final RegisterModel model) = _$RegisterImpl;

  RegisterModel get model;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCurrentUserImplCopyWith<$Res> {
  factory _$$GetCurrentUserImplCopyWith(_$GetCurrentUserImpl value,
          $Res Function(_$GetCurrentUserImpl) then) =
      __$$GetCurrentUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCurrentUserImpl>
    implements _$$GetCurrentUserImplCopyWith<$Res> {
  __$$GetCurrentUserImplCopyWithImpl(
      _$GetCurrentUserImpl _value, $Res Function(_$GetCurrentUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentUserImpl implements _GetCurrentUser {
  const _$GetCurrentUserImpl();

  @override
  String toString() {
    return 'AuthEvent.getCurrentUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) checkEmail,
    required TResult Function(RegisterModel model) register,
    required TResult Function() getCurrentUser,
    required TResult Function() logout,
    required TResult Function() checkUserSignIn,
  }) {
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? checkEmail,
    TResult? Function(RegisterModel model)? register,
    TResult? Function()? getCurrentUser,
    TResult? Function()? logout,
    TResult? Function()? checkUserSignIn,
  }) {
    return getCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? checkEmail,
    TResult Function(RegisterModel model)? register,
    TResult Function()? getCurrentUser,
    TResult Function()? logout,
    TResult Function()? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_CheckEmail value) checkEmail,
    required TResult Function(_Register value) register,
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckUserSignIn value) checkUserSignIn,
  }) {
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_CheckEmail value)? checkEmail,
    TResult? Function(_Register value)? register,
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckUserSignIn value)? checkUserSignIn,
  }) {
    return getCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_CheckEmail value)? checkEmail,
    TResult Function(_Register value)? register,
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckUserSignIn value)? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUser implements AuthEvent {
  const factory _GetCurrentUser() = _$GetCurrentUserImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) checkEmail,
    required TResult Function(RegisterModel model) register,
    required TResult Function() getCurrentUser,
    required TResult Function() logout,
    required TResult Function() checkUserSignIn,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? checkEmail,
    TResult? Function(RegisterModel model)? register,
    TResult? Function()? getCurrentUser,
    TResult? Function()? logout,
    TResult? Function()? checkUserSignIn,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? checkEmail,
    TResult Function(RegisterModel model)? register,
    TResult Function()? getCurrentUser,
    TResult Function()? logout,
    TResult Function()? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_CheckEmail value) checkEmail,
    required TResult Function(_Register value) register,
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckUserSignIn value) checkUserSignIn,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_CheckEmail value)? checkEmail,
    TResult? Function(_Register value)? register,
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckUserSignIn value)? checkUserSignIn,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_CheckEmail value)? checkEmail,
    TResult Function(_Register value)? register,
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckUserSignIn value)? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$CheckUserSignInImplCopyWith<$Res> {
  factory _$$CheckUserSignInImplCopyWith(_$CheckUserSignInImpl value,
          $Res Function(_$CheckUserSignInImpl) then) =
      __$$CheckUserSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckUserSignInImpl>
    implements _$$CheckUserSignInImplCopyWith<$Res> {
  __$$CheckUserSignInImplCopyWithImpl(
      _$CheckUserSignInImpl _value, $Res Function(_$CheckUserSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckUserSignInImpl implements _CheckUserSignIn {
  const _$CheckUserSignInImpl();

  @override
  String toString() {
    return 'AuthEvent.checkUserSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) checkEmail,
    required TResult Function(RegisterModel model) register,
    required TResult Function() getCurrentUser,
    required TResult Function() logout,
    required TResult Function() checkUserSignIn,
  }) {
    return checkUserSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? checkEmail,
    TResult? Function(RegisterModel model)? register,
    TResult? Function()? getCurrentUser,
    TResult? Function()? logout,
    TResult? Function()? checkUserSignIn,
  }) {
    return checkUserSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? checkEmail,
    TResult Function(RegisterModel model)? register,
    TResult Function()? getCurrentUser,
    TResult Function()? logout,
    TResult Function()? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (checkUserSignIn != null) {
      return checkUserSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_CheckEmail value) checkEmail,
    required TResult Function(_Register value) register,
    required TResult Function(_GetCurrentUser value) getCurrentUser,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckUserSignIn value) checkUserSignIn,
  }) {
    return checkUserSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_CheckEmail value)? checkEmail,
    TResult? Function(_Register value)? register,
    TResult? Function(_GetCurrentUser value)? getCurrentUser,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckUserSignIn value)? checkUserSignIn,
  }) {
    return checkUserSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_CheckEmail value)? checkEmail,
    TResult Function(_Register value)? register,
    TResult Function(_GetCurrentUser value)? getCurrentUser,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckUserSignIn value)? checkUserSignIn,
    required TResult orElse(),
  }) {
    if (checkUserSignIn != null) {
      return checkUserSignIn(this);
    }
    return orElse();
  }
}

abstract class _CheckUserSignIn implements AuthEvent {
  const factory _CheckUserSignIn() = _$CheckUserSignInImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authCheckEmailSuccess,
    required TResult Function(AuthResponseModel model) loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authCheckEmailSuccess,
    TResult? Function(AuthResponseModel model)? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authCheckEmailSuccess,
    TResult Function(AuthResponseModel model)? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthCheckEmailSuccess value)
        authCheckEmailSuccess,
    required TResult Function(_SuccessLogin value) loginSuccess,
    required TResult Function(_SuccessLogout value) logoutSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult? Function(_SuccessLogin value)? loginSuccess,
    TResult? Function(_SuccessLogout value)? logoutSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult Function(_SuccessLogin value)? loginSuccess,
    TResult Function(_SuccessLogout value)? logoutSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authCheckEmailSuccess,
    required TResult Function(AuthResponseModel model) loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authCheckEmailSuccess,
    TResult? Function(AuthResponseModel model)? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authCheckEmailSuccess,
    TResult Function(AuthResponseModel model)? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthCheckEmailSuccess value)
        authCheckEmailSuccess,
    required TResult Function(_SuccessLogin value) loginSuccess,
    required TResult Function(_SuccessLogout value) logoutSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult? Function(_SuccessLogin value)? loginSuccess,
    TResult? Function(_SuccessLogout value)? logoutSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult Function(_SuccessLogin value)? loginSuccess,
    TResult Function(_SuccessLogout value)? logoutSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authCheckEmailSuccess,
    required TResult Function(AuthResponseModel model) loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authCheckEmailSuccess,
    TResult? Function(AuthResponseModel model)? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authCheckEmailSuccess,
    TResult Function(AuthResponseModel model)? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthCheckEmailSuccess value)
        authCheckEmailSuccess,
    required TResult Function(_SuccessLogin value) loginSuccess,
    required TResult Function(_SuccessLogout value) logoutSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult? Function(_SuccessLogin value)? loginSuccess,
    TResult? Function(_SuccessLogout value)? logoutSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult Function(_SuccessLogin value)? loginSuccess,
    TResult Function(_SuccessLogout value)? logoutSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthCheckEmailSuccessImplCopyWith<$Res> {
  factory _$$AuthCheckEmailSuccessImplCopyWith(
          _$AuthCheckEmailSuccessImpl value,
          $Res Function(_$AuthCheckEmailSuccessImpl) then) =
      __$$AuthCheckEmailSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckEmailSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthCheckEmailSuccessImpl>
    implements _$$AuthCheckEmailSuccessImplCopyWith<$Res> {
  __$$AuthCheckEmailSuccessImplCopyWithImpl(_$AuthCheckEmailSuccessImpl _value,
      $Res Function(_$AuthCheckEmailSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckEmailSuccessImpl implements _AuthCheckEmailSuccess {
  const _$AuthCheckEmailSuccessImpl();

  @override
  String toString() {
    return 'AuthState.authCheckEmailSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCheckEmailSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authCheckEmailSuccess,
    required TResult Function(AuthResponseModel model) loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) error,
  }) {
    return authCheckEmailSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authCheckEmailSuccess,
    TResult? Function(AuthResponseModel model)? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? error,
  }) {
    return authCheckEmailSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authCheckEmailSuccess,
    TResult Function(AuthResponseModel model)? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authCheckEmailSuccess != null) {
      return authCheckEmailSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthCheckEmailSuccess value)
        authCheckEmailSuccess,
    required TResult Function(_SuccessLogin value) loginSuccess,
    required TResult Function(_SuccessLogout value) logoutSuccess,
    required TResult Function(_Error value) error,
  }) {
    return authCheckEmailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult? Function(_SuccessLogin value)? loginSuccess,
    TResult? Function(_SuccessLogout value)? logoutSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return authCheckEmailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult Function(_SuccessLogin value)? loginSuccess,
    TResult Function(_SuccessLogout value)? logoutSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authCheckEmailSuccess != null) {
      return authCheckEmailSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckEmailSuccess implements AuthState {
  const factory _AuthCheckEmailSuccess() = _$AuthCheckEmailSuccessImpl;
}

/// @nodoc
abstract class _$$SuccessLoginImplCopyWith<$Res> {
  factory _$$SuccessLoginImplCopyWith(
          _$SuccessLoginImpl value, $Res Function(_$SuccessLoginImpl) then) =
      __$$SuccessLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponseModel model});
}

/// @nodoc
class __$$SuccessLoginImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessLoginImpl>
    implements _$$SuccessLoginImplCopyWith<$Res> {
  __$$SuccessLoginImplCopyWithImpl(
      _$SuccessLoginImpl _value, $Res Function(_$SuccessLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SuccessLoginImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel,
    ));
  }
}

/// @nodoc

class _$SuccessLoginImpl implements _SuccessLogin {
  const _$SuccessLoginImpl(this.model);

  @override
  final AuthResponseModel model;

  @override
  String toString() {
    return 'AuthState.loginSuccess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLoginImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoginImplCopyWith<_$SuccessLoginImpl> get copyWith =>
      __$$SuccessLoginImplCopyWithImpl<_$SuccessLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authCheckEmailSuccess,
    required TResult Function(AuthResponseModel model) loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) error,
  }) {
    return loginSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authCheckEmailSuccess,
    TResult? Function(AuthResponseModel model)? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? error,
  }) {
    return loginSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authCheckEmailSuccess,
    TResult Function(AuthResponseModel model)? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthCheckEmailSuccess value)
        authCheckEmailSuccess,
    required TResult Function(_SuccessLogin value) loginSuccess,
    required TResult Function(_SuccessLogout value) logoutSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult? Function(_SuccessLogin value)? loginSuccess,
    TResult? Function(_SuccessLogout value)? logoutSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult Function(_SuccessLogin value)? loginSuccess,
    TResult Function(_SuccessLogout value)? logoutSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _SuccessLogin implements AuthState {
  const factory _SuccessLogin(final AuthResponseModel model) =
      _$SuccessLoginImpl;

  AuthResponseModel get model;
  @JsonKey(ignore: true)
  _$$SuccessLoginImplCopyWith<_$SuccessLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessLogoutImplCopyWith<$Res> {
  factory _$$SuccessLogoutImplCopyWith(
          _$SuccessLogoutImpl value, $Res Function(_$SuccessLogoutImpl) then) =
      __$$SuccessLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessLogoutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessLogoutImpl>
    implements _$$SuccessLogoutImplCopyWith<$Res> {
  __$$SuccessLogoutImplCopyWithImpl(
      _$SuccessLogoutImpl _value, $Res Function(_$SuccessLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessLogoutImpl implements _SuccessLogout {
  const _$SuccessLogoutImpl();

  @override
  String toString() {
    return 'AuthState.logoutSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authCheckEmailSuccess,
    required TResult Function(AuthResponseModel model) loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) error,
  }) {
    return logoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authCheckEmailSuccess,
    TResult? Function(AuthResponseModel model)? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? error,
  }) {
    return logoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authCheckEmailSuccess,
    TResult Function(AuthResponseModel model)? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthCheckEmailSuccess value)
        authCheckEmailSuccess,
    required TResult Function(_SuccessLogin value) loginSuccess,
    required TResult Function(_SuccessLogout value) logoutSuccess,
    required TResult Function(_Error value) error,
  }) {
    return logoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult? Function(_SuccessLogin value)? loginSuccess,
    TResult? Function(_SuccessLogout value)? logoutSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return logoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult Function(_SuccessLogin value)? loginSuccess,
    TResult Function(_SuccessLogout value)? logoutSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (logoutSuccess != null) {
      return logoutSuccess(this);
    }
    return orElse();
  }
}

abstract class _SuccessLogout implements AuthState {
  const factory _SuccessLogout() = _$SuccessLogoutImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() authCheckEmailSuccess,
    required TResult Function(AuthResponseModel model) loginSuccess,
    required TResult Function() logoutSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? authCheckEmailSuccess,
    TResult? Function(AuthResponseModel model)? loginSuccess,
    TResult? Function()? logoutSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? authCheckEmailSuccess,
    TResult Function(AuthResponseModel model)? loginSuccess,
    TResult Function()? logoutSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AuthCheckEmailSuccess value)
        authCheckEmailSuccess,
    required TResult Function(_SuccessLogin value) loginSuccess,
    required TResult Function(_SuccessLogout value) logoutSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult? Function(_SuccessLogin value)? loginSuccess,
    TResult? Function(_SuccessLogout value)? logoutSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AuthCheckEmailSuccess value)? authCheckEmailSuccess,
    TResult Function(_SuccessLogin value)? loginSuccess,
    TResult Function(_SuccessLogout value)? logoutSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
