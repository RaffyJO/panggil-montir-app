import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:panggil_montir_app/domain/entities/operasional_hour.dart';

Map<double, SizedBox> _verticalSpaces = {};
Map<double, SizedBox> _horizontalSpaces = {};

SizedBox verticalSpace(double height) {
  if (!_verticalSpaces.containsKey(height)) {
    _verticalSpaces[height] = SizedBox(
      height: height,
    );
  }

  return _verticalSpaces[height]!;
}

SizedBox horizontalSpace(double width) {
  if (!_horizontalSpaces.containsKey(width)) {
    _horizontalSpaces[width] = SizedBox(
      width: width,
    );
  }

  return _horizontalSpaces[width]!;
}

void showCustomSnackbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.BOTTOM,
    backgroundColor: Colors.red,
    duration: const Duration(seconds: 2),
  ).show(context);
}

String formatCurrency(num number, {String symbol = 'Rp'}) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: symbol,
    decimalDigits: 0,
  ).format(number);
}

String formatPrice(int price) {
  // Membagi harga dengan 1000 dan menambahkan "rb+"
  return '${(price / 1000).toStringAsFixed(0)}rb+';
}

String dayOfWeekToNumber(String day) {
  switch (day.toLowerCase()) {
    case 'sunday':
      return '0';
    case 'monday':
      return '1';
    case 'tuesday':
      return '2';
    case 'wednesday':
      return '3';
    case 'thursday':
      return '4';
    case 'friday':
      return '5';
    case 'saturday':
      return '6';
    default:
      return '-1'; // Jika tidak dikenali, bisa menentukan handling sesuai kebutuhan
  }
}

String formatTime(String time) {
  // Hilangkan ":00" dari waktu
  return time.substring(0, 5);
}

String getToday() {
  // Mendapatkan nama hari dalam bahasa Inggris
  return DateTime.now().weekday.toString().toLowerCase();
}

String formatOperasionalHours(List<OperasionalHour> hours) {
  String today = getToday();
  for (var hour in hours) {
    if (dayOfWeekToNumber(hour.day!) == today) {
      String startTime = formatTime(hour.startTime!);
      String endTime = formatTime(hour.endTime!);
      return '$startTime - $endTime';
    }
  }
  return '';
}

String formatEndHours(List<OperasionalHour> hours) {
  String today = getToday();
  for (var hour in hours) {
    if (dayOfWeekToNumber(hour.day!) == today) {
      String endTime = formatTime(hour.endTime!);
      return endTime;
    }
  }
  return '';
}
