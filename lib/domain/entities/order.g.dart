// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      issue: json['issue'] as String?,
      notes: json['notes'] as String?,
      serviceFee: (json['serviceFee'] as num?)?.toInt(),
      deliveryFee: (json['deliveryFee'] as num?)?.toInt(),
      orderDate: json['orderDate'] as String?,
      bookedDate: json['bookedDate'] as String?,
      completedDate: json['completedDate'] as String?,
      address: json['address'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      status: json['status'] as String?,
      orderType: json['orderType'] == null
          ? null
          : OrderType.fromJson(json['orderType'] as Map<String, dynamic>),
      garage: json['garage'] == null
          ? null
          : Garage.fromJson(json['garage'] as Map<String, dynamic>),
      motorcycle: json['motorcycle'] == null
          ? null
          : Motorcycle.fromJson(json['motorcycle'] as Map<String, dynamic>),
      montir: json['montir'] == null
          ? null
          : Montir.fromJson(json['montir'] as Map<String, dynamic>),
      paymentMethod: json['paymentMethod'] == null
          ? null
          : PaymentMethod.fromJson(
              json['paymentMethod'] as Map<String, dynamic>),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'issue': instance.issue,
      'notes': instance.notes,
      'serviceFee': instance.serviceFee,
      'deliveryFee': instance.deliveryFee,
      'orderDate': instance.orderDate,
      'bookedDate': instance.bookedDate,
      'completedDate': instance.completedDate,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': instance.status,
      'orderType': instance.orderType,
      'garage': instance.garage,
      'motorcycle': instance.motorcycle,
      'montir': instance.montir,
      'paymentMethod': instance.paymentMethod,
      'services': instance.services,
    };
