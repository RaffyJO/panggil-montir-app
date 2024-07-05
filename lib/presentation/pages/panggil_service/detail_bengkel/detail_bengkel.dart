// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:panggil_montir_app/data/dto/order_panggil_servis_model.dart';
import 'package:panggil_montir_app/domain/entities/garage.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/booking_detail/booking_detail.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/detail_bengkel/methods/detail_item.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/detail_bengkel/methods/layanan_item.dart';

class DetailBengkel extends StatefulWidget {
  final Garage garage;
  const DetailBengkel({
    super.key,
    required this.garage,
  });

  @override
  State<DetailBengkel> createState() => _DetailBengkelState();
}

class _DetailBengkelState extends State<DetailBengkel> {
  final _controller = ScrollController();
  bool isFavorite = false;
  OrderPanggilServisModel order = OrderPanggilServisModel(services: []);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
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
                              Expanded(
                                child: Row(
                                  children: [
                                    Image.network(
                                      "https://i.ytimg.com/vi/sN-Cjxt3C70/maxresdefault.jpg",
                                      width: 100,
                                      height: 70,
                                    ),
                                    horizontalSpace(12),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.garage.name!,
                                            style: blackTextStyle.copyWith(
                                              fontWeight: semiBold,
                                              fontSize: 16,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
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
                                                "Buka hingga ${formatEndHours(widget.garage.operasionalHours!)} hari ini",
                                                style: blackTextStyle,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                            widget.garage.avarageRating!.toString(),
                            onTap: () {},
                          ),
                          detailItem(
                            "Jarak",
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: blueColor,
                            ),
                            "${widget.garage.distance!.toStringAsFixed(2)} km",
                            onTap: () {},
                          ),
                          detailItem(
                            "Harga",
                            Icon(
                              Icons.attach_money_rounded,
                              size: 22,
                              color: blueColor,
                            ),
                            formatPrice(widget.garage.startPrice!),
                            onTap: () {},
                          ),
                          detailItem(
                            "Operasional",
                            Icon(
                              Icons.timelapse_rounded,
                              size: 20,
                              color: blueColor,
                            ),
                            formatOperasionalHours(
                              widget.garage.operasionalHours!,
                            ),
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
                      widget.garage.services![i].name!,
                      widget.garage.services![i].description!,
                      formatCurrency(widget.garage.services![i].price!),
                      isAdded: order.services!
                          .contains(widget.garage.services![i].id!),
                      onTap: () => onServiceTap(widget.garage.services![i].id!),
                    ),
                    childCount: widget.garage.services!.length,
                  ),
                ),
              ),
              SliverStickyHeader(
                header: Container(
                  height: 80,
                ),
              )
            ],
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
                        formatCurrency(getTotalPrice()),
                        style: blackTextStyle.copyWith(fontWeight: semiBold),
                      ),
                    ],
                  ),
                  order.services!.isNotEmpty
                      ? Container(
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
                                  builder: (context) => BookingDetail(
                                    garage: widget.garage,
                                    order: order,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              "Lanjut",
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          height: 36,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextButton(
                            onPressed: null,
                            child: Text(
                              "Lanjut",
                              style: greyTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onServiceTap(int serviceId) {
    setState(() {
      if (order.services!.contains(serviceId)) {
        order.services!.remove(serviceId);
      } else {
        order.services!.add(serviceId);
      }
      order.serviceFee = getTotalPrice();
    });
  }

  int getTotalPrice() {
    int total = 0;
    for (var serviceId in order.services!) {
      var service = widget.garage.services!
          .firstWhere((service) => service.id == serviceId);
      total += service.price!;
    }
    return total;
  }
}
