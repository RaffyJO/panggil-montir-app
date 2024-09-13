import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListBengkelSkeleton extends StatelessWidget {
  const ListBengkelSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: whiteColor,
          ),
          Container(
            height: 52.0,
            color: whiteColor,
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: blueColor,
                ),
                horizontalSpace(12),
                Expanded(
                  child: Text(
                    'Lokasi Saya : Jl. Kebon Jeruk No. 12, Kebon Jeruk.',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
          for (int i = 0; i < 3; i++)
            Container(
              padding: const EdgeInsets.all(12),
              color: whiteColor,
              height: 140,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/img_montir.png',
                        width: 90,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      horizontalSpace(8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama Bengkel',
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: blueColor,
                                  size: 16,
                                ),
                                horizontalSpace(2),
                                Expanded(
                                  child: Text(
                                    'Jalan Bengkel No. 12, Kebon Jeruk',
                                    style: blackTextStyle,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  " - 00 km",
                                  style: blackTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mulai Dari",
                            style: greyTextStyle,
                          ),
                          Text(
                            formatCurrency(00000),
                            style: blueTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextButton(
                          onPressed: null,
                          child: Text(
                            "Pilih Bengkel",
                            style: whiteTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
