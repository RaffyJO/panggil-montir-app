// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderType _$OrderTypeFromJson(Map<String, dynamic> json) {
  return _OrderType.fromJson(json);
}

/// @nodoc
mixin _$OrderType {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderTypeCopyWith<OrderType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypeCopyWith<$Res> {
  factory $OrderTypeCopyWith(OrderType value, $Res Function(OrderType) then) =
      _$OrderTypeCopyWithImpl<$Res, OrderType>;
  @useResult
  $Res call({int? id, String? code, String? name});
}

/// @nodoc
class _$OrderTypeCopyWithImpl<$Res, $Val extends OrderType>
    implements $OrderTypeCopyWith<$Res> {
  _$OrderTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderTypeImplCopyWith<$Res>
    implements $OrderTypeCopyWith<$Res> {
  factory _$$OrderTypeImplCopyWith(
          _$OrderTypeImpl value, $Res Function(_$OrderTypeImpl) then) =
      __$$OrderTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? code, String? name});
}

/// @nodoc
class __$$OrderTypeImplCopyWithImpl<$Res>
    extends _$OrderTypeCopyWithImpl<$Res, _$OrderTypeImpl>
    implements _$$OrderTypeImplCopyWith<$Res> {
  __$$OrderTypeImplCopyWithImpl(
      _$OrderTypeImpl _value, $Res Function(_$OrderTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_$OrderTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderTypeImpl implements _OrderType {
  const _$OrderTypeImpl({this.id, this.code, this.name});

  factory _$OrderTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderTypeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? name;

  @override
  String toString() {
    return 'OrderType(id: $id, code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderTypeImplCopyWith<_$OrderTypeImpl> get copyWith =>
      __$$OrderTypeImplCopyWithImpl<_$OrderTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderTypeImplToJson(
      this,
    );
  }
}

abstract class _OrderType implements OrderType {
  const factory _OrderType(
      {final int? id,
      final String? code,
      final String? name}) = _$OrderTypeImpl;

  factory _OrderType.fromJson(Map<String, dynamic> json) =
      _$OrderTypeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$OrderTypeImplCopyWith<_$OrderTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
