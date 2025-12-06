import 'package:flutter/material.dart';
import 'package:instagram_clone/utilis/color_contraint.dart';
import 'package:instagram_clone/utilis/font_contraint.dart';

class StoryBubbleWidget extends StatefulWidget {
  const StoryBubbleWidget({
    super.key,
    required this.userImage,
    required this.userTitle,
  });

  final String userImage;
  final String userTitle;

  @override
  State<StoryBubbleWidget> createState() => _StoryBubbleWidgetState();
}

class _StoryBubbleWidgetState extends State<StoryBubbleWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
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
              radius: 35,
              backgroundImage: AssetImage(widget.userImage),
            ),
          ),
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
              backgroundColor: Color(0xFFD62976),
              radius: 12,
              child: Icon(
                Icons.favorite_border_sharp,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),

        Positioned(
          bottom: -28,
          child: Container(
            child: Text(
              widget.userTitle,
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
