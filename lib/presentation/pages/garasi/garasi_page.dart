import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/motorcycle/motorcycle_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/address/address_add_page.dart';
import 'package:panggil_montir_app/presentation/pages/address/methods/address_delete_item.dart';
import 'package:panggil_montir_app/presentation/pages/address/methods/address_item.dart';

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
                          builder: (context) => const AddressAddPage(),
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
                  return addressItem(
                    data[index].licensePlate!,
                    data[index].brand!.name!,
                    data[index].isSelected!,
                    notes: data[index].type!.name!,
                    onTapEdit: () {},
                    onTapDelete: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: whiteColor,
                          insetPadding: EdgeInsets.zero,
                          alignment: Alignment.bottomCenter,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                          ),
                          title: Text(
                            'Mau hapus alamat ini?',
                            style: blackTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 18,
                            ),
                          ),
                          content: Container(
                            width: double.infinity,
                            height: 174,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Apakah anda yakin ingin menghapus alamat ini?',
                                  style: blackTextStyle,
                                ),
                                verticalSpace(12),
                                addressDeleteItem(
                                  data[index].brand!.name!,
                                  data[index].type!.name!,
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Batal',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Hapus',
                                style: redTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
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
