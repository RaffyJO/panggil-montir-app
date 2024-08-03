import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/motorcycle/motorcycle_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/pages/garasi/garasi_add_page.dart';
import 'package:panggil_montir_app/presentation/pages/garasi/methods/motorcycle_item.dart';

class GarasiPage extends StatefulWidget {
  const GarasiPage({super.key});

  @override
  State<GarasiPage> createState() => _GarasiPageState();
}

class _GarasiPageState extends State<GarasiPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MotorcycleBloc, MotorcycleState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => Scaffold(
            backgroundColor: whiteColor,
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          failure: (message) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              backgroundColor: Colors.red,
            ),
          ),
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Scaffold(
            backgroundColor: whiteColor,
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          loading: () => Scaffold(
            backgroundColor: whiteColor,
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          successList: (data) => Scaffold(
            backgroundColor: whiteColor,
            appBar: AppBar(
              backgroundColor: whiteColor,
              title: Text(
                'Garasi',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GarasiAddPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Tambah baru',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return motorcycleItem(
                    data[index].licensePlate!,
                    data[index].brand!.name!,
                    data[index].type!.name!,
                    data[index].variant!.name!,
                    data[index].productionYear!.year!,
                    data[index].isSelected!,
                    onTapEdit: () {},
                    onTapDelete: () {},
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
