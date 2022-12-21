import 'package:flutter/material.dart';
import '../widgets/atoms/orders_atom.dart';
import '../widgets/atoms/general_atom.dart';


class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //TODO: filter widget
        children: [
          Text(
            'Your Orders',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Expanded(child: OrdersAtom())
        ],
      ),
    );
  }
}