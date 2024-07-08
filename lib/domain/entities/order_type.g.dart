// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderTypeImpl _$$OrderTypeImplFromJson(Map<String, dynamic> json) =>
    _$OrderTypeImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$OrderTypeImplToJson(_$OrderTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
    };
