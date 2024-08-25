import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/address_remote_datasource.dart';
import 'package:panggil_montir_app/data/dto/address_create_model.dart';
import 'package:panggil_montir_app/domain/entities/address.dart';

part 'address_bloc.freezed.dart';
part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final AddressRemoteDatasource _addressRemoteDatasource;
  AddressBloc(
    this._addressRemoteDatasource,
  ) : super(const _Initial()) {
    // Get current address
    on<_GetCurentAddress>((event, emit) async {
      emit(const _Loading());
      final response = await _addressRemoteDatasource.getCurrentAddress();
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_Success(r)),
      );
    });

    // Get all addresses
    on<_GetListAddress>((event, emit) async {
      emit(const _Loading());
      final response = await _addressRemoteDatasource.getListAddress();
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_SuccessList(r)),
      );
    });

    // Delete address
    on<_DeleteAddress>((event, emit) async {
      List<Address> addresses = [];

      // Mengambil daftar address dari state saat ini jika ada
      state.maybeWhen(
        successList: (list) => addresses = List<Address>.from(list),
        orElse: () {},
      );

      emit(const _Loading());
      final response = await _addressRemoteDatasource.deleteAddress(event.id);
      response.fold(
        (l) {
          emit(_Failure(l));
          emit(_SuccessList(addresses));
        },
        (r) {
          addresses.removeWhere((element) => element.id == event.id);
          emit(_SuccessList(addresses));
        },
      );
    });

    // Add address
    on<_AddAddress>((event, emit) async {
      List<Address> addresses = [];

      // Mengambil daftar address dari state saat ini jika ada
      state.maybeWhen(
        successList: (list) => addresses = List<Address>.from(list),
        orElse: () {},
      );

      emit(const _Loading());

      final response = await _addressRemoteDatasource.addAddress(event.address);
      response.fold(
        (l) => emit(_Failure(l)),
        (r) {
          addresses.add(r); // Tambahkan address baru ke daftar
          emit(_SuccessList(
              addresses)); // Emit state baru dengan daftar yang diperbarui
        },
      );
    });

    // Change selected address
    on<_ChangeSelectedAddress>((event, emit) async {
      emit(const _Loading());
      final response = await _addressRemoteDatasource.changeSelectedAddress(
        event.id,
      );
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_SuccessList(r)),
      );
    });
  }
}
