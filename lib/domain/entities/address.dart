import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    int? id,
    String? title,
    String? description,
    String? latitude,
    String? longitude,
    String? notes,
    bool? isSelected,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        notes: json['notes'],
        isSelected: json['is_selected'],
      );
}
