// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';

// ignore: must_be_immutable
class KendalaItem extends StatefulWidget {
  final int id;
  final String title;
  final int price;
  bool isselected;
  VoidCallback? onTap;

  KendalaItem({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    this.isselected = false,
    this.onTap,
  });

  @override
  State<KendalaItem> createState() => _KendalaItemState();
}

class _KendalaItemState extends State<KendalaItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isselected = !widget.isselected;
        });
      },
      child: (widget.isselected == true)
          ? Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                color: orangeColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  widget.title,
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 13,
                  ),
                ),
              ),
            )
          : Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  widget.title,
                  style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
    );
  }
}
