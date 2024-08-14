import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MotorcycleItemSkeleton extends StatelessWidget {
  const MotorcycleItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              height: 140,
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.motorcycle_outlined,
                              size: 24,
                              color: whiteColor,
                            ),
                          ),
                          horizontalSpace(12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Data",
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                              Text(
                                "Plat Nomor",
                                style: greyTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Icon(
                          Icons.edit_rounded,
                          size: 20,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Data",
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        "Data",
                        style: greyTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(10),
                  SizedBox(
                    height: 32,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: whiteColor,
                        backgroundColor: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Dipilih',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
