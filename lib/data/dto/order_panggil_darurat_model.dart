class OrderPanggilDaruratModel {
  int? serviceFee;
  final String? issue;
  final String? notes;
  final String? address;
  final String? latitude;
  final String? longitude;

  OrderPanggilDaruratModel({
    this.serviceFee,
    this.issue,
    this.notes,
    this.address,
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toJson() {
    return {
      'service_fee': serviceFee,
      'issue': issue,
      'notes': notes,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
