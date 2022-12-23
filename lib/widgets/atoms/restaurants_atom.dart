import 'package:flutter/material.dart';
import 'package:not_rappi/providers/restaurant_p.dart';
import 'package:provider/provider.dart';
import 'dart:math';
import 'package:not_rappi/widgets/molecules/restaurant_molecule.dart';

class RestaurantsAtom extends StatelessWidget {

  const RestaurantsAtom({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurants = Provider.of<Restaurants>(context).restaurants.take(10);
    return Column(
      children: [
        ...restaurants.map(
          (restaurant) {
            return RestaurantMolecule(
              restaurantName: restaurant.name,
              imageUrl: restaurant.imgUrl,
              rating: restaurant.rating,
              ratingAmount: Random().nextInt(1000),
              estimatedTime: restaurant.deliverTime,
              distance: Random().nextDouble() * 10,
              isSearch: false,
            );
          },
        ).toList(),
      ],
    );
  }
}
