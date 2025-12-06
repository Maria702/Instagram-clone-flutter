import 'package:flutter/material.dart';
import 'package:instagram_clone/utilis/color_contraint.dart';
import 'package:instagram_clone/utilis/font_contraint.dart';

class StoryView extends StatefulWidget {
  const StoryView({super.key, required this.imageView, required this.userName});

  final String imageView;
  final String userName;

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const SweepGradient(
              colors: [
                Color(0xFFFEDA75), // yellow
                Color(0xFFFA7E1E), // orange
                Color(0xFFD62976), // pink
                Color(0xFF962FBF), // purple
                Color(0xFF4F5BD5), // blue
                Color(0xFFFEDA75), // back to yellow to close the loop
              ],
            ),
          ),

          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: CircleAvatar(
              radius: 36,
              backgroundImage: AssetImage(widget.imageView),
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          right: 0,
          left: 0,
          child: Center(
            child: Text(
              widget.userName,
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
