import 'package:flutter/material.dart';
import 'package:instagram_clone/utilis/color_contraint.dart';
import 'package:instagram_clone/utilis/font_contraint.dart';

class AddStory extends StatelessWidget {
  const AddStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
          right: -4,
          bottom: -4,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 12,
              child: Icon(Icons.add, size: 18, color: Colors.white),
            ),
          ),
        ),

        Positioned(
          bottom: -28,
          child: Container(
            child: Text(
              "Your Story",
              style: TextStyle(
                fontSize: FontContraint.primaryText,
                color: ColorContraint.primaryTextColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
