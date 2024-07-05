import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/address/address_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
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
        // TODO: implement listener
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
