part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.started() = _Started;
  const factory AddressEvent.getCurentAddress(AddressCreateModel address) =
      _GetCurentAddress;
  const factory AddressEvent.getListAddress() = _GetListAddress;
  const factory AddressEvent.deleteAddress(int id) = _DeleteAddress;
  const factory AddressEvent.addAddress(AddressCreateModel address) =
      _AddAddress;
  const factory AddressEvent.changeSelectedAddress(int id) =
      _ChangeSelectedAddress;
}
