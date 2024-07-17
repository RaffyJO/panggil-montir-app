import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/address/address_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/address/methods/address_delete_item.dart';
import 'package:panggil_montir_app/presentation/pages/address/methods/address_item.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddressBloc, AddressState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => const Scaffold(body: Center(child: Text('No data'))),
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
          orElse: () => const Scaffold(body: Center(child: Text('No data'))),
          loading: () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
          successList: (data) => Scaffold(
            backgroundColor: whiteColor,
            appBar: AppBar(
              backgroundColor: whiteColor,
              title: Text(
                'Alamat',
                style: blackTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 18,
                ),
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Tambah baru',
                      style: blueTextStyle.copyWith(
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
                    data[index].title!,
                    data[index].description!,
                    notes: data[index].notes,
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
                                  data[index].title!,
                                  data[index].description!,
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
                              onPressed: () async {
                                context.read<AddressBloc>().add(
                                      AddressEvent.deleteAddress(
                                          data[index].id!),
                                    );
                                context.read<AddressBloc>().add(
                                      const AddressEvent.getListAddress(),
                                    );
                                Navigator.pop(context);
                              },
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
