import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

Widget detailLayanan(String title, String description, String price,
        {bool isAdded = false,
        bool isDivider = true,
        VoidCallback? onTap,
        double height = 0}) =>
    Container(
      padding: const EdgeInsets.only(
        top: 12,
        right: 6,
        left: 6,
        bottom: 0,
      ),
      color: whiteColor,
      height: 150,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 15,
            ),
          ),
          Text(
            description,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: blackTextStyle.copyWith(),
          ),
          verticalSpace(16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harga",
                    style: greyTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    price,
                    style: blueTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
