// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurentAddress,
    required TResult Function() getListAddress,
    required TResult Function(int id) deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurentAddress,
    TResult? Function()? getListAddress,
    TResult? Function(int id)? deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurentAddress,
    TResult Function()? getListAddress,
    TResult Function(int id)? deleteAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurentAddress value) getCurentAddress,
    required TResult Function(_GetListAddress value) getListAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurentAddress value)? getCurentAddress,
    TResult? Function(_GetListAddress value)? getListAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurentAddress value)? getCurentAddress,
    TResult Function(_GetListAddress value)? getListAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

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
    extends _$AddressEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AddressEvent.started()';
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
    required TResult Function() getCurentAddress,
    required TResult Function() getListAddress,
    required TResult Function(int id) deleteAddress,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurentAddress,
    TResult? Function()? getListAddress,
    TResult? Function(int id)? deleteAddress,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurentAddress,
    TResult Function()? getListAddress,
    TResult Function(int id)? deleteAddress,
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
    required TResult Function(_GetCurentAddress value) getCurentAddress,
    required TResult Function(_GetListAddress value) getListAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurentAddress value)? getCurentAddress,
    TResult? Function(_GetListAddress value)? getListAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurentAddress value)? getCurentAddress,
    TResult Function(_GetListAddress value)? getListAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddressEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCurentAddressImplCopyWith<$Res> {
  factory _$$GetCurentAddressImplCopyWith(_$GetCurentAddressImpl value,
          $Res Function(_$GetCurentAddressImpl) then) =
      __$$GetCurentAddressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurentAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$GetCurentAddressImpl>
    implements _$$GetCurentAddressImplCopyWith<$Res> {
  __$$GetCurentAddressImplCopyWithImpl(_$GetCurentAddressImpl _value,
      $Res Function(_$GetCurentAddressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurentAddressImpl implements _GetCurentAddress {
  const _$GetCurentAddressImpl();

  @override
  String toString() {
    return 'AddressEvent.getCurentAddress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurentAddressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurentAddress,
    required TResult Function() getListAddress,
    required TResult Function(int id) deleteAddress,
  }) {
    return getCurentAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurentAddress,
    TResult? Function()? getListAddress,
    TResult? Function(int id)? deleteAddress,
  }) {
    return getCurentAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurentAddress,
    TResult Function()? getListAddress,
    TResult Function(int id)? deleteAddress,
    required TResult orElse(),
  }) {
    if (getCurentAddress != null) {
      return getCurentAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurentAddress value) getCurentAddress,
    required TResult Function(_GetListAddress value) getListAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) {
    return getCurentAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurentAddress value)? getCurentAddress,
    TResult? Function(_GetListAddress value)? getListAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) {
    return getCurentAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurentAddress value)? getCurentAddress,
    TResult Function(_GetListAddress value)? getListAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (getCurentAddress != null) {
      return getCurentAddress(this);
    }
    return orElse();
  }
}

abstract class _GetCurentAddress implements AddressEvent {
  const factory _GetCurentAddress() = _$GetCurentAddressImpl;
}

/// @nodoc
abstract class _$$GetListAddressImplCopyWith<$Res> {
  factory _$$GetListAddressImplCopyWith(_$GetListAddressImpl value,
          $Res Function(_$GetListAddressImpl) then) =
      __$$GetListAddressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$GetListAddressImpl>
    implements _$$GetListAddressImplCopyWith<$Res> {
  __$$GetListAddressImplCopyWithImpl(
      _$GetListAddressImpl _value, $Res Function(_$GetListAddressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetListAddressImpl implements _GetListAddress {
  const _$GetListAddressImpl();

  @override
  String toString() {
    return 'AddressEvent.getListAddress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetListAddressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurentAddress,
    required TResult Function() getListAddress,
    required TResult Function(int id) deleteAddress,
  }) {
    return getListAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurentAddress,
    TResult? Function()? getListAddress,
    TResult? Function(int id)? deleteAddress,
  }) {
    return getListAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurentAddress,
    TResult Function()? getListAddress,
    TResult Function(int id)? deleteAddress,
    required TResult orElse(),
  }) {
    if (getListAddress != null) {
      return getListAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurentAddress value) getCurentAddress,
    required TResult Function(_GetListAddress value) getListAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) {
    return getListAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurentAddress value)? getCurentAddress,
    TResult? Function(_GetListAddress value)? getListAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) {
    return getListAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurentAddress value)? getCurentAddress,
    TResult Function(_GetListAddress value)? getListAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (getListAddress != null) {
      return getListAddress(this);
    }
    return orElse();
  }
}

abstract class _GetListAddress implements AddressEvent {
  const factory _GetListAddress() = _$GetListAddressImpl;
}

