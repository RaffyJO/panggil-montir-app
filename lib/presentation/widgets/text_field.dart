import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:panggil_montir_app/presentation/misc/constants.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final int? maxLength;
  final bool isShowTitle;
  final bool isPhoneNumber;
  final bool isBorder;
  final bool autoFocus;
  final bool inputActionNone;
  final bool isTextCenter;
  final bool isTextUpperCase;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onFieldChanged;

  const CustomTextField({
    super.key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.textInputType,
    this.hintText = '',
    this.maxLength,
    this.isShowTitle = true,
    this.isPhoneNumber = false,
    this.isBorder = true,
    this.autoFocus = false,
    this.inputActionNone = false,
    this.isTextCenter = false,
    this.isTextUpperCase = false,
    this.onFieldSubmitted,
    this.onFieldChanged,
  });

  @override
  Widget build(BuildContext context) {
    Country country = Country(
      name: 'Indonesia',
      phoneCode: '+62',
      e164Sc: 0,
      geographic: true,
      countryCode: "ID",
      level: 1,
      example: "Indonesia",
      displayName: "Indonesia",
      displayNameNoCountryCode: "ID",
      e164Key: "",
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: semiBold),
          ),
        if (isShowTitle)
          const SizedBox(
            height: 8,
          ),
        TextFormField(
          maxLength: maxLength,
          buildCounter: (BuildContext context,
              {int? currentLength, int? maxLength, bool? isFocused}) {
            return null; // Menyembunyikan indikator panjang teks
          },
          textInputAction:
              (inputActionNone) ? TextInputAction.none : TextInputAction.done,
          autofocus: autoFocus,
          textAlign: (isTextCenter) ? TextAlign.center : TextAlign.start,
          textCapitalization: (isTextUpperCase)
              ? TextCapitalization.characters
              : TextCapitalization.none,
          obscureText: obscureText,
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: greyTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 14,
            ),
            contentPadding: const EdgeInsets.all(8),
            border: isBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                : InputBorder.none,
            enabledBorder: isBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  )
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
            focusedBorder: isBorder
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: orangeColor),
                  )
                : UnderlineInputBorder(
                    borderSide: BorderSide(color: orangeColor),
                  ),
            prefixIcon: isPhoneNumber
                ? Container(
                    padding: const EdgeInsets.fromLTRB(12, 13, 8, 10),
                    child: Text(
                      "${country.flagEmoji} ${country.phoneCode}",
                      style: blackTextStyle.copyWith(
                        fontSize: 15,
                        fontWeight: semiBold,
                      ),
                    ),
                  )
                : null,
          ),
          cursorColor: orangeColor,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onFieldChanged,
        )
      ],
    );
  }
}
