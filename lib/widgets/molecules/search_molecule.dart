import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchMolecule extends StatelessWidget {
  const SearchMolecule({super.key, required this.imgURL, required this.userName, required this. address, required this.ordersAmount});

  final String imgURL;
  final String userName;
  final String address;
  final int ordersAmount;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.23,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0))
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(
                  imgURL), 
                  radius: 25.0,
                ),
                title: Text('$userName, glad to see you again', style: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.w500),),
                subtitle: Text('$ordersAmount orders', style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300)),
              ),
              Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.only(left: 18, right: 20),
                margin: const EdgeInsets.fromLTRB(20,1,20,10),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Tap here to search",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(address, style: const TextStyle(fontWeight: FontWeight.w800),),
                        const SizedBox(width: 8.0,),
                        SvgPicture.asset('assets/icons/uparrowIcon.svg', color: Colors.red,)
                      ],
                    ),
                    SvgPicture.asset('assets/icons/settingsIcon.svg')
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}