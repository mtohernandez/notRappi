import 'dart:convert';
import 'package:flutter/services.dart';

Future<String> loadJsonString() async {
  return await rootBundle.loadString('data/data.json');
}

Future<Map<String, dynamic>> loadJson() async {
  String jsonString = await loadJsonString();
  return jsonDecode(jsonString);
}