/// @nodoc
abstract class _$$DeleteAddressImplCopyWith<$Res> {
  factory _$$DeleteAddressImplCopyWith(
          _$DeleteAddressImpl value, $Res Function(_$DeleteAddressImpl) then) =
      __$$DeleteAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$DeleteAddressImpl>
    implements _$$DeleteAddressImplCopyWith<$Res> {
  __$$DeleteAddressImplCopyWithImpl(
      _$DeleteAddressImpl _value, $Res Function(_$DeleteAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteAddressImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteAddressImpl implements _DeleteAddress {
  const _$DeleteAddressImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AddressEvent.deleteAddress(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAddressImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAddressImplCopyWith<_$DeleteAddressImpl> get copyWith =>
      __$$DeleteAddressImplCopyWithImpl<_$DeleteAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurentAddress,
    required TResult Function() getListAddress,
    required TResult Function(int id) deleteAddress,
  }) {
    return deleteAddress(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurentAddress,
    TResult? Function()? getListAddress,
    TResult? Function(int id)? deleteAddress,
  }) {
    return deleteAddress?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurentAddress,
    TResult Function()? getListAddress,
    TResult Function(int id)? deleteAddress,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurentAddress value) getCurentAddress,
    required TResult Function(_GetListAddress value) getListAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) {
    return deleteAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurentAddress value)? getCurentAddress,
    TResult? Function(_GetListAddress value)? getListAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) {
    return deleteAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurentAddress value)? getCurentAddress,
    TResult Function(_GetListAddress value)? getListAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(this);
    }
    return orElse();
  }
}

abstract class _DeleteAddress implements AddressEvent {
  const factory _DeleteAddress(final int id) = _$DeleteAddressImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteAddressImplCopyWith<_$DeleteAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(Address address) success,
    required TResult Function(List<Address> addresses) successList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(Address address)? success,
    TResult? Function(List<Address> addresses)? successList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(Address address)? success,
    TResult Function(List<Address> addresses)? successList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessList value) successList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessList value)? successList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessList value)? successList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

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
    extends _$AddressStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AddressState.initial()';
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
    required TResult Function(String message) failure,
    required TResult Function(Address address) success,
    required TResult Function(List<Address> addresses) successList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(Address address)? success,
    TResult? Function(List<Address> addresses)? successList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(Address address)? success,
    TResult Function(List<Address> addresses)? successList,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessList value) successList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessList value)? successList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessList value)? successList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddressState {
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
    extends _$AddressStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AddressState.loading()';
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
    required TResult Function(String message) failure,
    required TResult Function(Address address) success,
    required TResult Function(List<Address> addresses) successList,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(Address address)? success,
    TResult? Function(List<Address> addresses)? successList,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(Address address)? success,
    TResult Function(List<Address> addresses)? successList,
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
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessList value) successList,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessList value)? successList,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessList value)? successList,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddressState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddressState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(Address address) success,
    required TResult Function(List<Address> addresses) successList,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(Address address)? success,
    TResult? Function(List<Address> addresses)? successList,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(Address address)? success,
    TResult Function(List<Address> addresses)? successList,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessList value) successList,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessList value)? successList,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessList value)? successList,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AddressState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$SuccessImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.address);

  @override
  final Address address;

  @override
  String toString() {
    return 'AddressState.success(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(Address address) success,
    required TResult Function(List<Address> addresses) successList,
  }) {
    return success(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(Address address)? success,
    TResult? Function(List<Address> addresses)? successList,
  }) {
    return success?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(Address address)? success,
    TResult Function(List<Address> addresses)? successList,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessList value) successList,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessList value)? successList,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessList value)? successList,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AddressState {
  const factory _Success(final Address address) = _$SuccessImpl;

  Address get address;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessListImplCopyWith<$Res> {
  factory _$$SuccessListImplCopyWith(
          _$SuccessListImpl value, $Res Function(_$SuccessListImpl) then) =
      __$$SuccessListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Address> addresses});
}

/// @nodoc
class __$$SuccessListImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$SuccessListImpl>
    implements _$$SuccessListImplCopyWith<$Res> {
  __$$SuccessListImplCopyWithImpl(
      _$SuccessListImpl _value, $Res Function(_$SuccessListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addresses = null,
  }) {
    return _then(_$SuccessListImpl(
      null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ));
  }
}

/// @nodoc

class _$SuccessListImpl implements _SuccessList {
  const _$SuccessListImpl(final List<Address> addresses)
      : _addresses = addresses;

  final List<Address> _addresses;
  @override
  List<Address> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  String toString() {
    return 'AddressState.successList(addresses: $addresses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessListImpl &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessListImplCopyWith<_$SuccessListImpl> get copyWith =>
      __$$SuccessListImplCopyWithImpl<_$SuccessListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(Address address) success,
    required TResult Function(List<Address> addresses) successList,
  }) {
    return successList(addresses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(Address address)? success,
    TResult? Function(List<Address> addresses)? successList,
  }) {
    return successList?.call(addresses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(Address address)? success,
    TResult Function(List<Address> addresses)? successList,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(addresses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessList value) successList,
  }) {
    return successList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessList value)? successList,
  }) {
    return successList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessList value)? successList,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(this);
    }
    return orElse();
  }
}

abstract class _SuccessList implements AddressState {
  const factory _SuccessList(final List<Address> addresses) = _$SuccessListImpl;

  List<Address> get addresses;
  @JsonKey(ignore: true)
  _$$SuccessListImplCopyWith<_$SuccessListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
