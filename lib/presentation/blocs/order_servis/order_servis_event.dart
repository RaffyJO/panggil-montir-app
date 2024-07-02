part of 'order_servis_bloc.dart';

@freezed
class OrderServisEvent with _$OrderServisEvent {
  const factory OrderServisEvent.started() = _Started;
  const factory OrderServisEvent.storeOrderServis(
      OrderPanggilServisModel order) = _StoreOrderServis;
}
