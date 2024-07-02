import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/data/datasources/local_datasources/auth_local_datasources.dart';
import 'package:panggil_montir_app/domain/entities/address.dart';
import 'package:panggil_montir_app/presentation/extension/values.dart';

class AddressRemoteDatasource {
  Future<Either<String, Address>> getCurrentAddress() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-current-address');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(
        Address.fromJson(
          jsonDecode(response.body)['data'],
        ),
      );
    } else {
      return Left(response.body);
    }
  }
}
