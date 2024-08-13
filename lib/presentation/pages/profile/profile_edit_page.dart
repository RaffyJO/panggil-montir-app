import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/widgets/text_field.dart';
import 'package:path/path.dart' as path;

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  String? profilePicture;
  String? pathImage;

  @override
  void initState() {
    super.initState();
    final authState = context.read<AuthBloc>().state;

    authState.maybeWhen(
      orElse: () => 'No data',
      loginSuccess: (data) => {
        nameController.text = data.user!.name!,
        emailController.text = data.user!.email!,
        phoneNumberController.text = data.user!.phone!,
        profilePicture = data.user!.photo,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ImageProvider imageProvider;
    if (profilePicture == null || profilePicture == '') {
      imageProvider = const AssetImage('assets/images/user-profile.png');
    } else if (profilePicture!.startsWith('http') ||
        profilePicture!.startsWith('https')) {
      imageProvider = NetworkImage(profilePicture!);
    } else {
      imageProvider = FileImage(File(profilePicture!));
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: blackTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 18,
          ),
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => 'No data',
            loginSuccess: (data) => {
              Navigator.pop(context),
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (message) => showCustomSnackbar(context, message),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Center(
              child: Text('No data'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loginSuccess: (data) => ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children: [
                Column(
                  children: [
                    verticalSpace(30),
                    GestureDetector(
                      onTap: () async {
                        final image = await selectImage();
                        setState(() {
                          profilePicture = image!.path;
                          pathImage = path.basename(image.path);
                        });
                        print(profilePicture);
                        print(pathImage);
                      },
                      child: Center(
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: greyColor, width: 0.2),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    verticalSpace(20),
                    CustomTextField(
                      title: 'Nama',
                      controller: nameController,
                    ),
                    verticalSpace(20),
                    CustomTextField(
                      title: 'Email',
                      controller: emailController,
                    ),
                    verticalSpace(20),
                    CustomTextField(
                      title: 'No Hp',
                      controller: phoneNumberController,
                      textInputType: TextInputType.phone,
                      isPhoneNumber: true,
                    ),
                    verticalSpace(32),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // context.read<AuthBloc>().add(
                        //       AuthUpdateUser(
                        //         UserEditModel(
                        //           userName: userNameController.text,
                        //           name: nameController.text,
                        //           email: emailController.text,
                        //           password: passwordController.text,
                        //         ),
                        //       ),
                        //     );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: whiteColor,
                        backgroundColor: orangeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Update',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
