class Restaurant {
  //Fields
  final String id;
  final String name;
  final String description;
  final String category;
  final String address;
  final List<dynamic> menu;
  final double rating;
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
    required this.rating, 
    required this.deliverTime, 
    required this.imgUrl
  });
}