part of 'production_year_bloc.dart';

@freezed
class ProductionYearEvent with _$ProductionYearEvent {
  const factory ProductionYearEvent.started() = _Started;
  const factory ProductionYearEvent.getListProductionYears() =
      _GetListProductionYears;
}
