import 'dart:convert';
import 'package:flutter/services.dart';

class DataService {
  Future<List<Map<String, dynamic>>> fetchData(String fileName) async {
    String data = await rootBundle.loadString('assets/$fileName.json');
    List<dynamic> jsonData = json.decode(data);
    return jsonData.cast<Map<String, dynamic>>();
  }
}