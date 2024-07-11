part of 'garage_bloc.dart';

@freezed
class GarageEvent with _$GarageEvent {
  const factory GarageEvent.started() = _Started;
  const factory GarageEvent.getGarages() = _GetGarages;
  const factory GarageEvent.garageFetched() = _GarageFetched;
  const factory GarageEvent.garageRefresh() = _GarageRefresh;
}
