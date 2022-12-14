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
import 'package:provider/provider.dart';
import '../providers/restaurant_p.dart';
import 'package:not_rappi/screens/home_screen.dart';
import 'widgets/molecules/restaurant_molecule.dart';
import '../widgets/molecules/new_molecule.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Restaurants(),
        ),
      ],
      child: MaterialApp(
        title: 'Not Rappi',
        theme: ThemeData(
          backgroundColor: const Color(0xffEFEFEF),
          //! This is a temporary color scheme
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
          ).copyWith(
            secondary: const Color(0xff1D1D1D),
          ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
