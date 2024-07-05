part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial() = _Initial;
  const factory AddressState.loading() = _Loading;
  const factory AddressState.failure(String message) = _Failure;
  const factory AddressState.success(Address address) = _Success;
  const factory AddressState.successList(List<Address> addresses) =
      _SuccessList;
}
