// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionYear _$ProductionYearFromJson(Map<String, dynamic> json) {
  return _ProductionYear.fromJson(json);
}

/// @nodoc
mixin _$ProductionYear {
  int? get id => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionYearCopyWith<ProductionYear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionYearCopyWith<$Res> {
  factory $ProductionYearCopyWith(
          ProductionYear value, $Res Function(ProductionYear) then) =
      _$ProductionYearCopyWithImpl<$Res, ProductionYear>;
  @useResult
  $Res call({int? id, String? year});
}

/// @nodoc
class _$ProductionYearCopyWithImpl<$Res, $Val extends ProductionYear>
    implements $ProductionYearCopyWith<$Res> {
  _$ProductionYearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionYearImplCopyWith<$Res>
    implements $ProductionYearCopyWith<$Res> {
  factory _$$ProductionYearImplCopyWith(_$ProductionYearImpl value,
          $Res Function(_$ProductionYearImpl) then) =
      __$$ProductionYearImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? year});
}

/// @nodoc
class __$$ProductionYearImplCopyWithImpl<$Res>
    extends _$ProductionYearCopyWithImpl<$Res, _$ProductionYearImpl>
    implements _$$ProductionYearImplCopyWith<$Res> {
  __$$ProductionYearImplCopyWithImpl(
      _$ProductionYearImpl _value, $Res Function(_$ProductionYearImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? year = freezed,
  }) {
    return _then(_$ProductionYearImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionYearImpl implements _ProductionYear {
  const _$ProductionYearImpl({this.id, this.year});

  factory _$ProductionYearImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionYearImplFromJson(json);

  @override
  final int? id;
  @override
  final String? year;

  @override
  String toString() {
    return 'ProductionYear(id: $id, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionYearImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionYearImplCopyWith<_$ProductionYearImpl> get copyWith =>
      __$$ProductionYearImplCopyWithImpl<_$ProductionYearImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionYearImplToJson(
      this,
    );
  }
}

abstract class _ProductionYear implements ProductionYear {
  const factory _ProductionYear({final int? id, final String? year}) =
      _$ProductionYearImpl;

  factory _ProductionYear.fromJson(Map<String, dynamic> json) =
      _$ProductionYearImpl.fromJson;

  @override
  int? get id;
  @override
  String? get year;
  @override
  @JsonKey(ignore: true)
  _$$ProductionYearImplCopyWith<_$ProductionYearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
