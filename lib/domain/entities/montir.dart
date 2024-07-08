import 'package:freezed_annotation/freezed_annotation.dart';

part 'montir.freezed.dart';
part 'montir.g.dart';

@freezed
class Montir with _$Montir {
  const factory Montir({
    int? id,
    String? name,
    String? phone,
    String? licencePlate,
    String? photo,
    String? latitude,
    String? longitude,
  }) = _Montir;

  factory Montir.fromJson(Map<String, dynamic> json) => Montir(
        id: json['id'],
        name: json['name'],
        phone: json['phone'],
        licencePlate: json['licence_plate'],
        photo: json['photo'],
        latitude: json['latitude'],
        longitude: json['longitude'],
      );
}
