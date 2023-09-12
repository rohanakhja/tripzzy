import 'package:flutter/material.dart';

class DateProvider extends ChangeNotifier {
  DateTime? _day1Date;
  DateTime? get day1Date => _day1Date;

  void setDatePicker(DateTime value) {
    _day1Date = value;
    notifyListeners();
  }
}
