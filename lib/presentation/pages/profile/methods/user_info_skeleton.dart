import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:skeletonizer/skeletonizer.dart';

Widget userInfoSkeleton() {
  return Skeletonizer(
    child: Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
      width: double.infinity,
      height: 120,
      color: whiteColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: greyColor, width: 0.2),
              image: const DecorationImage(
                image: AssetImage('assets/images/user-profile.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpace(15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Raffy Jamil 0ctavialdy",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  "raffy@gmail.com",
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  "08123456789",
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              horizontalSpace(5),
              GestureDetector(
                onTap: null,
                child: const Icon(
                  Icons.edit_note_outlined,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
