import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/profile/methods/profile_item.dart';
import 'package:panggil_montir_app/presentation/pages/profile/methods/user_info.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              userInfo(
                name: "Raffy Jamil Octavialdy",
                email: "raffy24@gmail.com",
                noHp: "+681287459843",
                profilePicture: "",
                points: '0',
              ),
              verticalSpace(4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Akun',
                  style: blackTextStyle.copyWith(
                    color: blackColor,
                    fontWeight: semiBold,
                    fontSize: 13,
                  ),
                ),
              ),
              verticalSpace(8),
              Container(
                color: whiteColor,
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                width: double.infinity,
                height: 310,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    profileItem(
                      'Membership',
                      const Icon(
                        Icons.calendar_month_outlined,
                        size: 28,
                      ),
                      onTap: () async {
                        if (await Navigator.pushNamed(context, '/pin') ==
                            true) {
                          Navigator.pushNamed(context, '/profile-edit-pin');
                        }
                      },
                    ),
                    verticalSpace(5),
                    profileItem(
                      'Rumahku',
                      const Icon(
                        Icons.location_on_outlined,
                        size: 28,
                      ),
                      onTap: () async {
                        if (await Navigator.pushNamed(context, '/pin') ==
                            true) {
                          Navigator.pushNamed(context, '/profile-edit-pin');
                        }
                      },
                    ),
                    verticalSpace(5),
                    profileItem(
                      'Kendaraanku',
                      const Icon(
                        Icons.motorcycle_outlined,
                        size: 28,
                      ),
                      onTap: () async {
                        if (await Navigator.pushNamed(context, '/pin') ==
                            true) {
                          Navigator.pushNamed(context, '/profile-edit-pin');
                        }
                      },
                    ),
                    verticalSpace(5),
                    profileItem(
                      'Dompet',
                      const Icon(
                        Icons.account_balance_wallet_outlined,
                        size: 28,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/upcoming');
                      },
                    ),
                    verticalSpace(5),
                    profileItem(
                      'Pointku',
                      const Icon(
                        Icons.celebration_outlined,
                        size: 28,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/upcoming');
                      },
                    ),
                    verticalSpace(5),
                    profileItem(
                        'Ajak teman, dapet point',
                        const Icon(
                          Icons.people_outlined,
                          size: 28,
                        ), onTap: () {
                      Navigator.pushNamed(context, '/upcoming');
                    }, isDivider: false),
                  ],
                ),
              ),
              verticalSpace(12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Info lainnya',
                  style: blackTextStyle.copyWith(
                    color: blackColor,
                    fontWeight: semiBold,
                    fontSize: 13,
                  ),
                ),
              ),
              verticalSpace(4),
              Container(
                color: whiteColor,
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                width: double.infinity,
                height: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    profileItem(
                      'Bantuan',
                      const Icon(
                        Icons.help_outline,
                        size: 28,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/upcoming');
                      },
                    ),
                    verticalSpace(5),
                    profileItem(
                        'Ketentuan & privasi',
                        const Icon(
                          Icons.info_outline_rounded,
                          size: 28,
                        ), onTap: () {
                      Navigator.pushNamed(context, '/upcoming');
                    }, isDivider: false),
                  ],
                ),
              ),
              verticalSpace(24),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: whiteColor,
                    backgroundColor: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Text(
                    'Log Out',
                    style: redTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
              verticalSpace(20),
              Center(
                child: Text(
                  'Version 0.0.1',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
