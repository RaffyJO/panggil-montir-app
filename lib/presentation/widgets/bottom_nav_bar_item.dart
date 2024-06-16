import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';

class BottomNavBarItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final String title;
  final Icon icon;
  final Icon selectedIcon;

  const BottomNavBarItem(
      {super.key,
      required this.index,
      required this.isSelected,
      required this.title,
      required this.icon,
      required this.selectedIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 25,
          height: 25,
          child: isSelected ? selectedIcon : icon,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: (isSelected) ? blueColor : greyColor,
          ),
        )
      ],
    );
  }
}
