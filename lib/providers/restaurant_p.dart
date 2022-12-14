import 'package:flutter/material.dart';
import '../data/data.dart';
import '../models/restaurant.dart';
import '../models/product.dart';

class Restaurants with ChangeNotifier {
  final List<Restaurant> _restaurants = Data()
      .restaurants
      .map(
        (rest) => Restaurant(
          id: rest['id'],
          name: rest['name'],
          description: rest['description'],
          category: rest['category'],
          address: rest['address'],
          menu: rest['menu']
              .map((item) => Product(
                    id: item['id'],
                    name: item['name'],
                    description: item['description'],
                    price: double.parse(item['price']),
                    category: item['category'],
                    imgUrl: '',
                    additions: item['adittions'],
                  ),)
              .toList(),
          rating: rest['rating'],
          deliverTime: rest['delivery_time'],
          imgUrl: 'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
        ),
      )
      .toList();

  List<Restaurant> get restaurants {
    return [..._restaurants];
  }
}
