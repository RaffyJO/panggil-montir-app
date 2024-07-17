// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get issue => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get serviceFee => throw _privateConstructorUsedError;
  int? get deliveryFee => throw _privateConstructorUsedError;
  String? get orderDate => throw _privateConstructorUsedError;
  String? get bookedDate => throw _privateConstructorUsedError;
  String? get completedDate => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  OrderType? get orderType => throw _privateConstructorUsedError;
  Garage? get garage => throw _privateConstructorUsedError;
  Motorcycle? get motorcycle => throw _privateConstructorUsedError;
  Montir? get montir => throw _privateConstructorUsedError;
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;
  List<Service>? get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? issue,
      String? notes,
      int? serviceFee,
      int? deliveryFee,
      String? orderDate,
      String? bookedDate,
      String? completedDate,
      String? address,
      String? latitude,
      String? longitude,
      String? status,
      OrderType? orderType,
      Garage? garage,
      Motorcycle? motorcycle,
      Montir? montir,
      PaymentMethod? paymentMethod,
      List<Service>? services});

  $OrderTypeCopyWith<$Res>? get orderType;
  $GarageCopyWith<$Res>? get garage;
  $MotorcycleCopyWith<$Res>? get motorcycle;
  $MontirCopyWith<$Res>? get montir;
  $PaymentMethodCopyWith<$Res>? get paymentMethod;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? issue = freezed,
    Object? notes = freezed,
    Object? serviceFee = freezed,
    Object? deliveryFee = freezed,
    Object? orderDate = freezed,
    Object? bookedDate = freezed,
    Object? completedDate = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? orderType = freezed,
    Object? garage = freezed,
    Object? motorcycle = freezed,
    Object? montir = freezed,
    Object? paymentMethod = freezed,
    Object? services = freezed,
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
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceFee: freezed == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryFee: freezed == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedDate: freezed == bookedDate
          ? _value.bookedDate
          : bookedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      garage: freezed == garage
          ? _value.garage
          : garage // ignore: cast_nullable_to_non_nullable
              as Garage?,
      motorcycle: freezed == motorcycle
          ? _value.motorcycle
          : motorcycle // ignore: cast_nullable_to_non_nullable
              as Motorcycle?,
      montir: freezed == montir
          ? _value.montir
          : montir // ignore: cast_nullable_to_non_nullable
              as Montir?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderTypeCopyWith<$Res>? get orderType {
    if (_value.orderType == null) {
      return null;
    }

    return $OrderTypeCopyWith<$Res>(_value.orderType!, (value) {
      return _then(_value.copyWith(orderType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GarageCopyWith<$Res>? get garage {
    if (_value.garage == null) {
      return null;
    }

    return $GarageCopyWith<$Res>(_value.garage!, (value) {
      return _then(_value.copyWith(garage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MotorcycleCopyWith<$Res>? get motorcycle {
    if (_value.motorcycle == null) {
      return null;
    }

    return $MotorcycleCopyWith<$Res>(_value.motorcycle!, (value) {
      return _then(_value.copyWith(motorcycle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MontirCopyWith<$Res>? get montir {
    if (_value.montir == null) {
      return null;
    }

    return $MontirCopyWith<$Res>(_value.montir!, (value) {
      return _then(_value.copyWith(montir: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod!, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? issue,
      String? notes,
      int? serviceFee,
      int? deliveryFee,
      String? orderDate,
      String? bookedDate,
      String? completedDate,
      String? address,
      String? latitude,
      String? longitude,
      String? status,
      OrderType? orderType,
      Garage? garage,
      Motorcycle? motorcycle,
      Montir? montir,
      PaymentMethod? paymentMethod,
      List<Service>? services});

  @override
  $OrderTypeCopyWith<$Res>? get orderType;
  @override
  $GarageCopyWith<$Res>? get garage;
  @override
  $MotorcycleCopyWith<$Res>? get motorcycle;
  @override
  $MontirCopyWith<$Res>? get montir;
  @override
  $PaymentMethodCopyWith<$Res>? get paymentMethod;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? issue = freezed,
    Object? notes = freezed,
    Object? serviceFee = freezed,
    Object? deliveryFee = freezed,
    Object? orderDate = freezed,
    Object? bookedDate = freezed,
    Object? completedDate = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? orderType = freezed,
    Object? garage = freezed,
    Object? motorcycle = freezed,
    Object? montir = freezed,
    Object? paymentMethod = freezed,
    Object? services = freezed,
  }) {
    return _then(_$OrderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceFee: freezed == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryFee: freezed == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedDate: freezed == bookedDate
          ? _value.bookedDate
          : bookedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      completedDate: freezed == completedDate
          ? _value.completedDate
          : completedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType?,
      garage: freezed == garage
          ? _value.garage
          : garage // ignore: cast_nullable_to_non_nullable
              as Garage?,
      motorcycle: freezed == motorcycle
          ? _value.motorcycle
          : motorcycle // ignore: cast_nullable_to_non_nullable
              as Motorcycle?,
      montir: freezed == montir
          ? _value.montir
          : montir // ignore: cast_nullable_to_non_nullable
              as Montir?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {this.id,
      this.code,
      this.issue,
      this.notes,
      this.serviceFee,
      this.deliveryFee,
      this.orderDate,
      this.bookedDate,
      this.completedDate,
      this.address,
      this.latitude,
      this.longitude,
      this.status,
      this.orderType,
      this.garage,
      this.motorcycle,
      this.montir,
      this.paymentMethod,
      final List<Service>? services})
      : _services = services;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? issue;
  @override
  final String? notes;
  @override
  final int? serviceFee;
  @override
  final int? deliveryFee;
  @override
  final String? orderDate;
  @override
  final String? bookedDate;
  @override
  final String? completedDate;
  @override
  final String? address;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? status;
  @override
  final OrderType? orderType;
  @override
  final Garage? garage;
  @override
  final Motorcycle? motorcycle;
  @override
  final Montir? montir;
  @override
  final PaymentMethod? paymentMethod;
  final List<Service>? _services;
  @override
  List<Service>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Order(id: $id, code: $code, issue: $issue, notes: $notes, serviceFee: $serviceFee, deliveryFee: $deliveryFee, orderDate: $orderDate, bookedDate: $bookedDate, completedDate: $completedDate, address: $address, latitude: $latitude, longitude: $longitude, status: $status, orderType: $orderType, garage: $garage, motorcycle: $motorcycle, montir: $montir, paymentMethod: $paymentMethod, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.issue, issue) || other.issue == issue) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.bookedDate, bookedDate) ||
                other.bookedDate == bookedDate) &&
            (identical(other.completedDate, completedDate) ||
                other.completedDate == completedDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.garage, garage) || other.garage == garage) &&
            (identical(other.motorcycle, motorcycle) ||
                other.motorcycle == motorcycle) &&
            (identical(other.montir, montir) || other.montir == montir) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        issue,
        notes,
        serviceFee,
        deliveryFee,
        orderDate,
        bookedDate,
        completedDate,
        address,
        latitude,
        longitude,
        status,
        orderType,
        garage,
        motorcycle,
        montir,
        paymentMethod,
        const DeepCollectionEquality().hash(_services)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {final int? id,
      final String? code,
      final String? issue,
      final String? notes,
      final int? serviceFee,
      final int? deliveryFee,
      final String? orderDate,
      final String? bookedDate,
      final String? completedDate,
      final String? address,
      final String? latitude,
      final String? longitude,
      final String? status,
      final OrderType? orderType,
      final Garage? garage,
      final Motorcycle? motorcycle,
      final Montir? montir,
      final PaymentMethod? paymentMethod,
      final List<Service>? services}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get issue;
  @override
  String? get notes;
  @override
  int? get serviceFee;
  @override
  int? get deliveryFee;
  @override
  String? get orderDate;
  @override
  String? get bookedDate;
  @override
  String? get completedDate;
  @override
  String? get address;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get status;
  @override
  OrderType? get orderType;
  @override
  Garage? get garage;
  @override
  Motorcycle? get motorcycle;
  @override
  Montir? get montir;
  @override
  PaymentMethod? get paymentMethod;
  @override
  List<Service>? get services;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
