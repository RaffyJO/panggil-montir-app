import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddressItemSkeleton extends StatelessWidget {
  const AddressItemSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              height: 170,
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
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
                              "Data",
                              style: blackTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: null,
                              child: Container(
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
                            ),
                            horizontalSpace(8),
                            GestureDetector(
                              onTap: null,
                              child: Container(
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 80,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Data",
                            style: blackTextStyle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
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
                              "Data",
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
                  verticalSpace(2),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
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
