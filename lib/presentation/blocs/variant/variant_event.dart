part of 'variant_bloc.dart';

@freezed
class VariantEvent with _$VariantEvent {
  const factory VariantEvent.started() = _Started;
  const factory VariantEvent.getListVariants(int typeId) = _GetListVariants;
}
