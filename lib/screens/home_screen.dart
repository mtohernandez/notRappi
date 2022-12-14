import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:not_rappi/widgets/atoms/categories_atom.dart';
import 'package:not_rappi/widgets/atoms/section_atom.dart';

import '../widgets/molecules/new_molecule.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          toolbarHeight: 70.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.secondary,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'All stores',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Orders',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Theme.of(context).backgroundColor,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/shoppingcart.svg'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      // Start the testing here
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: CategoriesAtom(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            NewMolecule(),
            const SizedBox(
              height: 20.0,
            ),
            SectionAtom(),
          ],
        ),
      ),
    );
  }
}
