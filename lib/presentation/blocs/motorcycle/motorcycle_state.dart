part of 'motorcycle_bloc.dart';

@freezed
class MotorcycleState with _$MotorcycleState {
  const factory MotorcycleState.initial() = _Initial;
  const factory MotorcycleState.loading() = _Loading;
  const factory MotorcycleState.failure(String message) = _Failure;
  const factory MotorcycleState.success(Motorcycle motorcycle) = _Success;
}
