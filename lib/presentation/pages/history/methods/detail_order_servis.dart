import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

class DetailOrderServis extends StatelessWidget {
  const DetailOrderServis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                horizontalSpace(12),
                Text(
                  'Rangkuman pesanan',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            verticalSpace(16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/icon-service.png',
                      width: 32,
                    ),
                    horizontalSpace(4),
                    Text(
                      'Panggil Servis',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Rabu, 29 Mei, 16:29',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            verticalSpace(6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Motor sudah diservis',
                  style: blackTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'Pesanan PS-HDIJVGUSNO',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            color: Colors.grey,
            height: 0.5,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: whiteColor,
                border: const Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Kasih Bintang Dulu Yuk Ke Montir',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: orangeColor,
                        size: 32,
                      ),
                      horizontalSpace(4),
                      Icon(
                        Icons.star,
                        color: orangeColor,
                        size: 32,
                      ),
                      horizontalSpace(4),
                      Icon(
                        Icons.star,
                        color: orangeColor,
                        size: 32,
                      ),
                      horizontalSpace(4),
                      Icon(
                        Icons.star,
                        color: orangeColor,
                        size: 32,
                      ),
                      horizontalSpace(4),
                      Icon(
                        Icons.star,
                        color: orangeColor,
                        size: 32,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: whiteColor,
                border: const Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: greyColor, width: 0.2),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/user-profile.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      horizontalSpace(12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Budiman Susanto',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: semiBold,
                            ),
                          ),
                          verticalSpace(2),
                          Text(
                            'B 3435 BOD',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: orangeColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.phone,
                          color: whiteColor,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 146,
              decoration: BoxDecoration(
                color: whiteColor,
                border: const Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Detail lokasi',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 14,
                    ),
                  ),
                  verticalSpace(12),
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.garage_rounded,
                          color: blueColor,
                          size: 24,
                        ),
                      ),
                      horizontalSpace(12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alamat Bengkel',
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'Bengkel TK Motor Bekasi Utara Teluk Pucung',
                            style: blackTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: semiBold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  verticalSpace(12),
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.location_on_sharp,
                          color: blueColor,
                          size: 24,
                        ),
                      ),
                      horizontalSpace(12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alamat Servis',
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'Jl. Borobudur Agung Tim. VII No.35, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142',
                            style: blackTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: semiBold,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
