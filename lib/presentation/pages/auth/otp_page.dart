// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:lottie/lottie.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/auth_remote_datasource.dart';
import 'package:panggil_montir_app/data/dto/register_model.dart';
import 'package:panggil_montir_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

class OtpPage extends StatefulWidget {
  final RegisterModel? data;
  final String? verificationId;
  const OtpPage({
    super.key,
    this.data,
    required this.verificationId,
  });

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _otpController = TextEditingController();
  final AuthRemoteDatasource _authRemoteDatasource = AuthRemoteDatasource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            verticalSpace(100),
            Lottie.asset(
              'assets/lottie/otp.json',
              width: 200,
            ),
            verticalSpace(24),
            Text(
              'Verifikasi OTP Anda',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            verticalSpace(20),
            Text(
              'Masukkan kode OTP yang dikirimkan\nke ponsel Anda',
              style: blackTextStyle.copyWith(fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
            verticalSpace(20),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: blackColor.withOpacity(0.1),
              filled: true,
              onSubmit: (value) {
                _otpController.text = value;
              },
            ),
            verticalSpace(24),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  loginSuccess: (data) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  error: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        bool isValid = await _authRemoteDatasource.verifyOtp(
                          _otpController.text,
                          widget.verificationId!,
                        );
                        isValid
                            ? context
                                .read<AuthBloc>()
                                .add(AuthEvent.register(widget.data!))
                            : showCustomSnackbar(context, 'Verifikasi gagal');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: whiteColor,
                        backgroundColor: orangeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Lanjut',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  loading: () => const CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
