part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState.initial() = _Initial;
  const factory TransactionState.loading() = _Loading;
  const factory TransactionState.failure(String message) = _Failure;
  const factory TransactionState.success(List<Order> transactions) = _Success;
}
