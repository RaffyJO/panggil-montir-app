class MotorcycleCreateModel {
  final String? licensePlate;
  final int? brandId;
  final int? typeId;
  final int? variantId;
  final int? productionYearId;

  MotorcycleCreateModel({
    this.licensePlate,
    this.brandId,
    this.typeId,
    this.variantId,
    this.productionYearId,
  });

  Map<String, dynamic> toJson() {
    return {
      'license_plate': licensePlate,
      'brand_id': brandId,
      'type_id': typeId,
      'variant_id': variantId,
      'production_year_id': productionYearId,
    };
  }

  MotorcycleCreateModel copyWith({
    String? licensePlate,
    int? brandId,
    int? typeId,
    int? variantId,
    int? productionYearId,
  }) {
    return MotorcycleCreateModel(
      licensePlate: licensePlate ?? this.licensePlate,
      brandId: brandId ?? this.brandId,
      typeId: typeId ?? this.typeId,
      variantId: variantId ?? this.variantId,
      productionYearId: productionYearId ?? this.productionYearId,
    );
  }
}
