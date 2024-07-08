// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'montir.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Montir _$MontirFromJson(Map<String, dynamic> json) {
  return _Montir.fromJson(json);
}

/// @nodoc
mixin _$Montir {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get licencePlate => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MontirCopyWith<Montir> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MontirCopyWith<$Res> {
  factory $MontirCopyWith(Montir value, $Res Function(Montir) then) =
      _$MontirCopyWithImpl<$Res, Montir>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? licencePlate,
      String? photo,
      String? latitude,
      String? longitude});
}

/// @nodoc
class _$MontirCopyWithImpl<$Res, $Val extends Montir>
    implements $MontirCopyWith<$Res> {
  _$MontirCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? licencePlate = freezed,
    Object? photo = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      licencePlate: freezed == licencePlate
          ? _value.licencePlate
          : licencePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MontirImplCopyWith<$Res> implements $MontirCopyWith<$Res> {
  factory _$$MontirImplCopyWith(
          _$MontirImpl value, $Res Function(_$MontirImpl) then) =
      __$$MontirImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? licencePlate,
      String? photo,
      String? latitude,
      String? longitude});
}

/// @nodoc
class __$$MontirImplCopyWithImpl<$Res>
    extends _$MontirCopyWithImpl<$Res, _$MontirImpl>
    implements _$$MontirImplCopyWith<$Res> {
  __$$MontirImplCopyWithImpl(
      _$MontirImpl _value, $Res Function(_$MontirImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? licencePlate = freezed,
    Object? photo = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$MontirImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      licencePlate: freezed == licencePlate
          ? _value.licencePlate
          : licencePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MontirImpl implements _Montir {
  const _$MontirImpl(
      {this.id,
      this.name,
      this.phone,
      this.licencePlate,
      this.photo,
      this.latitude,
      this.longitude});

  factory _$MontirImpl.fromJson(Map<String, dynamic> json) =>
      _$$MontirImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? licencePlate;
  @override
  final String? photo;
  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'Montir(id: $id, name: $name, phone: $phone, licencePlate: $licencePlate, photo: $photo, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MontirImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.licencePlate, licencePlate) ||
                other.licencePlate == licencePlate) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, phone, licencePlate, photo, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MontirImplCopyWith<_$MontirImpl> get copyWith =>
      __$$MontirImplCopyWithImpl<_$MontirImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MontirImplToJson(
      this,
    );
  }
}

abstract class _Montir implements Montir {
  const factory _Montir(
      {final int? id,
      final String? name,
      final String? phone,
      final String? licencePlate,
      final String? photo,
      final String? latitude,
      final String? longitude}) = _$MontirImpl;

  factory _Montir.fromJson(Map<String, dynamic> json) = _$MontirImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get licencePlate;
  @override
  String? get photo;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$MontirImplCopyWith<_$MontirImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
