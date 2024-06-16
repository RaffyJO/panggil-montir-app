import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';
import 'package:panggil_montir_app/presentation/pages/dashboard/dashboard_page.dart';
import 'package:panggil_montir_app/presentation/pages/history/history_page.dart';
import 'package:panggil_montir_app/presentation/pages/profile/profile_page.dart';
import 'package:panggil_montir_app/presentation/widgets/bottom_nav_bar.dart';
import 'package:panggil_montir_app/presentation/widgets/bottom_nav_bar_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController();
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) => setState(
              () {
                selectedPage = value;
              },
            ),
            children: const [
              DashboardPage(),
              HistoryPage(),
              ProfilePage(),
            ],
          ),
          BottomNavBar(
            items: [
              BottomNavBarItem(
                index: 0,
                isSelected: selectedPage == 0,
                title: 'Home',
                icon: Icon(
                  Icons.home,
                  color: greyColor,
                ),
                selectedIcon: Icon(
                  Icons.home,
                  color: blueColor,
                ),
              ),
              BottomNavBarItem(
                index: 1,
                isSelected: selectedPage == 1,
                title: 'History',
                icon: Icon(
                  Icons.history,
                  color: greyColor,
                ),
                selectedIcon: Icon(
                  Icons.history,
                  color: blueColor,
                ),
              ),
              BottomNavBarItem(
                index: 2,
                isSelected: selectedPage == 2,
                title: 'Profile',
                icon: Icon(
                  Icons.person,
                  color: greyColor,
                ),
                selectedIcon: Icon(
                  Icons.person,
                  color: blueColor,
                ),
              ),
            ],
            onTap: (index) {
              selectedPage = index;

              pageController.animateToPage(
                selectedPage,
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeInOut,
              );
            },
            selectedIndex: 0,
          )
        ],
      ),
    );
  }
}
