import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/transaction_remote_datasource.dart';
import 'package:panggil_montir_app/domain/entities/order.dart';

part 'transaction_bloc.freezed.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionRemoteDatasource _transactionRemoteDatasource;
  TransactionBloc(
    this._transactionRemoteDatasource,
  ) : super(const _Initial()) {
    // Get transactions
    on<_GetTransactions>((event, emit) async {
      emit(const _Loading());
      final response = await _transactionRemoteDatasource.getTransactions();
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
