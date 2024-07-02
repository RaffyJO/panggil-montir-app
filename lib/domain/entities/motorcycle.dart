import 'package:freezed_annotation/freezed_annotation.dart';

part 'motorcycle.freezed.dart';
part 'motorcycle.g.dart';

@freezed
class Motorcycle with _$Motorcycle {
  const factory Motorcycle({
    int? id,
    String? licensePlate,
    String? brand,
    String? type,
    String? variant,
    String? productionYear,
    int? isSelected,
  }) = _Motorcycle;

  factory Motorcycle.fromJson(Map<String, dynamic> json) => Motorcycle(
        id: json['id'],
        licensePlate: json['license_plate'],
        brand: json['brand'],
        type: json['type'],
        variant: json['variant'],
        productionYear: json['production_year'],
        isSelected: json['is_selected'],
      );
}
