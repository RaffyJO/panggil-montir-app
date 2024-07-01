import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/data/datasources/local_datasources/auth_local_datasources.dart';
import 'package:panggil_montir_app/domain/entities/garage.dart';
import 'package:panggil_montir_app/presentation/extension/values.dart';

class GarageRemoteDatasource {
  Future<Either<String, List<Garage>>> getGarages() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-garages');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
    });

    if (response.statusCode == 200) {
      return Right(
        List<Garage>.from(
          jsonDecode(response.body)['data'].map(
            (garage) => Garage.fromJson(garage),
          ),
        ).toList(),
      );
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, Garage>> getGaragesById(int id) async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-detail-garage/$id');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
    });

    if (response.statusCode == 200) {
      return Right(
        Garage.fromJson(
          jsonDecode(response.body)['data'],
        ),
      );
    } else {
      return Left(response.body);
    }
  }
}
