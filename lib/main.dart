import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl_standalone.dart'
    if (dart.library.html) 'package:intl/intl_browser.dart';
import 'package:panggil_montir_app/data/datasources/local_datasources/auth_local_datasources.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/auth_remote_datasource.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/garage_remote_datasource.dart';
import 'package:panggil_montir_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/garage/garage_bloc.dart';
import 'package:panggil_montir_app/presentation/pages/auth/login_page.dart';
import 'package:panggil_montir_app/presentation/pages/dashboard/dashboard_page.dart';
import 'package:panggil_montir_app/presentation/pages/main_page.dart';
import 'package:panggil_montir_app/presentation/pages/profile/profile_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await findSystemLocale();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(AuthRemoteDatasource())
            ..add(const AuthEvent.getCurrentUser()),
        ),
        BlocProvider(
          create: (context) => GarageBloc(GarageRemoteDatasource())
            ..add(const GarageEvent.getGarages()),
        ),
      ],
      child: MaterialApp(
        title: 'PanggilMontir',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FutureBuilder(
            future: AuthLocalDataSource().getAuthData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (snapshot.hasData) {
                return const MainPage();
              }
              return LoginPage();
            }),
        debugShowCheckedModeBanner: false,
        routes: {
          // '/': (context) => const SplashPage(),
          // '/onboarding': (context) => const OnboardingPage(),
          '/login': (context) => LoginPage(),
          // '/register': (context) => RegisterPage(),
          // '/register-success': (context) => const RegisterSuccsessPage(),
          '/dashboard': (context) => const DashboardPage(),
          '/home': (context) => const MainPage(),
          '/profile': (context) => const ProfilePage(),
          // '/upcoming': (context) => const UpcomingPage(),
        },
      ),
    );
  }
}
