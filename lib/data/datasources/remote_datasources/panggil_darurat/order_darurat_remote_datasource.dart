import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/data/datasources/local_datasources/auth_local_datasources.dart';
import 'package:panggil_montir_app/data/dto/order_panggil_darurat_model.dart';
import 'package:panggil_montir_app/domain/entities/order.dart' as order_darurat;
import 'package:panggil_montir_app/presentation/extension/values.dart';

class OrderDaruratRemoteDatasource {
  Future<Either<String, order_darurat.Order>> findMontir(
      OrderPanggilDaruratModel order) async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/find-montir');
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
      return Right(
        order_darurat.Order.fromJson(
          jsonDecode(response.body)['data'],
        ),
      );
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, order_darurat.Order>> getCurrentOrder(
      String orderCode) async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url =
        Uri.parse('$baseUrl/api/user/get-current-order-darurat/$orderCode');
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer ${authDataModel?.token}',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Right(
        order_darurat.Order.fromJson(
          jsonDecode(response.body)['data'],
        ),
      );
    } else {
      return Left(response.body);
    }
  }
}
