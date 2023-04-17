import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pendataanwarga/models/berita_model.dart';
import 'package:http/http.dart' as http;

class DashboardProvider with ChangeNotifier {
  int tabaktif = 0;

  void ubahtab(int index) {
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

class BeritaLoadDataProvider with ChangeNotifier {
  List<BeritaModel> data = [];

  Future refresh() async {
    final alamat =
        'http://api.mediastack.com/v1/news?access_key=74cf76517e5ba2d0ae37ee9f941c05c4';
    final hasil = await http.get(Uri.parse(alamat));
    if (hasil.statusCode != 200) return [];

    final obj = jsonDecode(hasil.body);

    data.clear();
    for (var n in obj['data']) {
      data.add(BeritaModel.fromMap(n));
    }
    notifyListeners();
  }
}
