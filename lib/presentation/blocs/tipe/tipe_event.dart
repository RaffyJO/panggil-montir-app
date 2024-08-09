part of 'tipe_bloc.dart';

@freezed
class TipeEvent with _$TipeEvent {
  const factory TipeEvent.started() = _Started;
  const factory TipeEvent.getListTypes(int brandId) = _GetListTypes;
}
