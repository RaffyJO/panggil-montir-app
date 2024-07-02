part of 'motorcycle_bloc.dart';

@freezed
class MotorcycleEvent with _$MotorcycleEvent {
  const factory MotorcycleEvent.started() = _Started;
  const factory MotorcycleEvent.getCurentMotorcycle() = _GetCurentMotorcycle;
}
