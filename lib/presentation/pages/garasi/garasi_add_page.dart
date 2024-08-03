import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';

class GarasiAddPage extends StatefulWidget {
  const GarasiAddPage({super.key});

  @override
  State<GarasiAddPage> createState() => _GarasiAddPageState();
}

class _GarasiAddPageState extends State<GarasiAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        title: Text(
          'Tambah Motor',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
