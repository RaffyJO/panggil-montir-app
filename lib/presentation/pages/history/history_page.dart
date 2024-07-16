import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          title: Text(
            'Riwayat Transaksi',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: const [
              Tab(
                text: 'Riwayat',
              ),
              Tab(
                text: 'Dalam proses',
              ),
            ],
            labelStyle: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 13,
            ),
            indicatorColor: blueColor,
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '22 Juni 2024, 15:41',
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
                                Image.asset(
                                  'assets/icons/icon-darurat.png',
                                  width: 72,
                                ),
                                horizontalSpace(8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pasar Kaget Villa Indah Permai Bekasi Utara Kec. Permai',
                                        style: blackTextStyle.copyWith(
                                          fontWeight: semiBold,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                      verticalSpace(4),
                                      Row(
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          horizontalSpace(4),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                formatCurrency(20000),
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
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
            const Center(
              child: Text('Dalam proses'),
            ),
          ],
        ),
      ),
    );
  }
}
