// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'garage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GarageImpl _$$GarageImplFromJson(Map<String, dynamic> json) => _$GarageImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      photo: json['photo'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      avarageRating: (json['avarageRating'] as num?)?.toDouble(),
      startPrice: (json['startPrice'] as num?)?.toInt(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      operasionalHours: (json['operasionalHours'] as List<dynamic>?)
          ?.map((e) => OperasionalHour.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GarageImplToJson(_$GarageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'photo': instance.photo,
      'distance': instance.distance,
      'avarageRating': instance.avarageRating,
      'startPrice': instance.startPrice,
      'services': instance.services,
      'operasionalHours': instance.operasionalHours,
      'ratings': instance.ratings,
    };
