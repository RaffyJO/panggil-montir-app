class OrderPanggilServisModel {
  final int? garageId;
  final int? paymentId;
  final String? bookedDate;
  int? serviceFee;
  final String? issue;
  final String? notes;
  final List<int>? services;

  OrderPanggilServisModel({
    this.garageId,
    this.paymentId,
    this.bookedDate,
    this.serviceFee,
    this.issue,
    this.notes,
    this.services,
  });

  Map<String, dynamic> toJson() {
    return {
      'garage_id': garageId,
      'payment_id': paymentId,
      'booked_date': bookedDate,
      'service_fee': serviceFee,
      'issue': issue,
      'notes': notes,
      'services': services,
    };
  }
}
