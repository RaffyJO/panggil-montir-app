import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () {},
          loginSuccess: (data) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
          },
          error: (message) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/login', (route) => false);
          },
        );
      },
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_logo.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
