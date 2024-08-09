import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/motorcycle_remote_datasource.dart';
import 'package:panggil_montir_app/domain/entities/production_year.dart';

part 'production_year_bloc.freezed.dart';
part 'production_year_event.dart';
part 'production_year_state.dart';

class ProductionYearBloc
    extends Bloc<ProductionYearEvent, ProductionYearState> {
  final MotorcycleRemoteDatasource _motorcycleRemoteDatasource;
  ProductionYearBloc(this._motorcycleRemoteDatasource)
      : super(const _Initial()) {
    on<_GetListProductionYears>((event, emit) async {
      emit(const _Loading());
      final response = await _motorcycleRemoteDatasource.getProductionYears();
      response.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
