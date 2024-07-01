import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/domain/entities/operasional_hour.dart';
import 'package:panggil_montir_app/domain/entities/rating.dart';
import 'package:panggil_montir_app/domain/entities/service.dart';

part 'garage.freezed.dart';
part 'garage.g.dart';

@freezed
class Garage with _$Garage {
  const factory Garage({
    int? id,
    String? name,
    String? phone,
    String? address,
    String? latitude,
    String? longitude,
    String? photo,
    double? distance,
    double? avarageRating,
    int? startPrice,
    List<Service>? services,
    List<OperasionalHour>? operasionalHours,
    List<Rating>? ratings,
  }) = _Garage;

  factory Garage.fromJson(Map<String, dynamic> json) => Garage(
        id: json['id'],
        name: json['name'],
        phone: json['phone'],
        address: json['address'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        photo: json['photo'],
        distance: (json['distance'] ?? 0).toDouble(),
        avarageRating: (json['average_rating'] ?? 0).toDouble(),
        startPrice: (json['start_price'] ?? 0).toInt(),
        services: (json['services'] as List<dynamic>?)
                ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        operasionalHours: (json['operasional_hours'] as List<dynamic>?)
                ?.map(
                    (e) => OperasionalHour.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        ratings: json['ratings'],
      );
}
