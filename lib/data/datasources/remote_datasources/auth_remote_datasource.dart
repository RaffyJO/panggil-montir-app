import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/presentation/extension/values.dart';

import '../../dto/login_response.dart';
import '../local_datasources/auth_local_datasources.dart';

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
      String email, String password) async {
    final url = Uri.parse('$baseUrl/api/user/login');
    final response = await http.post(
      url,
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final authResponseModel =
          AuthResponseModel.fromJson(jsonDecode(response.body));
      await AuthLocalDataSource().saveAuthData(authResponseModel);
      return Right(authResponseModel);
    } else {
      return const Left('Email atau password salah');
    }
  }

  Future<Either<String, String>> logout() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    if (authDataModel == null) {
      return const Left('Tidak ada data auth');
    }

    final url = Uri.parse('$baseUrl/api/user/logout');
    final response = await http.post(
      url,
      headers: {
        'Authorization': 'Bearer ${authDataModel.token}',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      await AuthLocalDataSource().removeAuthData();
      return const Right('Logout berhasil');
    } else {
      return const Left('Logout gagal');
    }
  }

  Future<Either<String, AuthResponseModel>> getCurrentUser() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-current-user');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      final authResponseModel =
          AuthResponseModel.fromJson(jsonDecode(response.body));
      return Right(authResponseModel);
    } else {
      return Left(response.body);
    }
  }
}
