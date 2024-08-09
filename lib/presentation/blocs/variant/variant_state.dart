part of 'variant_bloc.dart';

@freezed
class VariantState with _$VariantState {
  const factory VariantState.initial() = _Initial;
  const factory VariantState.loading() = _Loading;
  const factory VariantState.failure(String message) = _Failure;
  const factory VariantState.success(List<Variant> variants) = _Success;
}
