import '../../domain/entities/user.dart';

class AuthResponseModel {
  final User? user;
  final String? token;

  AuthResponseModel({
    this.user,
    this.token,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    // Ambil data dari json["data"]
    final data = json["data"];

    if (data != null) {
      // Jika data ada, ambil user dan token dari data
      final userData = data["user"];
      final user = userData != null ? User.fromJson(userData) : null;

      return AuthResponseModel(
        user: user,
        token: data["token"],
      );
    } else {
      return AuthResponseModel(
        user: null,
        token: null,
      );
    }
  }

  Map<String, dynamic> toJson() => {
        "data": {
          "user": user?.toJson(),
          "token": token,
        },
      };
}
