import 'package:flutter/material.dart';
import 'package:panggil_montir_app/domain/entities/order.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/history/methods/detail_order_darurat.dart';
import 'package:panggil_montir_app/presentation/pages/history/methods/detail_order_servis.dart';

class HistoryItem extends StatelessWidget {
  final Order order;
  const HistoryItem({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        (order.orderType!.code == 'panggil_darurat')
            ? Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailOrderDarurat(),
                ),
              )
            : Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailOrderServis(),
                ),
              );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: (order.orderType!.code == 'panggil_darurat')
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (order.completedDate == '')
                        ? formatDateTime(order.orderDate!)
                        : formatDateTime(order.completedDate!),
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 13,
                    ),
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            (order.status == 'completed')
                                ? Image.asset(
                                    'assets/icons/icon-darurat.png',
                                    width: 72,
                                  )
                                : ColorFiltered(
                                    colorFilter: const ColorFilter.mode(
                                      Colors.white,
                                      BlendMode.saturation,
                                    ),
                                    child: Image.asset(
                                      'assets/icons/icon-darurat.png',
                                      width: 72,
                                    ),
                                  ),
                            horizontalSpace(8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    order.address!,
                                    style: blackTextStyle.copyWith(
                                      fontWeight: semiBold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  verticalSpace(4),
                                  (order.status == 'completed')
                                      ? Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/icon-success.png',
                                              width: 20,
                                            ),
                                            horizontalSpace(2),
                                            Expanded(
                                              child: Text(
                                                'Servis selesai',
                                                style: blackTextStyle.copyWith(
                                                  fontWeight: semiBold,
                                                  fontSize: 13,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                          ],
                                        )
                                      : Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/icon-canceled.png',
                                              width: 20,
                                            ),
                                            horizontalSpace(2),
                                            Expanded(
                                              child: Text(
                                                'Servis dibatalkan',
                                                style: blackTextStyle.copyWith(
                                                  fontWeight: semiBold,
                                                  fontSize: 13,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      horizontalSpace(4),
                      (order.status == 'completed')
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  formatCurrency(
                                    order.serviceFee! + order.deliveryFee!,
                                  ),
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 13,
                                  ),
                                ),
                                verticalSpace(8),
                                Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: blueColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Pesan lagi",
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: semiBold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  formatCurrency(0),
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 13,
                                  ),
                                ),
                                verticalSpace(8),
                                Container(
                                  height: 36,
                                ),
                              ],
                            ),
                    ],
                  )
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (order.completedDate == '')
                        ? formatDateTime(order.orderDate!)
                        : formatDateTime(order.completedDate!),
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 13,
                    ),
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            (order.status == 'completed')
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image.network(
                                      'https://i.ytimg.com/vi/sN-Cjxt3C70/maxresdefault.jpg',
                                      width: 72,
                                      height: 72,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ColorFiltered(
                                      colorFilter: const ColorFilter.mode(
                                        Colors.white,
                                        BlendMode.saturation,
                                      ),
                                      child: Image.network(
                                        'https://i.ytimg.com/vi/sN-Cjxt3C70/maxresdefault.jpg',
                                        width: 72,
                                        height: 72,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                            horizontalSpace(8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    order.garage!.name!,
                                    style: blackTextStyle.copyWith(
                                      fontWeight: semiBold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                  verticalSpace(4),
                                  (order.status == 'completed')
                                      ? Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/icon-success.png',
                                              width: 20,
                                            ),
                                            horizontalSpace(2),
                                            Expanded(
                                              child: Text(
                                                'Servis selesai',
                                                style: blackTextStyle.copyWith(
                                                  fontWeight: semiBold,
                                                  fontSize: 13,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                          ],
                                        )
                                      : Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/icon-canceled.png',
                                              width: 20,
                                            ),
                                            horizontalSpace(2),
                                            Expanded(
                                              child: Text(
                                                'Servis dibatalkan',
                                                style: blackTextStyle.copyWith(
                                                  fontWeight: semiBold,
                                                  fontSize: 13,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      horizontalSpace(4),
                      (order.status == 'completed')
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  formatCurrency(order.serviceFee!),
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 13,
                                  ),
                                ),
                                verticalSpace(8),
                                Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: blueColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Pesan lagi",
                                      style: whiteTextStyle.copyWith(
                                        fontWeight: semiBold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  formatCurrency(0),
                                  style: blackTextStyle.copyWith(
                                    fontWeight: semiBold,
                                    fontSize: 13,
                                  ),
                                ),
                                verticalSpace(8),
                                Container(
                                  height: 36,
                                ),
                              ],
                            ),
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
