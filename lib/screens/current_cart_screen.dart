import 'package:flutter/material.dart';

class CurrentCartScreen extends StatelessWidget {
  static const routeName = '/current-cart';
  const CurrentCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text('Current Cart'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text('Current Cart'),
      ),
    );
  }
}
