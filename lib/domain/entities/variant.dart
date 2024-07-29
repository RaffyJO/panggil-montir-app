import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant.freezed.dart';
part 'variant.g.dart';

@freezed
class Variant with _$Variant {
  const factory Variant({
    int? id,
    String? name,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        id: json['id'],
        name: json['name'],
      );
}
