import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:not_rappi/widgets/atoms/categories_atom.dart';
import 'package:not_rappi/widgets/atoms/general_atom.dart';
import 'package:not_rappi/widgets/atoms/restaurants_atom.dart';

import '../widgets/molecules/new_molecule.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          title: Text(
            'Not Rappi',
            style: Theme.of(context).textTheme.headline1,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/shoppingcart.svg',
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: TextButton(
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
              ),
              Tab(
                child: TextButton(
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
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        // Start the testing here
        body: TabBarView(
          children: [
            HomeScreenScreen(),
            HomeScreenScreen(),
          ],
        ),
      ),
    );
  }
}

class HomeScreenScreen extends StatelessWidget {
  const HomeScreenScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GeneralAtom(
              'Categories',
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: CategoriesAtom(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            GeneralAtom(
              'News',
              child: NewMolecule(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            GeneralAtom(
              'Stores',
              child: RestaurantsAtom(),
            ),
          ],
        ),
      ),
    );
  }
}
