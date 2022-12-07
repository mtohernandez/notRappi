import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NewMolecule extends StatefulWidget {
  @override
  State<NewMolecule> createState() => _NewMoleculeState();
}

class _NewMoleculeState extends State<NewMolecule> {
  Widget _buildNewContainer(int index) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                height: double.infinity,
                color: Colors.orange,
                child: Text('Title $index'),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/imageTest.jpg'), //! This is a test
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Image $index'),
              ),
            )
          ],
        ),
      ),
    );
  }

  int _current = 0;
  CarouselController navigationController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Media query allows the app to adjust to the phone size instead of having a default
      height: MediaQuery.of(context).size.height * 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            carouselController: navigationController,
            itemCount: 5,
            itemBuilder: (context, index, realIndex) {
              return _buildNewContainer(index);
            },
            options: CarouselOptions(
                height: 100,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(2),
                  child: Wrap(
                    children: [
                      InkWell(
                        onTap: () {
                          navigationController.animateToPage(index);
                        },
                        child: Ink(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                _current == index ? Colors.black : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
