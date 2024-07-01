part of 'garage_bloc.dart';

@freezed
class GarageState with _$GarageState {
  const factory GarageState.initial() = _Initial;
  const factory GarageState.loading() = _Loading;
  const factory GarageState.failure(String message) = _Failure;
  const factory GarageState.success(List<Garage> garages) = _Success;
}
