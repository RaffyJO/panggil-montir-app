// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:panggil_montir_app/domain/entities/order.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_darurat/methods/kendala_item.dart';

class FindMontirPage extends StatefulWidget {
  final Order order;

  const FindMontirPage({
    super.key,
    required this.order,
  });

  @override
  State<FindMontirPage> createState() => _FindMontirPageState();
}

class _FindMontirPageState extends State<FindMontirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height - 100,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Lottie.asset('assets/lottie/search.json'),
      ),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                verticalSpace(4),
                Text(
                  "Mencari montir...",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                verticalSpace(4.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.location_pin, color: blueColor),
                      horizontalSpace(8.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lokasi anda",
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            verticalSpace(3),
                            Text(
                              widget.order.address!,
                              maxLines: 3,
                              style: blackTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(12.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.question_answer_rounded,
                            color: blueColor,
                          ),
                          horizontalSpace(8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: whiteColor,
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      KendalaItem(
                                        id: 1,
                                        title: "Mogok",
                                        price: 250000,
                                      ),
                                      horizontalSpace(8),
                                      KendalaItem(
                                        id: 2,
                                        title: "Ban Bocor",
                                        price: 200000,
                                      ),
                                      horizontalSpace(8),
                                      KendalaItem(
                                        id: 3,
                                        title: "Rem Blong",
                                        price: 300000,
                                      ),
                                      horizontalSpace(8),
                                      // KendalaItem(
                                      //   id: 4,
                                      //   title: "Lainnya",
                                      //   price: 0,
                                      // ),
                                    ],
                                  ),
                                ),
                                verticalSpace(10),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  height: 30,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: Colors.grey[300]!,
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.note_alt_sharp,
                                        size: 18,
                                        color: blueColor,
                                      ),
                                      horizontalSpace(2),
                                      Expanded(
                                        child: Text(
                                          widget.order.notes!,
                                          style: blackTextStyle.copyWith(
                                            fontWeight: semiBold,
                                            fontSize: 13,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                verticalSpace(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    height: 42,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
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
                        'Batalkan pesanan',
                        style: redTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ),
                verticalSpace(10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
