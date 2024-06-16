import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/detail_bengkel/methods/detail_item.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/detail_bengkel/methods/layanan_item.dart';

class DetailBengkel extends StatefulWidget {
  const DetailBengkel({super.key});

  @override
  State<DetailBengkel> createState() => _DetailBengkelState();
}

class _DetailBengkelState extends State<DetailBengkel> {
  final _controller = ScrollController();
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: Text(
          "Detail Bengkel",
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          CustomScrollView(
            controller: _controller,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      height: 95,
                      color: whiteColor,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    "https://i.ytimg.com/vi/sN-Cjxt3C70/maxresdefault.jpg",
                                    width: 100,
                                    height: 70,
                                  ),
                                  horizontalSpace(12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            Icons.timelapse_rounded,
                                            color: blueColor,
                                            size: 16,
                                          ),
                                          horizontalSpace(4),
                                          Text(
                                            "Buka hingga 22:00 hari ini",
                                            style: blackTextStyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              isFavorite
                                  ? GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: redColor,
                                      ),
                                    )
                                  : GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.favorite_border,
                                      ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey[100],
                      height: 56,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          detailItem(
                            "Ulasan",
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow[700],
                            ),
                            "4.9",
                            onTap: () {},
                          ),
                          detailItem(
                            "Jarak",
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: blueColor,
                            ),
                            "1.27 km",
                            onTap: () {},
                          ),
                          detailItem(
                            "Harga",
                            Icon(
                              Icons.attach_money_rounded,
                              size: 22,
                              color: blueColor,
                            ),
                            "50rb+",
                            onTap: () {},
                          ),
                          detailItem(
                            "Operasional",
                            Icon(
                              Icons.timelapse_rounded,
                              size: 20,
                              color: blueColor,
                            ),
                            "07:00 - 22:00",
                            width: 115,
                            isDivider: false,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(8),
                  ],
                ),
              ),
              SliverStickyHeader(
                header: Material(
                  elevation: 2.0,
                  shadowColor: Colors.black54,
                  child: Container(
                    height: 52.0,
                    color: whiteColor,
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Layanan",
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, i) => layananItem(
                      "Service Berkala",
                      "Servis rutin tiap bulanya dengan pengecekan rem, oli, aki, dll",
                      "50.000",
                    ),
                    childCount: 10,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 12,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                height: 56,
                decoration: BoxDecoration(
                  color: orangeColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(24),
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
                        Text(
                          "Rp100.000",
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: blackColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
