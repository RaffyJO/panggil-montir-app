import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/data/datasources/local_datasources/auth_local_datasources.dart';
import 'package:panggil_montir_app/data/dto/motorcycle_create_model.dart';
import 'package:panggil_montir_app/domain/entities/brand.dart';
import 'package:panggil_montir_app/domain/entities/motorcycle.dart';
import 'package:panggil_montir_app/domain/entities/production_year.dart';
import 'package:panggil_montir_app/domain/entities/tipe.dart';
import 'package:panggil_montir_app/domain/entities/variant.dart';
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

  Future<Either<String, List<Motorcycle>>> getListMotorcycle() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-list-motorcycles');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(
        List<Motorcycle>.from(
          jsonDecode(response.body)['data'].map(
            (motorcycle) => Motorcycle.fromJson(motorcycle),
          ),
        ).toList(),
      );
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, Motorcycle>> addMotorcycle(
      MotorcycleCreateModel motorcycle) async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/store-motorcycle');
    final response = await http.post(
      url,
      headers: {
        'Authorization': 'Bearer ${authDataModel?.token}',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(motorcycle.toJson()),
    );

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

  Future<Either<String, List<Brand>>> getBrands() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-brands');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(
        List<Brand>.from(
          jsonDecode(response.body)['data'].map(
            (brand) => Brand.fromJson(brand),
          ),
        ).toList(),
      );
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, List<Tipe>>> getTypes(int brandId) async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-types/$brandId');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(
        List<Tipe>.from(
          jsonDecode(response.body)['data'].map(
            (tipe) => Tipe.fromJson(tipe),
          ),
        ).toList(),
      );
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, List<Variant>>> getVariants(int typeId) async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-variants/$typeId');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(
        List<Variant>.from(
          jsonDecode(response.body)['data'].map(
            (variant) => Variant.fromJson(variant),
          ),
        ).toList(),
      );
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, List<ProductionYear>>> getProductionYears() async {
    final authDataModel = await AuthLocalDataSource().getAuthData();
    final url = Uri.parse('$baseUrl/api/user/get-production-years');
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer ${authDataModel?.token}',
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return Right(
        List<ProductionYear>.from(
          jsonDecode(response.body)['data'].map(
            (productionYear) => ProductionYear.fromJson(productionYear),
          ),
        ).toList(),
      );
    } else {
      return Left(response.body);
    }
  }
}
