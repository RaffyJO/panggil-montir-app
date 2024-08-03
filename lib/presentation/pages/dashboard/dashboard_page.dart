import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/dashboard/methods/user_services.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  final List<String> promotionsImageFileNames = const [
    'https://i.ytimg.com/vi/sN-Cjxt3C70/maxresdefault.jpg',
    'https://i.ytimg.com/vi/4_CS4ivAGGM/maxresdefault.jpg',
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjIRdaZYsH8W1TkLKkGCLUBWX_bSilAbaAL4qmw6kXT4OTpz059WjHH67mBCp1vIMniHGaSCmykOja_HU_0TWndyaqDfQCWAOm_q_YenjV1Rm9QmQfARpo2bg-7UZL6YoZ7rDv5S5mvqc8GzMIGRwtLOyvkGmsITOCg5c9ewXKk79o4tJT_KGOeloRrgQ/w1200-h630-p-k-no-nu/BANNER%20MOTOR%20a.jpg'
  ];

  final List<String> artikelTitte = const [
    'Panduan Lengkap Servis Berkala: Cara Menjaga Kendaraan Bermotor Anda Tetap Prima',
    '10 Tips Praktis untuk Merawat Motor Anda Agar Tetap Awet dan Nyaman Dikendarai',
    'Mengenal Tanda-Tanda Kerusakan pada Kendaraan Bermotor dan Cara Mengatasinya'
  ];

  final List<String> artikeImage = const [
    'https://carmudi-journal.icarcdn.com/carmudi-id/wp-content/uploads/2022/02/03194542/Servis-motor-rutin.jpg',
    'https://gpsku.co.id/wp-content/uploads/2021/12/cara-merawat-motor-yang-benar-injeksi.png',
    'https://www.kliknss.co.id/images/d23045e3cd928575df79ce063ff25503.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 40, 16, 24),
              width: double.infinity,
              height: 186,
              decoration: BoxDecoration(
                color: blueColor,
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () {
                              return const Center(
                                child: Text('No data'),
                              );
                            },
                            loading: () {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                            loginSuccess: (data) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    getGreeting(),
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  verticalSpace(2),
                                  Text(
                                    data.user!.name!,
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 15,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      Row(
                        children: [
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Colors.white12,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Icon(
                              Icons.shopping_cart,
                              color: whiteColor,
                              size: 24,
                            ),
                          ),
                          horizontalSpace(8),
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Colors.white12,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Icon(
                              Icons.notifications_active,
                              color: whiteColor,
                              size: 24,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  verticalSpace(28),
                  Container(
                    width: MediaQuery.of(context).size.width - 16 - 16,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                    child: const TextField(
                      readOnly: true,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Layanan servis apa yang anda cari...',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: whiteColor,
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo Terbaru',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  verticalSpace(12),
                  CarouselSlider.builder(
                    itemCount: promotionsImageFileNames.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          promotionsImageFileNames[itemIndex],
                          width: double.infinity,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    options: CarouselOptions(
                      height: 150,
                      autoPlay: true,
                      enlargeCenterPage: false,
                      viewportFraction: 1,
                      aspectRatio: 2.0,
                      initialPage: 2,
                      autoPlayInterval: const Duration(seconds: 4),
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                    carouselController: carouselController,
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: (currentIndex == 0) ? 20 : 8,
                        height: 8,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: (currentIndex == 0) ? blueColor : greyColor,
                        ),
                      ),
                      Container(
                        width: (currentIndex == 1) ? 20 : 8,
                        height: 8,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: (currentIndex == 1) ? blueColor : greyColor,
                        ),
                      ),
                      Container(
                        width: (currentIndex == 2) ? 20 : 8,
                        height: 8,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: (currentIndex == 2) ? blueColor : greyColor,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(12),
                  Text(
                    'Layanan',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  verticalSpace(12),
                  userServices(context),
                  verticalSpace(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Artikel Menarik',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Lihat semua',
                          style: blueTextStyle.copyWith(
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(12),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 120,
                              width: 240,
                              margin: const EdgeInsets.only(right: 12),
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 0.5),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  artikeImage[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            verticalSpace(4),
                            Container(
                              color: whiteColor,
                              width: 240,
                              margin: const EdgeInsets.only(right: 12),
                              child: Text(
                                artikelTitte[index],
                                style: blackTextStyle.copyWith(
                                  fontSize: 13,
                                  fontWeight: semiBold,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(8),
          ],
        ),
      ),
    );
  }
}
