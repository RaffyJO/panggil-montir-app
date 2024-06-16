import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

class ServiceItem extends StatelessWidget {
  final String name;
  const ServiceItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 48 - 20) / 2,
      height: 100,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: greyColor, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Gambar',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          verticalSpace(2),
          Text(
            name,
            style: greyTextStyle.copyWith(fontWeight: semiBold),
          )
        ],
      ),
    );
  }
}
