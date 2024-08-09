import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/motorcycle_remote_datasource.dart';
import 'package:panggil_montir_app/domain/entities/tipe.dart';

part 'tipe_bloc.freezed.dart';
part 'tipe_event.dart';
part 'tipe_state.dart';

class TipeBloc extends Bloc<TipeEvent, TipeState> {
  final MotorcycleRemoteDatasource _motorcycleRemoteDatasource;
  TipeBloc(this._motorcycleRemoteDatasource) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const _Success([]));
    });

    on<_GetListTypes>((event, emit) async {
      emit(const _Loading());
      final response =
          await _motorcycleRemoteDatasource.getTypes(event.brandId);
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
