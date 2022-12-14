import 'package:flutter/material.dart';
import '../widgets/molecules/category_molecule.dart';
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
      body: GridView.builder(
        itemCount: 1,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // Amount of columns
          crossAxisCount: 2,
          // Aspect ratio of childs
          childAspectRatio: 3 / 2,
          // Space between columns
          crossAxisSpacing: 10,
          // Space between rown
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return CategoryMolecule();
        },
      ),
    );
  }
}
