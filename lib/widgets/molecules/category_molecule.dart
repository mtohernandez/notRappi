import 'package:flutter/material.dart';

class CategoryMolecule extends StatefulWidget {
  final String title;
  final String imageUrl;

  const CategoryMolecule({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  State<CategoryMolecule> createState() => _CategoryMoleculeState();
}

class _CategoryMoleculeState extends State<CategoryMolecule> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          _isSelected = !_isSelected;
        });
      }),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          footer: GridTileBar(
            title: const Text(''), // Empty to push the trailing to the right
            trailing:
                Text('Food', style: Theme.of(context).textTheme.headline2),
            backgroundColor: !_isSelected
                ? Theme.of(context).colorScheme.secondary
                : Colors.red,
          ),
          child: Image.asset('assets/images/imageTest.jpg', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
