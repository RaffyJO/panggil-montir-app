part of 'motorcycle_bloc.dart';

@freezed
class MotorcycleEvent with _$MotorcycleEvent {
  const factory MotorcycleEvent.started() = _Started;
  const factory MotorcycleEvent.getCurentMotorcycle() = _GetCurentMotorcycle;
  const factory MotorcycleEvent.getListMotorcycle() = _GetListMotorcycle;
  const factory MotorcycleEvent.addMotorcycle(
      MotorcycleCreateModel motorcycle) = _AddMotorcycle;
}
