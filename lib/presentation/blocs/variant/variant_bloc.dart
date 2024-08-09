import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/motorcycle_remote_datasource.dart';
import 'package:panggil_montir_app/domain/entities/variant.dart';

part 'variant_bloc.freezed.dart';
part 'variant_event.dart';
part 'variant_state.dart';

class VariantBloc extends Bloc<VariantEvent, VariantState> {
  final MotorcycleRemoteDatasource _motorcycleRemoteDatasource;
  VariantBloc(this._motorcycleRemoteDatasource) : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const _Success([]));
    });

    on<_GetListVariants>((event, emit) async {
      emit(const _Loading());
      final response =
          await _motorcycleRemoteDatasource.getVariants(event.typeId);
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
