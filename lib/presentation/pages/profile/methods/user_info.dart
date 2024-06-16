import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

Widget userInfo({
  required String name,
  required String email,
  required String noHp,
  required String profilePicture,
  required String points,
}) {
  return Container(
    padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
    width: double.infinity,
    height: 130,
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
            image: DecorationImage(
              image: (profilePicture == '')
                  ? const AssetImage('assets/images/user-profile.png')
                  : NetworkImage(profilePicture) as ImageProvider,
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
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                email,
                style: blackTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
              Text(
                noHp,
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
            const Icon(
              Icons.edit_note_outlined,
              size: 30,
            ),
          ],
        )
      ],
    ),
  );
}
