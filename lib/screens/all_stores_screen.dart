
import 'package:flutter/material.dart';
import 'package:not_rappi/widgets/atoms/categories_atom.dart';
import 'package:not_rappi/widgets/atoms/general_atom.dart';
import 'package:not_rappi/widgets/atoms/restaurants_atom.dart';

import '../widgets/molecules/new_molecule.dart';

class AllStoresScreen extends StatefulWidget {
  const AllStoresScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AllStoresScreen> createState() => _AllStoresScreenState();
}

class _AllStoresScreenState extends State<AllStoresScreen>
    with AutomaticKeepAliveClientMixin<AllStoresScreen> {
  @override
  bool get wantKeepAlive => true;
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
