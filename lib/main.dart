/*
* Not Rappi: main file
* Author1: Eiker Cifuentes
* Author2: Mateo Hernandez
* Author3: David Muvdi
*
* Description: Core theming of the app is applied here, including the routes and general       * navigation through the app. 
* 
* 1. For the widget childs import the files in the standar way
* - ../widgets/molecules/new_molecule.dart
*
! Do not use the auto import:
// package:not_rappi/widgets/molecules/new_molecule.dart
 */

import 'package:flutter/material.dart';
import 'package:not_rappi/screens/home_screen.dart';

import '../widgets/molecules/new_molecule.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
