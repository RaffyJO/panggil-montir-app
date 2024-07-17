import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panggil_montir_app/presentation/blocs/transaction/transaction_bloc.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/misc/methods.dart';
import 'package:panggil_montir_app/presentation/pages/history/methods/history_item.dart';

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
            BlocConsumer<TransactionBloc, TransactionState>(
              listener: (context, state) {
                // TODO: implement listener
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: Text('No data'),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  failure: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  success: (data) {
                    if (data.isEmpty) {
                      return Column(
                        children: [
                          verticalSpace(16),
                          Image.asset(
                            'assets/images/img_service.png',
                            width: 200,
                            height: 200,
                          ),
                          verticalSpace(2),
                          Text(
                            'Panggil Montir, yuk!',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          verticalSpace(4),
                          Text(
                            'Montir kami akan dengan senang hati\n memperbaiki motormu.',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    } else {
                      return RefreshIndicator(
                        color: blueColor,
                        onRefresh: () async {
                          BlocProvider.of<TransactionBloc>(context)
                              .add(const TransactionEvent.getTransactions());
                        },
                        child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            if (data[index].status != 'started' &&
                                data[index].status != 'ongoing') {
                              return HistoryItem(order: data[index]);
                            }
                            return null;
                          },
                        ),
                      );
                    }
                  },
                );
              },
            ),
            BlocBuilder<TransactionBloc, TransactionState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: Text('No data'),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  failure: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  success: (data) {
                    if (data.isEmpty) {
                      return Column(
                        children: [
                          verticalSpace(16),
                          Image.asset(
                            'assets/images/img_service.png',
                            width: 200,
                            height: 200,
                          ),
                          verticalSpace(2),
                          Text(
                            'Panggil Montir, yuk!',
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                          verticalSpace(4),
                          Text(
                            'Montir kami akan dengan senang hati\n memperbaiki motormu.',
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    } else {
                      return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          if (data[index].status != 'cancelled' &&
                              data[index].status != 'completed') {
                            return HistoryItem(order: data[index]);
                          }
                          return null;
                        },
                      );
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
