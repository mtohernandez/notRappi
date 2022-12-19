import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderMolecule extends StatelessWidget {
  const OrderMolecule({super.key, required this.imageUrl, required this.restaurantName, required this.products, required this.state});

  final String imageUrl;
  final String restaurantName;
  final List<Map<String,dynamic>> products;
  final String state;
  static DateTime date = DateTime.now();

  Widget buildProductCard(String productName, List<dynamic> additions, BuildContext context, int productQuantity){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: additions.isEmpty ? MediaQuery.of(context).size.height / 18 : MediaQuery.of(context).size.height / 15,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('$productName x$productQuantity', style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),),
              if(additions.isNotEmpty)
                Text(
                additions.reduce((value, element) => '$value, $element'), 
                style: const TextStyle(
                  fontSize: 10.0, 
                  fontWeight: FontWeight.w300
                ),
              ), 
            ]
          ),
        ),
      ),
    );
  }
  
  //Returns the total of the products you've added to the order 
  num total(List<Map<String,dynamic>> products){
    num totalPrice = 0;
    for(Map<String,dynamic> product in products){
      totalPrice += (product['price'] * product['amount']);
    }
    return totalPrice;
  }

  Widget buildRestaurantTitle(BuildContext context, String restaurantName, DateTime date){
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 7,
          height: MediaQuery.of(context).size.height / 16.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl
              )
            )
          ),
        ),
        const SizedBox(width: 7.0,),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(restaurantName, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18.0),),
              const SizedBox(height: 3.0,),
              Text(DateFormat('MMM, dd hh:mm a').format(date), style: const TextStyle( fontSize: 12.0, fontWeight: FontWeight.w300),),
            ],
          ),
        ),
        Expanded(
          flex: 3, 
          child: Text(
            state, 
            style: TextStyle(
              fontSize: 14.0, 
              fontWeight: FontWeight.w400, 
              color: state == 'in progress' ? Color.fromARGB(255, 202, 143, 32) : state == 'stand by' ? Colors.red : Colors.green
            ), 
            textAlign: TextAlign.center,
          )
        ),
        Text('\$${total(products)}', style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          buildRestaurantTitle(context, restaurantName, date),
          const SizedBox( height: 10.0,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.6, //220.5
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return buildProductCard(products[index]['name'], products[index]['additions'], context, products[index]['amount']);
              },
            ),
          ),
        ],
      ),
    );
  }
}