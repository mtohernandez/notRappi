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
import 'widgets/molecules/restaurant_molecule.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 120.0, horizontal: 8.0),
          child: Column(
            children: const [
              RestaurantMolecule(
                distance: 3.6, 
                imageUrl: 'https://media-cdn.tripadvisor.com/media/photo-s/1b/99/44/8e/kfc-faxafeni.jpg',
                restaurantName: 'KFC Kentuky Fried Chicken',
                estimatedTime: 24,
                raitingAmount: 307,
                raiting: 4.5,
                isSearch: false,
              ),
              RestaurantMolecule(
                distance: 2.9, 
                imageUrl: 'https://cnnespanol.cnn.com/wp-content/uploads/2021/10/211014103231-20211014-mcplant-exlarge-169.jpg?quality=100&strip=info',
                restaurantName: 'MCDonalds',
                estimatedTime: 30,
                raitingAmount: 300,
                raiting: 3.8,
                isSearch: false,
              ),
            ],
          ),
        )
      )
    );
  }
}
