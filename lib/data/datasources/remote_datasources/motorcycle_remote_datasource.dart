import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/data/datasources/local_datasources/auth_local_datasources.dart';
import 'package:panggil_montir_app/domain/entities/motorcycle.dart';
import 'package:panggil_montir_app/presentation/extension/values.dart';

class MotorcycleRemoteDatasource {
  Future<Either<String, Motorcycle>> getCurrentMotorcycle() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-current-motorcycle');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(
        Motorcycle.fromJson(
          jsonDecode(response.body)['data'],
        ),
      );
    } else {
      return Left(response.body);
    }
  }
}
