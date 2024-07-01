// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operasional_hour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OperasionalHour _$OperasionalHourFromJson(Map<String, dynamic> json) {
  return _OperasionalHour.fromJson(json);
}

/// @nodoc
mixin _$OperasionalHour {
  int? get id => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperasionalHourCopyWith<OperasionalHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperasionalHourCopyWith<$Res> {
  factory $OperasionalHourCopyWith(
          OperasionalHour value, $Res Function(OperasionalHour) then) =
      _$OperasionalHourCopyWithImpl<$Res, OperasionalHour>;
  @useResult
  $Res call({int? id, String? day, String? startTime, String? endTime});
}

/// @nodoc
class _$OperasionalHourCopyWithImpl<$Res, $Val extends OperasionalHour>
    implements $OperasionalHourCopyWith<$Res> {
  _$OperasionalHourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OperasionalHourImplCopyWith<$Res>
    implements $OperasionalHourCopyWith<$Res> {
  factory _$$OperasionalHourImplCopyWith(_$OperasionalHourImpl value,
          $Res Function(_$OperasionalHourImpl) then) =
      __$$OperasionalHourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? day, String? startTime, String? endTime});
}

/// @nodoc
class __$$OperasionalHourImplCopyWithImpl<$Res>
    extends _$OperasionalHourCopyWithImpl<$Res, _$OperasionalHourImpl>
    implements _$$OperasionalHourImplCopyWith<$Res> {
  __$$OperasionalHourImplCopyWithImpl(
      _$OperasionalHourImpl _value, $Res Function(_$OperasionalHourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$OperasionalHourImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperasionalHourImpl implements _OperasionalHour {
  const _$OperasionalHourImpl(
      {this.id, this.day, this.startTime, this.endTime});

  factory _$OperasionalHourImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperasionalHourImplFromJson(json);

  @override
  final int? id;
  @override
  final String? day;
  @override
  final String? startTime;
  @override
  final String? endTime;

  @override
  String toString() {
    return 'OperasionalHour(id: $id, day: $day, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperasionalHourImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, day, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperasionalHourImplCopyWith<_$OperasionalHourImpl> get copyWith =>
      __$$OperasionalHourImplCopyWithImpl<_$OperasionalHourImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperasionalHourImplToJson(
      this,
    );
  }
}

abstract class _OperasionalHour implements OperasionalHour {
  const factory _OperasionalHour(
      {final int? id,
      final String? day,
      final String? startTime,
      final String? endTime}) = _$OperasionalHourImpl;

  factory _OperasionalHour.fromJson(Map<String, dynamic> json) =
      _$OperasionalHourImpl.fromJson;

  @override
  int? get id;
  @override
  String? get day;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$OperasionalHourImplCopyWith<_$OperasionalHourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
