import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/order_darurat/order_darurat_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({super.key});

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: whiteColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25.0)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey[400]!,
              width: 0.3,
            ),
            boxShadow: [
              BoxShadow(
                color: blackColor,
                blurRadius: 4.0,
                offset: const Offset(2, -2),
              ),
            ],
          ),
          child: BlocConsumer<OrderDaruratBloc, OrderDaruratState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Text("No data"),
                success: (data) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      verticalSpace(4),
                      Text(
                        "Montir ditemukan",
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      verticalSpace(6),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.montir!.licencePlate.toString(),
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  data.montir!.name.toString(),
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                                verticalSpace(4),
                                Row(
                                  children: [
                                    Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: orangeColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.phone,
                                        color: whiteColor,
                                        size: 18,
                                      ),
                                    ),
                                    horizontalSpace(12),
                                    Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: orangeColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.chat,
                                        color: whiteColor,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                width: 68,
                                height: 68,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border:
                                      Border.all(color: greyColor, width: 0.2),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/img_montir.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(4),
                      Divider(
                        color: greyColor,
                        thickness: 0.5,
                      ),
                      verticalSpace(4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Estimasi Biaya",
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            verticalSpace(4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Service tambal ban',
                                  style: blackTextStyle,
                                ),
                                Text(
                                  'Rp20.000',
                                  style: blackTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Biaya perjalanan',
                                  style: blackTextStyle,
                                ),
                                Text(
                                  'Rp5.000',
                                  style: blackTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Biaya jasa aplikasi',
                                  style: blackTextStyle,
                                ),
                                Text(
                                  'Rp2.000',
                                  style: blackTextStyle,
                                ),
                              ],
                            ),
                            verticalSpace(4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  'Rp27.000',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(16),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 6),
                            child: SizedBox(
                              height: 42,
                              width: (MediaQuery.of(context).size.width - 45) *
                                  (2 / 3),
                              child: ElevatedButton(
                                onPressed: () async {},
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: whiteColor,
                                  backgroundColor: orangeColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  'Lanjutkan pesanan',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 8),
                            child: SizedBox(
                              height: 42,
                              width: (MediaQuery.of(context).size.width - 45) *
                                  (1 / 3),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: whiteColor,
                                  backgroundColor: whiteColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    side: const BorderSide(
                                      color: Colors.red,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Batalkan',
                                  style: redTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(10.0),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
