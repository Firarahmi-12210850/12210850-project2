import 'dart:convert';

import 'package:apk1/models/berita_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DashboardProvider with ChangeNotifier {
  int tabaktif = 0;

  void ubahTab(int index) {
    tabaktif = index;
    notifyListeners();
  }
}

class BeritaPanelProvider with ChangeNotifier {
  bool modecari = false;

  void ubahmode() {
    modecari = !modecari;
    notifyListeners();
  }
}

class BeritaLoadDataProvider with ChangeNotifier{
  List<BeritaModel> data = [];

  Future refresh()async{
    final alamat = 'http://api.mediastack.com/v1/news?access_key=8ac538e6e0c8b04c971f7b3cbc37d6f2';
    final hasil =  await http.get(Uri.parse(alamat));
    if(hasil.statusCode !=200)return [];

    final obj = jsonDecode(hasil.body);
    
    for(var n in obj['data']){
      data.add(BeritaModel.fromMap(n) );
    }
    notifyListeners();
  }
}
