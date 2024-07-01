// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operasional_hour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperasionalHourImpl _$$OperasionalHourImplFromJson(
        Map<String, dynamic> json) =>
    _$OperasionalHourImpl(
      id: (json['id'] as num?)?.toInt(),
      day: json['day'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$$OperasionalHourImplToJson(
        _$OperasionalHourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
