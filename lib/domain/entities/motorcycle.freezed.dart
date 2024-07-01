// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'motorcycle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Motorcycle _$MotorcycleFromJson(Map<String, dynamic> json) {
  return _Motorcycle.fromJson(json);
}

/// @nodoc
mixin _$Motorcycle {
  int? get id => throw _privateConstructorUsedError;
  String? get licensePlate => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get variant => throw _privateConstructorUsedError;
  String? get productionYear => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotorcycleCopyWith<Motorcycle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorcycleCopyWith<$Res> {
  factory $MotorcycleCopyWith(
          Motorcycle value, $Res Function(Motorcycle) then) =
      _$MotorcycleCopyWithImpl<$Res, Motorcycle>;
  @useResult
  $Res call(
      {int? id,
      String? licensePlate,
      String? brand,
      String? type,
      String? variant,
      String? productionYear,
      bool? isSelected});
}

/// @nodoc
class _$MotorcycleCopyWithImpl<$Res, $Val extends Motorcycle>
    implements $MotorcycleCopyWith<$Res> {
  _$MotorcycleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? licensePlate = freezed,
    Object? brand = freezed,
    Object? type = freezed,
    Object? variant = freezed,
    Object? productionYear = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      licensePlate: freezed == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String?,
      productionYear: freezed == productionYear
          ? _value.productionYear
          : productionYear // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MotorcycleImplCopyWith<$Res>
    implements $MotorcycleCopyWith<$Res> {
  factory _$$MotorcycleImplCopyWith(
          _$MotorcycleImpl value, $Res Function(_$MotorcycleImpl) then) =
      __$$MotorcycleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? licensePlate,
      String? brand,
      String? type,
      String? variant,
      String? productionYear,
      bool? isSelected});
}

/// @nodoc
class __$$MotorcycleImplCopyWithImpl<$Res>
    extends _$MotorcycleCopyWithImpl<$Res, _$MotorcycleImpl>
    implements _$$MotorcycleImplCopyWith<$Res> {
  __$$MotorcycleImplCopyWithImpl(
      _$MotorcycleImpl _value, $Res Function(_$MotorcycleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? licensePlate = freezed,
    Object? brand = freezed,
    Object? type = freezed,
    Object? variant = freezed,
    Object? productionYear = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$MotorcycleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      licensePlate: freezed == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as String?,
      productionYear: freezed == productionYear
          ? _value.productionYear
          : productionYear // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MotorcycleImpl implements _Motorcycle {
  const _$MotorcycleImpl(
      {this.id,
      this.licensePlate,
      this.brand,
      this.type,
      this.variant,
      this.productionYear,
      this.isSelected});

  factory _$MotorcycleImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotorcycleImplFromJson(json);

  @override
  final int? id;
  @override
  final String? licensePlate;
  @override
  final String? brand;
  @override
  final String? type;
  @override
  final String? variant;
  @override
  final String? productionYear;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'Motorcycle(id: $id, licensePlate: $licensePlate, brand: $brand, type: $type, variant: $variant, productionYear: $productionYear, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotorcycleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.productionYear, productionYear) ||
                other.productionYear == productionYear) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, licensePlate, brand, type,
      variant, productionYear, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MotorcycleImplCopyWith<_$MotorcycleImpl> get copyWith =>
      __$$MotorcycleImplCopyWithImpl<_$MotorcycleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotorcycleImplToJson(
      this,
    );
  }
}

abstract class _Motorcycle implements Motorcycle {
  const factory _Motorcycle(
      {final int? id,
      final String? licensePlate,
      final String? brand,
      final String? type,
      final String? variant,
      final String? productionYear,
      final bool? isSelected}) = _$MotorcycleImpl;

  factory _Motorcycle.fromJson(Map<String, dynamic> json) =
      _$MotorcycleImpl.fromJson;

  @override
  int? get id;
  @override
  String? get licensePlate;
  @override
  String? get brand;
  @override
  String? get type;
  @override
  String? get variant;
  @override
  String? get productionYear;
  @override
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$MotorcycleImplCopyWith<_$MotorcycleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
