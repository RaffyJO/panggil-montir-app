import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_type.freezed.dart';
part 'order_type.g.dart';

@freezed
class OrderType with _$OrderType {
  const factory OrderType({
    int? id,
    String? code,
    String? name,
  }) = _OrderType;

  factory OrderType.fromJson(Map<String, dynamic> json) => OrderType(
        id: json['id'],
        code: json['code'],
        name: json['name'],
      );
}
