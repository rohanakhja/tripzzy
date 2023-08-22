import 'package:flutter/material.dart';

class UserDetails2 extends ChangeNotifier {
  String? Second_enteredLocation;
  String? Second_startTime;
  String? Second_endTime;
  String? Second_budget;
  bool Second_isStartTimePicker = false;

  String? get SecondenteredLocation => Second_enteredLocation;
  String? get SecondstartTime => Second_startTime;
  String? get SecondendTime => Second_endTime;
  String? get Secondbudget => Second_budget;
  bool get SecondisStartTimePicker => Second_isStartTimePicker;

  void setSecondStartTimePicker(bool value) {
    Second_isStartTimePicker = value;
    notifyListeners();
  }

  void setSecondEnteredLocation(String value) {
    Second_enteredLocation = value;
    notifyListeners();
  }

  void setSecondStartTime(String value) {
    Second_startTime = value;
    notifyListeners();
  }

  void setSecondEndTime(String value) {
    Second_endTime = value;
    notifyListeners();
  }

  void setSecondBudget(String value) {
    Second_budget = value;
    notifyListeners();
  }
}
