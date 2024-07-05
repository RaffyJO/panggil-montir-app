import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/address_remote_datasource.dart';
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
  }
}
