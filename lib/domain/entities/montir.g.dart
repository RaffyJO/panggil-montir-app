// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'montir.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MontirImpl _$$MontirImplFromJson(Map<String, dynamic> json) => _$MontirImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      licencePlate: json['licencePlate'] as String?,
      photo: json['photo'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$MontirImplToJson(_$MontirImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'licencePlate': instance.licencePlate,
      'photo': instance.photo,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
