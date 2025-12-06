import 'package:flutter/material.dart';

class SuggestedReel extends StatelessWidget {
  const SuggestedReel({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
          ),
        ),
      ],
    );
  }
}
