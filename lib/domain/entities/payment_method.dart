import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';
part 'payment_method.g.dart';

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    int? id,
    String? code,
    String? name,
    String? status,
    String? thumbnail,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => PaymentMethod(
        id: json['id'],
        code: json['code'],
        name: json['name'],
        status: json['status'],
        thumbnail: json['thumbnail'],
      );
}
