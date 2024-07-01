import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

Widget bengkelItem(
        String name, String location, double distance, int price, String image,
        {bool isDivider = true, VoidCallback? onTap}) =>
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
              Image.network(
                image,
                width: 90,
                height: 60,
              ),
              horizontalSpace(8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
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
                            location,
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
                          " - $distance km",
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
                    formatCurrency(price),
                    style: blueTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              Container(
                height: 36,
                decoration: BoxDecoration(
                  color: blueColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: onTap,
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
    );
