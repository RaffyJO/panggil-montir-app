import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:panggil_montir_app/domain/entities/garage.dart';
import 'package:panggil_montir_app/domain/entities/montir.dart';
import 'package:panggil_montir_app/domain/entities/motorcycle.dart';
import 'package:panggil_montir_app/domain/entities/order_type.dart';
import 'package:panggil_montir_app/domain/entities/payment_method.dart';
import 'package:panggil_montir_app/domain/entities/service.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    int? id,
    String? code,
    String? issue,
    String? notes,
    int? serviceFee,
    int? deliveryFee,
    DateTime? orderDate,
    DateTime? bookedDate,
    DateTime? completedDate,
    String? address,
    String? latitude,
    String? longitude,
    String? status,
    OrderType? orderType,
    Garage? garage,
    Motorcycle? motorcycle,
    Montir? montir,
    PaymentMethod? paymentMethod,
    List<Service>? services,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json['id'],
        code: json['code'],
        issue: json['issue'],
        notes: json['notes'],
        serviceFee: json['service_fee'],
        deliveryFee: json['delivery_fee'],
        orderDate: DateTime.parse(json['order_date']),
        bookedDate: DateTime.parse(json['booked_date']),
        completedDate: DateTime.parse(json['completed_date']),
        address: json['address'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        status: json['status'],
        orderType: OrderType.fromJson(json['order_type']),
        garage: Garage.fromJson(json['garage']),
        motorcycle: Motorcycle.fromJson(json['motorcycle']),
        montir: Montir.fromJson(json['montir']),
        paymentMethod: PaymentMethod.fromJson(json['payment']),
        services: (json['services'] as List<dynamic>?)
                ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
      );
}
