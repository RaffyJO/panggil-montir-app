import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:panggil_montir_app/data/dto/register_model.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/widgets/text_field.dart';

class RegisterSetProfilePage extends StatefulWidget {
  final RegisterModel data;

  const RegisterSetProfilePage({super.key, required this.data});

  @override
  State<RegisterSetProfilePage> createState() => _RegisterSetProfilePageState();
}

class _RegisterSetProfilePageState extends State<RegisterSetProfilePage> {
  final TextEditingController pinController = TextEditingController();
  final TextEditingController confirmationPinController =
      TextEditingController();

  XFile? selectedImage;

  bool validatePin() {
    if (pinController.text.length == 6) {
      return true;
    }

    return false;
  }

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
                verticalSpace(60),
                Text(
                  'Bergabunglah dengan kami untuk menjaga kendaraan Anda',
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 20,
                  ),
                ),
                verticalSpace(40),
                Center(
                  child: GestureDetector(
                    onTap: () async {
                      final image = await selectImage();
                      setState(() {
                        selectedImage = image;
                      });
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                        image: (selectedImage == null)
                            ? null
                            : DecorationImage(
                                fit: BoxFit.cover,
                                image: FileImage(
                                  File(selectedImage!.path),
                                ),
                              ),
                      ),
                      child: (selectedImage != null)
                          ? null
                          : Icon(
                              Icons.add_a_photo,
                              size: 40.0,
                              color: blackColor,
                            ),
                    ),
                  ),
                ),
                verticalSpace(14),
                Center(
                  child: Text(
                    widget.data.name!,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                verticalSpace(40),
                CustomTextField(
                  title: 'Set PIN (6 digit number)',
                  obscureText: true,
                  controller: pinController,
                  textInputType: TextInputType.number,
                ),
                verticalSpace(12),
                CustomTextField(
                  title: 'Confirmation PIN',
                  obscureText: true,
                  controller: confirmationPinController,
                  textInputType: TextInputType.number,
                ),
                verticalSpace(30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (validatePin()) {
                        if (pinController.text ==
                            confirmationPinController.text) {
                        } else {
                          showCustomSnackbar(
                              context, 'Your confirmation PIN is not the same');
                        }
                      } else {
                        showCustomSnackbar(context, 'PIN must be 6 digits');
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
                      'Continue',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
