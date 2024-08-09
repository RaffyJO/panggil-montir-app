part of 'tipe_bloc.dart';

@freezed
class TipeState with _$TipeState {
  const factory TipeState.initial() = _Initial;
  const factory TipeState.loading() = _Loading;
  const factory TipeState.failure(String message) = _Failure;
  const factory TipeState.success(List<Tipe> types) = _Success;
}
