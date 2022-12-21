import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './all_stores_screen.dart';
import './orders_screen.dart';
import '../widgets/molecules/search_molecule.dart';
import './current_cart_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
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
              onPressed: () {
                Navigator.of(context).pushNamed(CurrentCartScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/shoppingcart.svg',
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.transparent,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.secondary,
            ),
            labelColor: Theme.of(context).backgroundColor,
            unselectedLabelColor: Theme.of(context).colorScheme.secondary,
            tabs: const [
              Tab(
                height: 30,
                text: 'All stores',
              ),
              Tab(
                height: 30,
                text: 'Orders',
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        // Start the testing here
        body: Stack(
          children: const [
            TabBarView(
              children: [
                AllStoresScreen(),
                OrdersScreen(),
              ],
            ),
            SearchMolecule(
              imgURL:
                  'https://images.unsplash.com/photo-1595053863958-f966040f6eed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
              address: 'tv 4',
              userName: 'Nati',
              ordersAmount: 342,
            ),
          ],
        ),
      ),
    );
  }
}
