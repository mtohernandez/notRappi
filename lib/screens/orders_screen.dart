import 'package:flutter/material.dart';
import '../widgets/atoms/orders_atom.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Orders',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: const Expanded(
              child: OrdersAtom(),
            ),
          )
        ],
      ),
    );
  }
}
