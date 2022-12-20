import 'package:flutter/material.dart';

class GeneralAtom extends StatelessWidget {
  final String title;
  final Widget child;
  const GeneralAtom(this.title, {required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline1,
              ),
              //TODO: Make it a button
              const Text(
                'See all',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: child,
        ),
      ],
    );
  }
}
