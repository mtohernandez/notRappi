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
//import './widgets/atoms/orders_atom.dart';
import './widgets/molecules/search_molecule.dart';
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
        backgroundColor: Color.fromARGB(255, 206, 206, 206),
        body: SearchMolecule(
          imgURL: 'https://images.unsplash.com/photo-1523912277209-5fd38d4d667e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBnaXJsfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
          userName: 'Mari',
          ordersAmount: 345,
          address: 'TV #43-12',
        ),
      )
    );
  }
}
