import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/address/address_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_darurat/order_page.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/list_bengkel/list_bengkel.dart';

Widget userServices(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
        onTap: () {
          context
              .read<AddressBloc>()
              .add(const AddressEvent.getCurentAddress());
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ListBengkel(),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/icon-service.png',
              width: 48,
            ),
            verticalSpace(4),
            Text(
              'Service',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OrderPage(),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/icon-darurat.png',
              width: 48,
            ),
            verticalSpace(4),
            Text(
              'Darurat',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/upcoming');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/icon-inspeksi.png',
              width: 48,
            ),
            verticalSpace(4),
            Text(
              'Inspeksi',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      ),
      GestureDetector(
        onTap: () {
          // showDialog(
          //     context: context, builder: (context) => const MoreDialog());
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/icon-membership.png',
              width: 48,
            ),
            verticalSpace(4),
            Text(
              'Member',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      ),
    ],
  );
}
