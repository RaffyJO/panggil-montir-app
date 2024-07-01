// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motorcycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MotorcycleImpl _$$MotorcycleImplFromJson(Map<String, dynamic> json) =>
    _$MotorcycleImpl(
      id: (json['id'] as num?)?.toInt(),
      licensePlate: json['licensePlate'] as String?,
      brand: json['brand'] as String?,
      type: json['type'] as String?,
      variant: json['variant'] as String?,
      productionYear: json['productionYear'] as String?,
      isSelected: json['isSelected'] as bool?,
    );

Map<String, dynamic> _$$MotorcycleImplToJson(_$MotorcycleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'licensePlate': instance.licensePlate,
      'brand': instance.brand,
      'type': instance.type,
      'variant': instance.variant,
      'productionYear': instance.productionYear,
      'isSelected': instance.isSelected,
    };
