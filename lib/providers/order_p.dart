import 'package:flutter/material.dart';
import '../models/order.dart';


class Orders with ChangeNotifier {
  Set<Order> _orders = {};

  Set<Order> get orders {
    return {..._orders};
  }

  void addOrder(Order order) {
    _orders.add(order);
    notifyListeners();
  }

  void removeOrder(Order order) {
    _orders.remove(order);
    notifyListeners();
  }

}