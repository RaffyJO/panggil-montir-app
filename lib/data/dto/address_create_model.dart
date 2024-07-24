class AddressCreateModel {
  final String? title;
  final String? description;
  final String? latitude;
  final String? longitude;
  final String? notes;

  AddressCreateModel({
    this.title,
    this.description,
    this.latitude,
    this.longitude,
    this.notes,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'latitude': latitude,
      'longitude': longitude,
      'notes': notes,
    };
  }

  AddressCreateModel copyWith({
    String? title,
    String? description,
    String? latitude,
    String? longitude,
    String? notes,
  }) {
    return AddressCreateModel(
      title: title ?? this.title,
      description: description ?? this.description,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      notes: notes ?? this.notes,
    );
  }
}
