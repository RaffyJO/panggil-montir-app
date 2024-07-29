import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_year.freezed.dart';
part 'production_year.g.dart';

@freezed
class ProductionYear with _$ProductionYear {
  const factory ProductionYear({
    int? id,
    String? year,
  }) = _ProductionYear;

  factory ProductionYear.fromJson(Map<String, dynamic> json) => ProductionYear(
        id: json['id'],
        year: json['year'],
      );
}
