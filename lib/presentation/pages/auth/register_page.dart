import 'package:flutter/material.dart';
import 'package:panggil_montir_app/data/dto/register_model.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/auth/phone_number_page.dart';
import 'package:panggil_montir_app/presentation/widgets/text_field.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  bool validate() {
    if (emailController.text.isEmpty ||
        nameController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }

  RegisterPage({super.key});

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
                  "Daftar Sekarang",
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 20),
                ),
                Text(
                  "Masukkan data pribadi kamu untuk menikmati fitur kami",
                  style:
                      greyTextStyle.copyWith(fontWeight: medium, fontSize: 14),
                ),
                verticalSpace(24),
                CustomTextField(
                  title: 'Nama',
                  hintText: 'John Doe',
                  controller: nameController,
                ),
                verticalSpace(20),
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
                verticalSpace(32),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PhoneNumberPage(
                                data: RegisterModel(
                                  email: emailController.text,
                                  name: nameController.text,
                                  password: passwordController.text,
                                ),
                              ),
                            ),
                          );
                        } else {
                          showCustomSnackbar(context,
                              'Mohon lengkapi semua data terlebih dahulu');
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
                        'Daftar',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      )),
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
                      color: Colors.white,
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
                          'Daftar dengan Google',
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
                      "Sudah punya akun? ",
                      style: blackTextStyle.copyWith(fontWeight: semiBold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/login', (route) => false);
                      },
                      child: Text(
                        'Masuk',
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
