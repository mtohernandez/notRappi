import './order.dart';

class User{
  //Fields
  final int id;
  final String email;
  final String password;
  final String name;
  final String phoneNumber;
  List<Order> orders;
  bool isActive;

  //Constructor
  User({
    required this.id, 
    required this.email,
    required this.password, 
    required this.name,
    required this.phoneNumber,
    required this.orders,
    required this.isActive
  });
}