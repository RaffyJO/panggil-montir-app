import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/booking_detail/methods/detail_layanan.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/panggil_service_success_page.dart';

class BookingDetail extends StatefulWidget {
  const BookingDetail({super.key});

  @override
  State<BookingDetail> createState() => _BookingDetailState();
}

class _BookingDetailState extends State<BookingDetail> {
  DateTime? selectedDate;
  TextEditingController detailAddressController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: Text(
          "Booking Detail",
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  width: double.infinity,
                  height: 95,
                  color: whiteColor,
                  child: Row(
                    children: [
                      Image.network(
                        "https://i.ytimg.com/vi/sN-Cjxt3C70/maxresdefault.jpg",
                        width: 100,
                        height: 70,
                      ),
                      horizontalSpace(12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MARGORAGA MOTOR',
                            style: blackTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 16,
                            ),
                          ),
                          verticalSpace(2),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: blueColor,
                                size: 16,
                              ),
                              horizontalSpace(4),
                              Text(
                                "Lowokwaru, Kota Malang",
                                style: blackTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    height: 52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.motorcycle_outlined,
                              color: blueColor,
                              size: 28,
                            ),
                            horizontalSpace(8),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 120,
                              child: Text(
                                "Sepeda TDR 3000 Baru, PlatXXXX, 2012",
                                style: blackTextStyle,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: blueColor,
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpace(16),
                Container(
                  color: Colors.grey[200],
                  width: double.infinity,
                  height: 8,
                ),
                verticalSpace(16),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  padding: const EdgeInsets.all(12),
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: greyColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pilih Jadwal',
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      verticalSpace(4),
                      DateTimeFormField(
                        decoration: InputDecoration(
                          labelText: 'Tanggal & Waktu',
                          fillColor: blueColor,
                        ),
                        firstDate: DateTime.now().add(const Duration(days: 10)),
                        lastDate: DateTime.now().add(const Duration(days: 40)),
                        initialPickerDateTime:
                            DateTime.now().add(const Duration(days: 20)),
                        onChanged: (DateTime? value) {
                          selectedDate = value;
                        },
                      ),
                    ],
                  ),
                ),
                verticalSpace(16),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  padding: const EdgeInsets.all(12),
                  height: 210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: greyColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alamat',
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      verticalSpace(8),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: blueColor,
                            size: 20,
                          ),
                          horizontalSpace(4),
                          Text(
                            "Jl. Borobudur Agung Barat No.8",
                            style: blackTextStyle,
                          ),
                        ],
                      ),
                      verticalSpace(4),
                      TextField(
                        controller: detailAddressController,
                        decoration: const InputDecoration(
                          label: Text("Detail alamat"),
                          hintText: "Cth: Rumah sebelah warung",
                          contentPadding: EdgeInsets.all(12),
                        ),
                        cursorColor: orangeColor,
                      ),
                      verticalSpace(4),
                      TextField(
                        controller: notesController,
                        decoration: const InputDecoration(
                          label: Text("Catatan"),
                          hintText: "Cth: Tolong tepat waktu yaa",
                          contentPadding: EdgeInsets.all(12),
                        ),
                        cursorColor: orangeColor,
                      ),
                    ],
                  ),
                ),
                verticalSpace(16),
                Container(
                  color: Colors.grey[200],
                  width: double.infinity,
                  height: 8,
                ),
                verticalSpace(16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Detail Layanan',
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return detailLayanan(
                            "Service Berkala",
                            "Servis rutin tiap bulannya dengan pengecekan rem, oli, aki, dll",
                            "50.000",
                            onTap: () {},
                          );
                        },
                      ),
                    ],
                  ),
                ),
                verticalSpace(80)
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: greyColor.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Estimasi Biaya",
                        style: blackTextStyle,
                      ),
                      verticalSpace(2),
                      Text(
                        "Rp100.000",
                        style: blackTextStyle.copyWith(fontWeight: semiBold),
                      ),
                    ],
                  ),
                  Container(
                    height: 36,
                    width: 100,
                    decoration: BoxDecoration(
                      color: orangeColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const PanggilServiceSuccessPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Pesan",
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
