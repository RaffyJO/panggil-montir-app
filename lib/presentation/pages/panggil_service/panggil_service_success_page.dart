import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

class PanggilServiceSuccessPage extends StatelessWidget {
  const PanggilServiceSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie/success.json',
                repeat: false,
              ),
              Text(
                'Booking\n Telah Berhasil!',
                style:
                    blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
                textAlign: TextAlign.center,
              ),
              verticalSpace(16),
              Text(
                'Cek histori pemesanan\nuntuk melihat detail pemesanan',
                style: greyTextStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              verticalSpace(50),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: whiteColor,
                    backgroundColor: orangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Kembali ke Dashboard',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
