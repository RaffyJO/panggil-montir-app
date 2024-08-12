import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:panggil_montir_app/data/dto/register_model.dart';
import 'package:panggil_montir_app/presentation/extension/values.dart';

import '../../dto/login_response.dart';
import '../local_datasources/auth_local_datasources.dart';

class AuthRemoteDatasource {
  Future<Either<String, bool>> checkEmail(String email) async {
    try {
      final respone = await http.post(
        Uri.parse('$baseUrl/api/user/is-email-exist'),
        body: {
          'email': email,
        },
      );

      if (respone.statusCode == 200) {
        return right(jsonDecode(respone.body)['is_email_exist']);
      } else {
        return Left(jsonDecode(respone.body)['error']['email']);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<Either<String, AuthResponseModel>> register(
      RegisterModel model) async {
    final url = Uri.parse('$baseUrl/api/user/register');
    final response = await http.post(
      url,
      body: model.toJson(),
    );

    if (response.statusCode == 201) {
      final authResponseModel =
          AuthResponseModel.fromJson(jsonDecode(response.body));
      await AuthLocalDataSource().saveAuthData(authResponseModel);
      return Right(authResponseModel);
    } else {
      return Left(response.body);
    }
  }

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

  final _auth = FirebaseAuth.instance;
  String? _verificationId = "";

  // Getter for _verificationId
  String? get verificationId => _verificationId;

  Future<void> sendOtp(String phoneNumber) async {
    try {
      print(phoneNumber);
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: const Duration(seconds: 30),
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          print('Verification failed: ${e.message}');
          // Handle verification failure
        },
        codeSent: (String verificationId, int? resendToken) {
          print('Code sent to $phoneNumber');
          _verificationId = verificationId; // Simpan verificationId
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId; // Simpan verificationId
        },
      );
      print("verificationId: $_verificationId");
    } catch (e) {
      print('Failed to send OTP: $e');
      // Handle error
    }
  }

  Future<bool> verifyOtp(String otp, String verificationId) async {
    try {
      print("verificationId: $verificationId");
      var credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      var result = await _auth.signInWithCredential(credential);
      return result.user != null;
    } catch (e) {
      print('Failed to verify OTP: $e');
      return false;
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

  Future<Either<void, AuthResponseModel>> getCurrentUser() async {
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
      return const Left(null);
    }
  }

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'profile',
      'https://www.googleapis.com/auth/user.phonenumbers.read',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  Future<Either<String, AuthResponseModel>> loginOrSignUpWithGoogle() async {
    try {
      print('Attempting to sign in with Google');
      await _googleSignIn.signOut();
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        print('User canceled the sign-in');
        return const Left('User canceled the sign-in');
      }
      print('Google sign-in result: $googleUser');

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      print('Google Auth result: $googleAuth');

      final String? idToken = googleAuth.idToken;
      final String? accessToken = googleAuth.accessToken;
      print('ID Token: $idToken');
      print('Access Token: $accessToken');

      if (idToken == null) {
        print('Failed to get Google ID token');
        return const Left('Failed to get Google ID token');
      }

      // Kirim idToken ke backend Laravel
      // Lakukan panggilan HTTP ke API backend dengan mengirim idToken
      final response = await http.post(
        Uri.parse('$baseUrl/api/user/google-login-or-signup'),
        body: {
          'idToken': idToken,
          'accessToken': accessToken,
        },
      );

      if (response.statusCode == 200) {
        final authResponseModel =
            AuthResponseModel.fromJson(jsonDecode(response.body));
        await AuthLocalDataSource().saveAuthData(authResponseModel);
        return Right(authResponseModel);
      } else {
        print('Failed to sign in with Google: ${response.body}');
        return Left(response.body);
      }
    } catch (error) {
      print('Error during Google Sign-In: $error');
      return Left('Error during Google Sign-In: $error');
    }
  }
}
