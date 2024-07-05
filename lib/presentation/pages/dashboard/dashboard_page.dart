import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/address/address_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/list_bengkel/list_bengkel.dart';
import 'package:panggil_montir_app/presentation/widgets/service_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<String> promotionsImageFileNames = const [
    'https://i.ytimg.com/vi/sN-Cjxt3C70/maxresdefault.jpg',
    'https://i.ytimg.com/vi/4_CS4ivAGGM/maxresdefault.jpg',
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjIRdaZYsH8W1TkLKkGCLUBWX_bSilAbaAL4qmw6kXT4OTpz059WjHH67mBCp1vIMniHGaSCmykOja_HU_0TWndyaqDfQCWAOm_q_YenjV1Rm9QmQfARpo2bg-7UZL6YoZ7rDv5S5mvqc8GzMIGRwtLOyvkGmsITOCg5c9ewXKk79o4tJT_KGOeloRrgQ/w1200-h630-p-k-no-nu/BANNER%20MOTOR%20a.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 48, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/img_logo.png',
                      width: 60,
                    ),
                    horizontalSpace(8),
                    Text(
                      'PanggilMontir',
                      style: blueTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.notifications_active,
                  size: 28,
                ),
              ],
            ),
            verticalSpace(16),
            Container(
              width: MediaQuery.of(context).size.width - 24 - 24,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Layanan servis apa yang anda cari...',
                  hintStyle: TextStyle(color: Colors.black54),
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            verticalSpace(24),
            CarouselSlider.builder(
              itemCount: promotionsImageFileNames.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    promotionsImageFileNames[itemIndex],
                    width: double.infinity,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              options: CarouselOptions(
                height: 160,
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                aspectRatio: 2.0,
                initialPage: 2,
                autoPlayInterval: const Duration(seconds: 4),
              ),
            ),
            verticalSpace(24),
            Text(
              'Service',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            verticalSpace(12),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // selectedDataInternet = dataInternet;
                    });
                  },
                  child: const ServiceItem(
                    name: 'Panggil Darurat',
                  ),
                ),
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
                  child: const ServiceItem(
                    name: 'Panggil Servis',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // selectedDataInternet = dataInternet;
                    });
                  },
                  child: const ServiceItem(
                    name: 'Inspeksi',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // selectedDataInternet = dataInternet;
                    });
                  },
                  child: const ServiceItem(
                    name: 'Membership',
                  ),
                ),
              ],
            ),
            verticalSpace(24),
            Text(
              'Artikel',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            verticalSpace(12),
          ],
        ),
      ),
    );
  }
}
