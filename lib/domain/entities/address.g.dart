// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      notes: json['notes'] as String?,
      isSelected: (json['isSelected'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'notes': instance.notes,
      'isSelected': instance.isSelected,
    };
