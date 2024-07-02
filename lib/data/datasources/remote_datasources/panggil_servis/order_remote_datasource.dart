import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/data/dto/order_panggil_servis_model.dart';
import 'package:panggil_montir_app/presentation/extension/values.dart';

import '../../local_datasources/auth_local_datasources.dart';

class OrderServisRemoteDatasource {
  Future<Either<String, void>> storeOrderServis(
      OrderPanggilServisModel order) async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/store-order-servis');
    final response = await http.post(
      url,
      headers: {
        'Authorization': 'Bearer ${authDataModel?.token}',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        order.toJson(),
      ),
    );

    if (response.statusCode == 201) {
      return const Right(null);
    } else {
      return Left(response.body);
    }
  }
}
