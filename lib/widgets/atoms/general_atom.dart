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
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: child,
        ),
      ],
    );
  }
}
