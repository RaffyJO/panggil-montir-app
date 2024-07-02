part of 'order_servis_bloc.dart';

@freezed
class OrderServisState with _$OrderServisState {
  const factory OrderServisState.initial() = _Initial;
  const factory OrderServisState.loading() = _Loading;
  const factory OrderServisState.failure(String message) = _Failure;
  const factory OrderServisState.success() = _Success;
}
