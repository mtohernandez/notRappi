import 'package:flutter/material.dart';
import '../molecules/order_molecule.dart';

class OrdersAtom extends StatelessWidget {
  const OrdersAtom({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String,dynamic>> products = [
      {
        'name':'KFC',
        'imgURL':'https://d1ralsognjng37.cloudfront.net/018f79b0-182e-4c4f-a625-8600e582a1e1.jpeg',
        'state':'in progress',
        'products': [
          {
            'name': 'Hamburguesa',
            'amount': 3,
            'additions': ['papas a la francesa', 'salsa de tomate'],
            'price': 10000 
          },
          {
            'name': 'Gaseosa',
            'amount': 1,
            'additions': [],
            'price': 5000 
          },
          {
            'name': 'Papas',
            'amount': 2,
            'additions': [],
            'price': 4000 
          },
          {
            'name': 'Pollo Broasted',
            'amount': 4,
            'additions': ['papas a la francesa', 'miel'],
            'price': 11000 
          },
          {
            'name': 'Hamburguesa de pollo',
            'amount': 1,
            'additions': ['papas a la francesa', 'mayonesa'],
            'price': 10000 
          },
        ]
      },
      {
        'name':'McDonald\'s',
        'imgURL':'https://d1ralsognjng37.cloudfront.net/018f79b0-182e-4c4f-a625-8600e582a1e1.jpeg',
        'state':'delivered',
        'products':[
          {
            'name': 'Cuarto de pollo',
            'amount': 3,
            'additions': ['papas a la francesa', 'salsa de tomate'],
            'price': 10000                                                   
          },
          {
            'name': 'Gaseosa',
            'amount': 1,
            'additions': [],
            'price': 4000 
          },
          {
            'name': 'Papas',
            'amount': 2,
            'additions': [],
            'price': 3000 
          },
          {
            'name': 'Pollo Broasted',
            'amount': 4,
            'additions': ['papas a la francesa', 'miel'],
            'price': 11000 
          },
          {
            'name': 'Hamburguesa de pollo',
            'amount': 1,
            'additions': ['papas a la francesa', 'mayonesa'],
            'price': 9000
          },
        ]
      },
      {
        'name':'McDonald\'s',
        'imgURL':'https://d1ralsognjng37.cloudfront.net/018f79b0-182e-4c4f-a625-8600e582a1e1.jpeg',
        'state':'stand by',
        'products':[
          {
            'name': 'Cuarto de pollo',
            'amount': 3,
            'additions': ['papas a la francesa', 'salsa de tomate'],
            'price': 10000                                                   
          },
          {
            'name': 'Gaseosa',
            'amount': 1,
            'additions': [],
            'price': 4000 
          },
          {
            'name': 'Papas',
            'amount': 2,
            'additions': [],
            'price': 3000 
          },
          {
            'name': 'Pollo Broasted',
            'amount': 4,
            'additions': ['papas a la francesa', 'miel'],
            'price': 11000 
          },
          {
            'name': 'Hamburguesa de pollo',
            'amount': 1,
            'additions': ['papas a la francesa', 'mayonesa'],
            'price': 9000
          },
        ]
      }
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: products.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              OrderMolecule(
                imageUrl: products[index]['imgURL'], 
                restaurantName: products[index]['name'],
                products: products[index]['products'],
                state: products[index]['state'],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.0),
                child: Divider(
                  thickness: 1.0, 
                  color: Colors.black12,
                ),
              )
            ],
          );
        })
      ),
    );
  }
}