part of 'production_year_bloc.dart';

@freezed
class ProductionYearState with _$ProductionYearState {
  const factory ProductionYearState.initial() = _Initial;
  const factory ProductionYearState.loading() = _Loading;
  const factory ProductionYearState.success(
      List<ProductionYear> productionYears) = _Success;
  const factory ProductionYearState.failure(String message) = _Failure;
}
