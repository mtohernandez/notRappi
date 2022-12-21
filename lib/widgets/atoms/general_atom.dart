import 'package:flutter/material.dart';

class GeneralAtom extends StatelessWidget {
  final String title;
  final Widget child;
  final bool isAll;
  const GeneralAtom(this.title,
      {required this.child, required this.isAll, super.key});

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
              if (isAll)
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.zero,
                    ),
                    minimumSize: MaterialStateProperty.all(
                      const Size(40, 10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
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
