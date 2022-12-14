import 'package:flutter/material.dart';

class CategoriesAtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
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
      children: [
        Container(
          child: Text('Category 1'),
        ),
        Container(
          child: Text('Category 2'),
        ),
        Container(
          child: Text('Category 3'),
        ),
        Container(
          child: Text('Category 4'),
        ),
      ],  
    );
  }
}
