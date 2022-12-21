import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './all_stores_screen.dart';
import './orders_screen.dart';

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
              onPressed: () {
                Navigator.of(context).pushNamed('');
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
        body: const TabBarView(
          children: [
            AllStoresScreen(),
            OrdersScreen(),
          ],
        ),
      ),
    );
  }
}
