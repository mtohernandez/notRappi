import 'dart:convert';
import 'package:flutter/services.dart';

Future<void> readJson() async {
  final String response = await rootBundle.loadString('data.json');
  final data = await json.decode(response);
  return data;
}
