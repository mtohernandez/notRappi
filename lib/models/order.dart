import './product.dart';

enum OrderState {standby, delivered, inProgress}

class Order {
  //Fields
  final int id;
  final int restaurantId;
  final List<Product> products;
  final double total;
  final OrderState state;

  //Constructor
  const Order({
    required this.id, 
    required this.restaurantId,  
    required this.products,
    required this.total, 
    required this.state
  });
}