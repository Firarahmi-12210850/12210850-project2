import 'package:flutter/material.dart';

class DashboardProvider with ChangeNotifier{
  int tabaktif = 0;

  void ubahTab(int index){
    tabaktif = index;
    notifyListeners();
  }
}