import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
class Service with _$Service {
  const factory Service({
    int? id,
    String? name,
    String? description,
    int? price,
    int? isAvailable,
    @Default(false) bool? isSelected,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        price: (json['price'] ?? 0).toInt(),
        isAvailable: json['is_available'],
      );
}
