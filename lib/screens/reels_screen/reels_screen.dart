import 'package:flutter/material.dart';
import 'package:instagram_clone/components/reels/reel_post.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Reels", style: TextStyle(color: Colors.white)),
            SizedBox(width: 30),
            Text("Friends", style: TextStyle(color: Colors.white)),
            SizedBox(width: 5),
            CircleAvatar(
              radius: 13,
              backgroundImage: AssetImage("assets/images/user7.jpg"),
            ),
            SizedBox(width: 5),
            CircleAvatar(
              radius: 13,
              backgroundImage: AssetImage("assets/images/user5.jpg"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ReelPost(reelPost: "assets/images/image1.jpg"),
            SizedBox(height: 40),
            ReelPost(reelPost: "assets/images/post1.jpg"),
            SizedBox(height: 40),
            ReelPost(reelPost: "assets/images/image1.jpg"),
          ],
        ),
      ),
    );
  }
}
