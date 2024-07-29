import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/domain/entities/brand.dart';
import 'package:panggil_montir_app/domain/entities/production_year.dart';
import 'package:panggil_montir_app/domain/entities/tipe.dart';
import 'package:panggil_montir_app/domain/entities/variant.dart';

part 'motorcycle.freezed.dart';
part 'motorcycle.g.dart';

@freezed
class Motorcycle with _$Motorcycle {
  const factory Motorcycle({
    int? id,
    String? licensePlate,
    Brand? brand,
    Tipe? type,
    Variant? variant,
    ProductionYear? productionYear,
    int? isSelected,
  }) = _Motorcycle;

  factory Motorcycle.fromJson(Map<String, dynamic> json) => Motorcycle(
        id: json['id'],
        licensePlate: json['license_plate'],
        brand: Brand.fromJson(json['brand']),
        type: Tipe.fromJson(json['type']),
        variant: Variant.fromJson(json['variant']),
        productionYear: ProductionYear.fromJson(json['production_year']),
        isSelected: json['is_selected'],
      );
}
