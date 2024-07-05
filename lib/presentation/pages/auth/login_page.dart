import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool validateEmailPassword() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      return false;
    }

    return true;
  }

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(40),
                Image.asset(
                  'assets/images/img_logo.png',
                  width: 72,
                ),
                verticalSpace(12),
                Text(
                  "Selamat datang kembali",
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 20),
                ),
                Text(
                  "Masuk dengan email dan password untuk melanjutkan",
                  style:
                      greyTextStyle.copyWith(fontWeight: medium, fontSize: 14),
                ),
                verticalSpace(24),
                CustomTextField(
                  title: 'Email',
                  hintText: 'name@gmail.com',
                  controller: emailController,
                ),
                verticalSpace(20),
                CustomTextField(
                  title: 'Password',
                  hintText: 'Masukkan password',
                  obscureText: true,
                  controller: passwordController,
                ),
                verticalSpace(10),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Lupa password?',
                      style: orangeTextStyle.copyWith(fontWeight: semiBold),
                    ),
                  ),
                ),
                verticalSpace(32),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      loginSuccess: (data) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
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
                        return SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (validateEmailPassword()) {
                                context.read<AuthBloc>().add(
                                      AuthEvent.login(
                                        emailController.text,
                                        passwordController.text,
                                      ),
                                    );
                              } else {
                                showCustomSnackbar(
                                  context,
                                  "Email dan Password tidak boleh kosong",
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: whiteColor,
                              backgroundColor: orangeColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Masuk',
                              style: blackTextStyle.copyWith(
                                  fontSize: 14, fontWeight: semiBold),
                            ),
                          ),
                        );
                      },
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                  },
                ),
                verticalSpace(32),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Divider(
                      color: greyColor,
                      thickness: 1,
                    ),
                    Container(
                      color: whiteColor,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'OR',
                        style: blackTextStyle.copyWith(fontWeight: semiBold),
                      ),
                    ),
                  ],
                ),
                verticalSpace(32),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: greyColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/img_google.png',
                          height: 25,
                        ),
                        horizontalSpace(10),
                        Text(
                          'Masuk dengan Google',
                          style: blackTextStyle.copyWith(fontWeight: semiBold),
                        )
                      ],
                    ),
                  ),
                ),
                verticalSpace(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum punya akun? ",
                      style: blackTextStyle.copyWith(fontWeight: semiBold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/register', (route) => false);
                      },
                      child: Text(
                        'Daftar',
                        style: orangeTextStyle.copyWith(fontWeight: semiBold),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
