import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/garage_remote_datasource.dart';
import 'package:panggil_montir_app/domain/entities/garage.dart';

part 'garage_bloc.freezed.dart';
part 'garage_event.dart';
part 'garage_state.dart';

class GarageBloc extends Bloc<GarageEvent, GarageState> {
  final GarageRemoteDatasource _garageRemoteDatasource;

  GarageBloc(this._garageRemoteDatasource)
      : super(const GarageState.initial()) {
    on<GarageEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(const GarageState.initial());
        },
        getGarages: (e) async {
          if (state is _Success && (state as _Success).hasReachedMax) return;
          await _fetchGarages(emit);
        },
        garageFetched: (e) async {
          await _fetchGarages(emit);
        },
        garageRefresh: (e) async {
          emit(const GarageState.initial());
          await _fetchGarages(emit, isRefresh: true);
        },
      );
    });
  }

  Future<void> _fetchGarages(Emitter<GarageState> emit,
      {bool isRefresh = false}) async {
    try {
      final currentState = state;
      final currentPage = currentState is _Success && !isRefresh
          ? (currentState.garages.length ~/ 10) + 1
          : 1;

      if (!isRefresh) emit(const GarageState.loading());

      final result = await _garageRemoteDatasource.getGarages(currentPage);

      result.fold(
        (failure) => emit(GarageState.failure(failure)),
        (garages) {
          final hasReachedMax = garages.length < 10;
          final allGarages = isRefresh
              ? garages
              : (currentState is _Success
                  ? currentState.garages + garages
                  : garages);

          emit(GarageState.success(
              garages: allGarages, hasReachedMax: hasReachedMax));
        },
      );
    } catch (e) {
      emit(GarageState.failure(e.toString()));
    }
  }
}
