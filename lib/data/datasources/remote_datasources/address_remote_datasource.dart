import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/data/datasources/local_datasources/auth_local_datasources.dart';
import 'package:panggil_montir_app/data/dto/address_create_model.dart';
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

  Future<Either<String, List<Address>>> getListAddress() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-list-address');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(
        List<Address>.from(
          jsonDecode(response.body)['data'].map(
            (address) => Address.fromJson(address),
          ),
        ).toList(),
      );
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, void>> deleteAddress(int id) async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/delete-address/$id');
    final response = await http.delete(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return const Right(null);
    } else {
      return Left(jsonDecode(response.body)['message']);
    }
  }

  Future<Either<String, Address>> addAddress(AddressCreateModel address) async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/store-address');
    final response = await http.post(
      url,
      headers: {
        'Authorization': 'Bearer ${authDataModel?.token}',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(
        address.toJson(),
      ),
    );

    if (response.statusCode == 201) {
      return Right(
        Address.fromJson(jsonDecode(response.body)['data']),
      );
    } else {
      return Left(jsonDecode(response.body)['message']);
    }
  }
}
