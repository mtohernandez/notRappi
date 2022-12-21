import 'package:flutter/material.dart';
import 'package:not_rappi/widgets/atoms/categories_atom.dart';
import 'package:not_rappi/widgets/atoms/general_atom.dart';
import 'package:not_rappi/widgets/atoms/restaurants_atom.dart';

import '../widgets/molecules/new_molecule.dart';

class AllStoresScreen extends StatefulWidget {
  
  const AllStoresScreen({super.key});

  @override
  State<AllStoresScreen> createState() => _AllStoresScreenState();
}

class _AllStoresScreenState extends State<AllStoresScreen>
    with AutomaticKeepAliveClientMixin<AllStoresScreen> {
  
  @override
  bool get wantKeepAlive => true;
  
  
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GeneralAtom(
              'Categories',
              isAll: true,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: const CategoriesAtom(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const GeneralAtom(
              'News',
              isAll: false,
              child: NewMolecule(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const GeneralAtom(
              'Stores',
              isAll: true,
              child: RestaurantsAtom(),
            ),
          ],
        ),
      ),
    );
  }
}
