import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HistoryItemSkeleton extends StatelessWidget {
  const HistoryItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Data",
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 13,
                  ),
                ),
                verticalSpace(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.network(
                              'https://i.ytimg.com/vi/sN-Cjxt3C70/maxresdefault.jpg',
                              width: 72,
                              height: 72,
                              fit: BoxFit.cover,
                            ),
                          ),
                          horizontalSpace(8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Data",
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                verticalSpace(4),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/icon-success.png',
                                      width: 20,
                                    ),
                                    horizontalSpace(4),
                                    Expanded(
                                      child: Text(
                                        'Servis selesai',
                                        style: blackTextStyle.copyWith(
                                          fontWeight: semiBold,
                                          fontSize: 13,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    horizontalSpace(4),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Data",
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 13,
                          ),
                        ),
                        verticalSpace(8),
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Pesan lagi",
                              style: whiteTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
