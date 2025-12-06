import 'package:flutter/material.dart';
import 'package:instagram_clone/utilis/color_contraint.dart';
import 'package:instagram_clone/utilis/font_contraint.dart';

class PostSection extends StatefulWidget {
  const PostSection({
    super.key,
    required this.userImage,
    required this.postImage,
  });

  final String userImage;
  final String postImage;

  @override
  State<PostSection> createState() => _PostSectionState();
}

class _PostSectionState extends State<PostSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10, bottom: 8),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const SweepGradient(
                    colors: [
                      Color(0xFFFEDA75),
                      Color(0xFFFA7E1E),
                      Color(0xFFD62976),
                      Color(0xFF962FBF),
                      Color(0xFF4F5BD5),
                      Color(0xFFFEDA75),
                    ],
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(widget.userImage),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                      fontSize: FontContraint.primaryText,
                    ),
                  ),
                  Text(
                    "Suggested to you",
                    style: TextStyle(
                      fontSize: FontContraint.primaryText,
                      color: ColorContraint.primaryTextColor,
                    ),
                  ),
                ],
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorContraint.followbtn,
                        fixedSize: const Size(85, 15),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          fontSize: FontContraint.primaryText,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.9,

              child: Image.asset(widget.postImage, fit: BoxFit.cover),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  Text("470"),

                  SizedBox(width: 15),

                  Icon(Icons.mode_comment_outlined),
                  Text("80"),
                  SizedBox(width: 15),

                  Icon(Icons.repeat),
                  Text("80"),
                  SizedBox(width: 15),

                  Icon(Icons.send_outlined),
                  Text("80"),
                  Spacer(),
                  Icon(Icons.bookmark_border),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text(
                    "Username",

                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: FontContraint.primaryText,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Lorem Ipsum is simply dummy text... more",
                    style: TextStyle(fontSize: FontContraint.primaryText),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text(
                    "October 9 .",
                    style: TextStyle(
                      fontSize: FontContraint.primaryText,
                      color: ColorContraint.primaryTextColor,
                    ),
                  ),
                  SizedBox(width: 3),
                  Text(
                    "See translation",
                    style: TextStyle(fontSize: FontContraint.primaryText),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
