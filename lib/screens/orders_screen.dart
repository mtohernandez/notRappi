import 'package:flutter/material.dart';
import '../widgets/atoms/orders_atom.dart';
import '../widgets/atoms/general_atom.dart';


class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        //TODO: filter widget
        children: const [
          GeneralAtom(
            'Your Orders', 
            isAll: false,
            child: OrdersAtom()
          )
        ],
      ),
    );
  }
}