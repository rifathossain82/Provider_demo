import 'package:flutter/cupertino.dart';

class TimerInfo extends ChangeNotifier{
  var _time=60;

  getTime()=>_time;

  void decreaseTime(){
    _time--;
    notifyListeners();
  }
}