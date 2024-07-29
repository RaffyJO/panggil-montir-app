// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motorcycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MotorcycleImpl _$$MotorcycleImplFromJson(Map<String, dynamic> json) =>
    _$MotorcycleImpl(
      id: (json['id'] as num?)?.toInt(),
      licensePlate: json['licensePlate'] as String?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : Tipe.fromJson(json['type'] as Map<String, dynamic>),
      variant: json['variant'] == null
          ? null
          : Variant.fromJson(json['variant'] as Map<String, dynamic>),
      productionYear: json['productionYear'] == null
          ? null
          : ProductionYear.fromJson(
              json['productionYear'] as Map<String, dynamic>),
      isSelected: (json['isSelected'] as num?)?.toInt(),
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
