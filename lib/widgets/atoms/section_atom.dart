import 'package:flutter/material.dart';
import 'package:not_rappi/providers/restaurant_p.dart';
import 'package:provider/provider.dart';
import 'dart:math';
import 'package:not_rappi/widgets/molecules/restaurant_molecule.dart';

class SectionAtom extends StatelessWidget {
  // final String title;
  // final bool isGrid;

  // const SectionAtom(this.title, this.isGrid, {super.key});
  @override
  Widget build(BuildContext context) {
    final restaurants = Provider.of<Restaurants>(context).restaurants;
    return SingleChildScrollView(
      child: Column(
        children: [
          ...restaurants.map((restaurant) {
            return RestaurantMolecule(
              restaurantName: restaurant.name,
              imageUrl: restaurant.imgUrl,
              raiting: restaurant.rating,
              ratingAmount: Random().nextInt(1000),
              estimatedTime: restaurant.deliverTime,
              distance: Random().nextDouble() * 10,
              isSearch: false,
            );
          }).toList(),
        ],
      ),
    );
  }
}
