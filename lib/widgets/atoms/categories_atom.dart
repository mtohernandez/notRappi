import 'package:flutter/material.dart';
import '../molecules/category_molecule.dart';

class CategoriesAtom extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
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
      children: const [
        //! Const for testing purposes
        CategoryMolecule(
            title: 'Pizza', imageUrl: 'assets/images/imageTest.jpg'),
        CategoryMolecule(
            title: 'Pizza', imageUrl: 'assets/images/imageTest.jpg'),
        CategoryMolecule(
            title: 'Pizza', imageUrl: 'assets/images/imageTest.jpg'),
        CategoryMolecule(
            title: 'Pizza', imageUrl: 'assets/images/imageTest.jpg'),
      ],
    );
  }
}
