import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

Widget profileItem(String tittle, Icon icon,
        {bool isDivider = true, VoidCallback? onTap}) =>
    GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon,
              horizontalSpace(15),
              Expanded(
                child: Text(
                  tittle,
                  style: blackTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 18,
              )
            ],
          ),
          verticalSpace(5),
          (isDivider)
              ? const Divider(
                  thickness: 0.5,
                )
              : const SizedBox()
        ],
      ),
    );
