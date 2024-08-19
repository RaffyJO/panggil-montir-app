part of 'order_darurat_bloc.dart';

@freezed
class OrderDaruratState with _$OrderDaruratState {
  const factory OrderDaruratState.initial() = _Initial;
  const factory OrderDaruratState.loading() = _Loading;
  const factory OrderDaruratState.success(Order order) = _Success;
  const factory OrderDaruratState.failure(String message) = _Failure;
}
