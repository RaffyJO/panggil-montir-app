import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/panggil_darurat/order_darurat_remote_datasource.dart';
import 'package:panggil_montir_app/data/dto/order_panggil_darurat_model.dart';
import 'package:panggil_montir_app/domain/entities/order.dart';

part 'order_darurat_bloc.freezed.dart';
part 'order_darurat_event.dart';
part 'order_darurat_state.dart';

class OrderDaruratBloc extends Bloc<OrderDaruratEvent, OrderDaruratState> {
  final OrderDaruratRemoteDatasource _orderDaruratRemoteDatasource;
  Timer? _pollingTimer; // Tambahkan timer untuk polling

  OrderDaruratBloc(this._orderDaruratRemoteDatasource)
      : super(const _Initial()) {
    on<_FindMontir>((event, emit) async {
      emit(const _Loading());
      final response =
          await _orderDaruratRemoteDatasource.findMontir(event.order);
      response.fold((l) => emit(_Failure(l)), (r) {
        emit(_Success(r));
        _startPolling(r.code!); // Mulai polling setelah mendapatkan data
      });
    });

    // Event: cancel order
    on<_CancelOrder>((event, emit) async {
      emit(const _Loading());
      final response =
          await _orderDaruratRemoteDatasource.cancelOrder(event.orderCode);
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(const _Initial()),
      );
    });
  }

  void _startPolling(String orderCode) {
    // Mulai polling dengan interval 5 detik
    _pollingTimer = Timer.periodic(const Duration(seconds: 5), (timer) async {
      final response =
          await _orderDaruratRemoteDatasource.getCurrentOrder(orderCode);
      response.fold(
        (l) => emit(OrderDaruratState.failure(l)), // Tangani error jika ada
        (r) {
          if (r.montir!.name != "") {
            _pollingTimer
                ?.cancel(); // Hentikan polling jika status berubah menjadi ongoing
            emit(OrderDaruratState.success(
                r)); // Emit success state dengan data baru
          }
        },
      );
    });
  }

  @override
  Future<void> close() {
    _pollingTimer?.cancel(); // Hentikan polling ketika Bloc dihancurkan
    return super.close();
  }
}
