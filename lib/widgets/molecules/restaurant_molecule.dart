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

class _RestaurantMoleculeState extends State<RestaurantMolecule> {
  @override
  Widget build(BuildContext context) {
    return !widget.isSearch ? GestureDetector(
      onTap: () => {},
      child: SizedBox(
        width: 350.0,
        height: 100.0,
        child: Row(
          children: [
            Container(
              width: 170.0,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    widget.imageUrl
                  )
                )
              ),
            ),
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
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/starIcon.svg',
                        width: 20.0,
                        height: 20.0,
                      ),
                      Text(
                        ' ${widget.raiting}', 
                        style: const TextStyle(
                          fontSize: 10.0, 
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                        ),
                      ),
                      Text(' (${widget.raitingAmount})', style: const TextStyle(fontSize: 10.0, color: Color.fromARGB(255, 102, 102, 102)),),
                      const SizedBox(width: 5.0,),
                      SvgPicture.asset(
                        'assets/icons/timerIcon.svg',
                        width: 20.0,
                        height: 20.0,
                      ),
                      Text(' ${widget.estimatedTime} min ', style: const TextStyle(fontSize: 10.0),),
                      Container(
                        width: 4.5,
                        height: 4.5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                      ),
                      Text(' ${widget.distance} km', style: const TextStyle(fontSize: 10.0),)
                    ],
                  ),
                  const SizedBox( height: 5.0,),
                  Container(
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ) :  Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: GestureDetector(
        onTap: () => {},
        child: SizedBox(
          width: 350.0,
          height: 120.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 400.0,
                height: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      widget.imageUrl
                    )
                  )
                ),
              ),
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
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/starIcon.svg',
                              width: 20.0,
                              height: 20.0,
                            ),
                            Text(
                              ' ${widget.raiting}', 
                              style: const TextStyle(
                                fontSize: 12.0, 
                                fontWeight: FontWeight.bold,
                                color: Colors.red
                              ),
                            ),
                            Text(' (${widget.raitingAmount})', style: const TextStyle(fontSize: 12.0, color: Color.fromARGB(255, 102, 102, 102)),),
                            const SizedBox(width: 5.0,),
                            SvgPicture.asset(
                              'assets/icons/timerIcon.svg',
                              width: 20.0,
                              height: 20.0,
                            ),
                            Text(' ${widget.estimatedTime} min ', style: const TextStyle(fontSize: 12.0),),
                            Container(
                              width: 4.5,
                              height: 4.5,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            Text(' ${widget.distance} km', style: const TextStyle(fontSize: 12.0),)
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                            '20% OFF TODAY',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white
                            ),
                          ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 'https://realfood.tesco.com/media/images/1400x919-Pesto-chicken-burgers-ae343a21-815a-4d8e-b71e-b3cbb1be185e-0-1400x919.jpg'