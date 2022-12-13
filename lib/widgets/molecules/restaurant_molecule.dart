import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantMolecule extends StatefulWidget {
  const RestaurantMolecule({
    super.key, 
    required this.restaurantName,
    required this.imageUrl,
    required this.raiting,
    required this.raitingAmount,
    required this.estimatedTime,
    required this.distance,
    required this.isSearch
  });

  final String restaurantName;
  final String imageUrl;
  final double raiting;
  final int raitingAmount;
  final int estimatedTime;
  final double distance;
  final bool isSearch;

  @override
  State<RestaurantMolecule> createState() => _RestaurantMoleculeState();
}


//!widget.isSearch ? SearchWidget() : NotSearchWdiget() final result

class _RestaurantMoleculeState extends State<RestaurantMolecule> {

  Widget _buildMiddleRow(double rating, int ratingAmount, int estimatedTime, double distance){
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/starIcon.svg',
          width: 20.0,
          height: 20.0,
        ),
        Text(
          ' $rating', 
          style: const TextStyle(
            fontSize: 10.0, 
            fontWeight: FontWeight.bold,
            color: Colors.red
          ),
        ),
        Text(' ($ratingAmount)', style: const TextStyle(fontSize: 10.0, color: Color.fromARGB(255, 102, 102, 102)),),
        const SizedBox(width: 5.0,),
        SvgPicture.asset(
          'assets/icons/timerIcon.svg',
          width: 20.0,
          height: 20.0,
        ),
        Text(' $estimatedTime min ', style: const TextStyle(fontSize: 10.0),),
        Container(
          width: 4.5,
          height: 4.5,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
        ),
        Text(' $distance km', style: const TextStyle(fontSize: 10.0),)
      ],
    );
  }

  Widget buildDiscountItem(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          '20% OFF TODAY',
          style: TextStyle(
            fontSize: 10.0,
            color: Colors.white
          ),
        ),
      ),
    );
  }

  Widget _buildRestaurantImage(bool isSearch){
    return Container(
      width: !isSearch ? MediaQuery.of(context).size.width / 2.11 : MediaQuery.of(context).size.width * 1.11,
      height: !isSearch ? MediaQuery.of(context).size.height / 9.65 : MediaQuery.of(context).size.height / 10.03,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            widget.imageUrl
          )
        )
      ),
    );
  }

  Widget buildSearch(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRestaurantImage(widget.isSearch),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.restaurantName,
                    style: const TextStyle(
                      fontSize: 13.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox( height: 5.0,),
                  _buildMiddleRow(widget.raiting, widget.raitingAmount, widget.estimatedTime, widget.distance),
                ],
              ),
              buildDiscountItem()
            ],
          ),
        ),
      ],
    );
  }

  Widget buildNotSearch(){
    return Row(
      children: [
        _buildRestaurantImage(widget.isSearch),
        const SizedBox(width: 7.5,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.restaurantName,
                style: const TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox( height: 5.0,),
              _buildMiddleRow(widget.raiting, widget.raitingAmount, widget.estimatedTime, widget.distance),
              const SizedBox( height: 5.0,),
              buildDiscountItem()
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: !widget.isSearch ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width - 1,
      height: !widget.isSearch ? MediaQuery.of(context).size.height / 7.8 : MediaQuery.of(context).size.height / 6.01,
      child: !widget.isSearch ? buildNotSearch() : buildSearch(),
    );
  }
}

// 'https://realfood.tesco.com/media/images/1400x919-Pesto-chicken-burgers-ae343a21-815a-4d8e-b71e-b3cbb1be185e-0-1400x919.jpg'