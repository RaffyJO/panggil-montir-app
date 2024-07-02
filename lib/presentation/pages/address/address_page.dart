import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 122,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.grey[400]!,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Icon(
                                  Icons.location_pin,
                                  size: 20,
                                ),
                              ),
                              horizontalSpace(8),
                              Text(
                                'Rumah',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const Icon(
                                  Icons.edit_rounded,
                                  size: 20,
                                ),
                              ),
                              horizontalSpace(8),
                              Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: const Icon(
                                  Icons.delete_rounded,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 74,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Jl. Perjuangan 2 RT.005/RW.035, Teluk Pucung, Bekasi Utara, Bekasi, West Java 17121',
                            style: blackTextStyle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          verticalSpace(6),
                          Row(
                            children: [
                              const Icon(
                                Icons.flag_rounded,
                                size: 18,
                              ),
                              horizontalSpace(4),
                              Text(
                                'Deket samping warung',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
