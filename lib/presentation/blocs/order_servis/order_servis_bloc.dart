import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/panggil_servis/order_remote_datasource.dart';
import 'package:panggil_montir_app/data/dto/order_panggil_servis_model.dart';

part 'order_servis_bloc.freezed.dart';
part 'order_servis_event.dart';
part 'order_servis_state.dart';

class OrderServisBloc extends Bloc<OrderServisEvent, OrderServisState> {
  final OrderServisRemoteDatasource _orderServisRemoteDatasource;
  OrderServisBloc(
    this._orderServisRemoteDatasource,
  ) : super(const _Initial()) {
    on<_StoreOrderServis>((event, emit) async {
      emit(const _Loading());
      final response = await _orderServisRemoteDatasource.storeOrderServis(
        event.order,
      );
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(const _Success()),
      );
    });
  }
}
