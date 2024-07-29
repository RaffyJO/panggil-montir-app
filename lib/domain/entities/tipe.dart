import 'package:freezed_annotation/freezed_annotation.dart';

part 'tipe.freezed.dart';
part 'tipe.g.dart';

@freezed
class Tipe with _$Tipe {
  const factory Tipe({
    int? id,
    String? name,
  }) = _Tipe;

  factory Tipe.fromJson(Map<String, dynamic> json) => Tipe(
        id: json['id'],
        name: json['name'],
      );
}
