import 'package:flutter/material.dart';

import '../widgets/molecules/new_molecule.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Rappi'),
      ),
      // Start the testing here
      body: NewMolecule(),
    );
  }
}
