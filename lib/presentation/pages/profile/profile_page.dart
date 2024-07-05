import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/address/address_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/auth/auth_bloc.dart';
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
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const Center(
                        child: Text('No data'),
                      );
                    },
                    loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loginSuccess: (data) {
                      return userInfo(
                        name: data.user!.name!,
                        email: data.user!.email!,
                        noHp: data.user!.phone!,
                        profilePicture: "",
                        points: data.user!.point.toString(),
                      );
                    },
                  );
                },
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
                      'Alamatku',
                      const Icon(
                        Icons.location_on_outlined,
                        size: 28,
                      ),
                      onTap: () {
                        context
                            .read<AddressBloc>()
                            .add(const AddressEvent.getListAddress());
                        Navigator.pushNamed(context, '/address');
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
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.maybeWhen(
                    logoutSuccess: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/login', (route) => false);
                    },
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(
                                  const AuthEvent.logout(),
                                );
                          },
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
                      );
                    },
                    loading: () {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.grey[300],
                            backgroundColor: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                color: Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                          ),
                          child: const Text(''),
                        ),
                      );
                    },
                  );
                },
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
          ),
          verticalSpace(80),
        ],
      ),
    );
  }
}
