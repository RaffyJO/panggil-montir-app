import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/auth_remote_datasource.dart';
import 'package:panggil_montir_app/data/dto/register_model.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/auth/otp_page.dart';
import 'package:panggil_montir_app/presentation/widgets/text_field.dart';

class PhoneNumberPage extends StatefulWidget {
  final RegisterModel data;

  const PhoneNumberPage({super.key, required this.data});

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  final TextEditingController _phoneController = TextEditingController();
  final AuthRemoteDatasource _authRemoteDatasource = AuthRemoteDatasource();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? verificationId;

    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            verticalSpace(80),
            Lottie.asset(
              'assets/lottie/phone_number.json',
              width: 220,
            ),
            verticalSpace(20),
            Text(
              'Daftarkan Nomor Telepon',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            verticalSpace(20),
            Text(
              'Masukkan nomor telepon Anda. Kami akan\nmengirimkan kode OTP ke ponsel Anda',
              style: blackTextStyle.copyWith(fontWeight: medium),
              textAlign: TextAlign.center,
            ),
            verticalSpace(24),
            CustomTextField(
              title: 'Nomor Telepon',
              hintText: '812....',
              isShowTitle: false,
              isPhoneNumber: true,
              textInputType: TextInputType.phone,
              controller: _phoneController,
            ),
            verticalSpace(28),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  await _authRemoteDatasource
                      .sendOtp("+62${_phoneController.text}");
                  // Tunggu hingga verificationId tidak null atau memiliki nilai yang valid
                  while (_authRemoteDatasource.verificationId == "") {
                    await Future.delayed(const Duration(milliseconds: 100));
                  }
                  verificationId = _authRemoteDatasource.verificationId;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpPage(
                        data: widget.data.copyWith(
                          phone: _phoneController.text,
                        ),
                        verificationId: verificationId,
                      ),
                    ),
                  );
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
          ],
        ),
      ),
    );
  }
}
