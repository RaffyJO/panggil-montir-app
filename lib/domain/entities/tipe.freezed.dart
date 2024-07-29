// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Tipe _$TipeFromJson(Map<String, dynamic> json) {
  return _Tipe.fromJson(json);
}

/// @nodoc
mixin _$Tipe {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipeCopyWith<Tipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipeCopyWith<$Res> {
  factory $TipeCopyWith(Tipe value, $Res Function(Tipe) then) =
      _$TipeCopyWithImpl<$Res, Tipe>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$TipeCopyWithImpl<$Res, $Val extends Tipe>
    implements $TipeCopyWith<$Res> {
  _$TipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TipeImplCopyWith<$Res> implements $TipeCopyWith<$Res> {
  factory _$$TipeImplCopyWith(
          _$TipeImpl value, $Res Function(_$TipeImpl) then) =
      __$$TipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$TipeImplCopyWithImpl<$Res>
    extends _$TipeCopyWithImpl<$Res, _$TipeImpl>
    implements _$$TipeImplCopyWith<$Res> {
  __$$TipeImplCopyWithImpl(_$TipeImpl _value, $Res Function(_$TipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TipeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TipeImpl implements _Tipe {
  const _$TipeImpl({this.id, this.name});

  factory _$TipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TipeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Tipe(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TipeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TipeImplCopyWith<_$TipeImpl> get copyWith =>
      __$$TipeImplCopyWithImpl<_$TipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TipeImplToJson(
      this,
    );
  }
}

abstract class _Tipe implements Tipe {
  const factory _Tipe({final int? id, final String? name}) = _$TipeImpl;

  factory _Tipe.fromJson(Map<String, dynamic> json) = _$TipeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$TipeImplCopyWith<_$TipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
