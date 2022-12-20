import 'package:flutter/material.dart';

class CategoryMolecule extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryMolecule({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          title: const Text(''), // Empty to push the trailing to the right
          trailing: Text('Food', style: Theme.of(context).textTheme.headline2),
          backgroundColor: Theme.of(context).colorScheme.secondary,
        ),
        child: Image.asset('assets/images/imageTest.jpg', fit: BoxFit.cover),
      ),
    );
  }
}
