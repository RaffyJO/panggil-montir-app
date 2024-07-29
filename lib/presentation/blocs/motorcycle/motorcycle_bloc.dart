import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/motorcycle_remote_datasource.dart';
import 'package:panggil_montir_app/domain/entities/motorcycle.dart';

part 'motorcycle_bloc.freezed.dart';
part 'motorcycle_event.dart';
part 'motorcycle_state.dart';

class MotorcycleBloc extends Bloc<MotorcycleEvent, MotorcycleState> {
  final MotorcycleRemoteDatasource _motorcycleRemoteDatasource;
  MotorcycleBloc(
    this._motorcycleRemoteDatasource,
  ) : super(const _Initial()) {
    // Get current motorcycle
    on<_GetCurentMotorcycle>((event, emit) async {
      emit(const _Loading());
      final response = await _motorcycleRemoteDatasource.getCurrentMotorcycle();
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_Success(r)),
      );
    });

    // Get list motorcycle
    on<_GetListMotorcycle>((event, emit) async {
      emit(const _Loading());
      final response = await _motorcycleRemoteDatasource.getListMotorcycle();
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_SuccessList(r)),
      );
    });
  }
}
