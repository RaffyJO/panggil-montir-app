import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/data/datasources/local_datasources/auth_local_datasources.dart';
import 'package:panggil_montir_app/domain/entities/order.dart' as order;
import 'package:panggil_montir_app/presentation/extension/values.dart';

class TransactionRemoteDatasource {
  Future<Either<String, List<order.Order>>> getTransactions() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-history-order');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
    });

    if (response.statusCode == 200) {
      final List<dynamic> jsonData =
          jsonDecode(response.body)['data'] as List<dynamic>;
      final transactions =
          jsonData.map((json) => order.Order.fromJson(json)).toList();
      return Right(transactions);
    } else {
      return Left(response.body);
    }
  }
}
