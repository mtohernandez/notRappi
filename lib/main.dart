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
//import 'package:not_rappi/screens/home_screen.dart';
import 'package:not_rappi/widgets/atoms/restaurants_atom.dart';
import 'package:not_rappi/widgets/molecules/order_molecule.dart';
//import '../widgets/molecules/new_molecule.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 200.0),
          child: OrderMolecule(imageUrl: 'https://d1ralsognjng37.cloudfront.net/018f79b0-182e-4c4f-a625-8600e582a1e1.jpeg', restaurantName: 'McDonald\'s'),
        ),
      )
    );
  }
}
