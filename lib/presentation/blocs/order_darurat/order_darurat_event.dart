part of 'order_darurat_bloc.dart';

@freezed
class OrderDaruratEvent with _$OrderDaruratEvent {
  const factory OrderDaruratEvent.started() = _Started;
  const factory OrderDaruratEvent.findMontir(OrderPanggilDaruratModel order) =
      _FindMontir;
  const factory OrderDaruratEvent.getCurrentOrder(String orderCode) =
      _GetCurrentOrder;
}
