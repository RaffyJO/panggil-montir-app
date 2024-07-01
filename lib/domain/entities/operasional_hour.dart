import 'package:freezed_annotation/freezed_annotation.dart';

part 'operasional_hour.freezed.dart';
part 'operasional_hour.g.dart';

@freezed
class OperasionalHour with _$OperasionalHour {
  const factory OperasionalHour({
    int? id,
    String? day,
    String? startTime,
    String? endTime,
  }) = _OperasionalHour;

  factory OperasionalHour.fromJson(Map<String, dynamic> json) =>
      OperasionalHour(
        id: json['id'],
        day: json['day'],
        startTime: json['start_time'],
        endTime: json['end_time'],
      );
}
