// data_provider.dart
import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  List<String> _data = [];

  List<String> get data => _data;

  void fetchData() {
    // Fetch data from API or database
    _data = ['Data 1', 'Data 2', 'Data 3'];
    notifyListeners();
  }
}
