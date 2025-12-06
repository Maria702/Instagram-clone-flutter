import 'package:flutter/material.dart';

class StorySlider extends StatelessWidget {
  const StorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // Container(color: Colors.red, width: 140, height: 140),
          // Container(
          //   color: const Color.fromARGB(255, 255, 255, 255),
          //   width: 80,
          //   height: 80,
          // ),
          // Container(
          //   color: const Color.fromARGB(255, 108, 54, 244),
          //   width: 70,
          //   height: 70,
          // ),

          // Container(
          //   color: const Color.fromARGB(255, 54, 244, 105),
          //   width: 60,
          //   height: 60,
          // ),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/image1.jpg"),
          ),

          Positioned(
            right: -10,
            bottom: -10,
            child: CircleAvatar(radius: 10, child: Icon(Icons.add, size: 10)),
          ),
        ],
      ),
    );
  }
}
