import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/garage_remote_datasource.dart';
import 'package:panggil_montir_app/domain/entities/garage.dart';

part 'garage_bloc.freezed.dart';
part 'garage_event.dart';
part 'garage_state.dart';

class GarageBloc extends Bloc<GarageEvent, GarageState> {
  final GarageRemoteDatasource _garageRemoteDatasource;
  GarageBloc(
    this._garageRemoteDatasource,
  ) : super(const _Initial()) {
    on<GarageEvent>((event, emit) async {
      emit(const _Loading());
      final result = await _garageRemoteDatasource.getGarages();
      result.fold(
        (l) => emit(_Failure(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
