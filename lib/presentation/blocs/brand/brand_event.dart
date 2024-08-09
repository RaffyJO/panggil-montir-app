part of 'brand_bloc.dart';

@freezed
class BrandEvent with _$BrandEvent {
  const factory BrandEvent.started() = _Started;
  const factory BrandEvent.getListBrands() = _GetListBrands;
}
