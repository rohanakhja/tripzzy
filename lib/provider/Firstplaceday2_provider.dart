import 'package:flutter/material.dart';

class FirstPlaceDay2 extends ChangeNotifier {
  String? _enteredLocation;
  String? _startTime;
  String? _endTime;
  String? _budget;
  bool _isStartTimePicker = false;

  String? get enteredLocation => _enteredLocation;
  String? get startTime => _startTime;
  String? get endTime => _endTime;
  String? get budget => _budget;
  bool get isStartTimePicker => _isStartTimePicker;

  void setStartTimePicker(bool value) {
    _isStartTimePicker = value;
    notifyListeners();
  }

  void setEnteredLocation(String value) {
    _enteredLocation = value;
    notifyListeners();
  }

  void setStartTime(String value) {
    _startTime = value;
    notifyListeners();
  }

  void setEndTime(String value) {
    _endTime = value;
    notifyListeners();
  }

  void setBudget(String value) {
    _budget = value;
    notifyListeners();
  }

  void clearData() {
    _enteredLocation = null;
    _startTime = null;
    _endTime = null;
    _budget = null;
    notifyListeners();
  }
}
