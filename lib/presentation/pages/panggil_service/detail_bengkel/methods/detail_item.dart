import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

Widget detailItem(String name, Icon icons, String title,
        {bool isDivider = true, VoidCallback? onTap, double width = 100}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icons,
                    horizontalSpace(2),
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                Text(
                  name,
                  style: blackTextStyle,
                ),
              ],
            ),
          ),
          isDivider
              ? VerticalDivider(
                  color: Colors.grey[200],
                )
              : VerticalDivider(
                  color: Colors.grey[100],
                )
        ],
      ),
    );
