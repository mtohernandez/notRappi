import './product.dart';

class Restaurant {
  //Fields
  final int id;
  final String name;
  final String description;
  final String category;
  final String address;
  final List<Product> menu;
  final double raiting;
  final int deliverTime;
  final String imgUrl; 

  //Constructor
  Restaurant({
    required this.id, 
    required this.name, 
    required this.description, 
    required this.category, 
    required this.address, 
    required this.menu, 
    required this.raiting, 
    required this.deliverTime, 
    required this.imgUrl
  });
}