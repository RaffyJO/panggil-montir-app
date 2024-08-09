import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/motorcycle_remote_datasource.dart';
import 'package:panggil_montir_app/domain/entities/brand.dart';

part 'brand_bloc.freezed.dart';
part 'brand_event.dart';
part 'brand_state.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final MotorcycleRemoteDatasource _motorcycleRemoteDatasource;
  BrandBloc(this._motorcycleRemoteDatasource) : super(const _Initial()) {
    on<_GetListBrands>((event, emit) async {
      emit(const _Loading());
      final response = await _motorcycleRemoteDatasource.getBrands();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
