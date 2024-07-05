import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/data/datasources/local_datasources/auth_local_datasources.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/address_remote_datasource.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/auth_remote_datasource.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/garage_remote_datasource.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/motorcycle_remote_datasource.dart';
import 'package:panggil_montir_app/data/datasources/remote_datasources/panggil_servis/order_remote_datasource.dart';
import 'package:panggil_montir_app/firebase_options.dart';
import 'package:panggil_montir_app/presentation/blocs/address/address_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/garage/garage_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/motorcycle/motorcycle_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/order_servis/order_servis_bloc.dart';
import 'package:panggil_montir_app/presentation/pages/address/address_page.dart';
import 'package:panggil_montir_app/presentation/pages/auth/login_page.dart';
import 'package:panggil_montir_app/presentation/pages/auth/register_page.dart';
import 'package:panggil_montir_app/presentation/pages/dashboard/dashboard_page.dart';
import 'package:panggil_montir_app/presentation/pages/main_page.dart';
import 'package:panggil_montir_app/presentation/pages/panggil_service/panggil_service_success_page.dart';
import 'package:panggil_montir_app/presentation/pages/profile/profile_page.dart';
import 'package:panggil_montir_app/presentation/pages/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await findSystemLocale();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.playIntegrity,
    appleProvider: AppleProvider.deviceCheck,
  );
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
        BlocProvider(
          create: (context) => AddressBloc(AddressRemoteDatasource())
            ..add(const AddressEvent.getListAddress()),
        ),
        BlocProvider(
          create: (context) => MotorcycleBloc(MotorcycleRemoteDatasource())
            ..add(const MotorcycleEvent.getCurentMotorcycle()),
        ),
        BlocProvider(
          create: (context) => OrderServisBloc(OrderServisRemoteDatasource()),
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
                return const SplashPage();
              }
              return const SplashPage();
            }),
        debugShowCheckedModeBanner: false,
        routes: {
          '/base': (context) => const SplashPage(),
          // '/onboarding': (context) => const OnboardingPage(),
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
          '/order-servis-success': (context) =>
              const PanggilServiceSuccessPage(),
          '/dashboard': (context) => const DashboardPage(),
          '/home': (context) => const MainPage(),
          '/profile': (context) => const ProfilePage(),
          '/address': (context) => const AddressPage(),
          // '/upcoming': (context) => const UpcomingPage(),
        },
      ),
    );
  }
}
