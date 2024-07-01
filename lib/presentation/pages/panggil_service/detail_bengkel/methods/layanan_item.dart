import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

Widget layananItem(String title, String description, String price,
        {bool isAdded = false,
        bool isDivider = true,
        VoidCallback? onTap,
        double height = 0}) =>
    Container(
      padding: const EdgeInsets.only(
        top: 12,
        right: 12,
        left: 12,
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
                    "Mulai dari",
                    style: greyTextStyle,
                  ),
                  Text(
                    price,
                    style: blueTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              isAdded
                  ? Container(
                      height: 36,
                      decoration: BoxDecoration(
                        color: redColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextButton(
                        onPressed: onTap,
                        child: Text(
                          "Batal",
                          style: whiteTextStyle,
                        ),
                      ),
                    )
                  : Container(
                      height: 36,
                      decoration: BoxDecoration(
                        color: blueColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextButton(
                        onPressed: onTap,
                        child: Text(
                          "Tambah",
                          style: whiteTextStyle,
                        ),
                      ),
                    ),
            ],
          ),
          const Divider(),
          verticalSpace(height)
        ],
      ),
    );
