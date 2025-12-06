import 'package:flutter/material.dart';
import 'package:instagram_clone/components/story/add_story.dart';
import 'package:instagram_clone/components/story/story_bubble_widget.dart';
import 'package:instagram_clone/components/story/story_view.dart';
import 'package:instagram_clone/screens/Home_feed_screen/post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/Instagram_homeLogo.png",
          width: MediaQuery.of(context).size.width * 0.3,
          fit: BoxFit.cover,
        ),

        actions: [
          Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: MediaQuery.of(context).size.width * 0.053),
              Icon(Icons.chat_bubble_outline_rounded),
              SizedBox(width: MediaQuery.of(context).size.width * 0.053),
            ],
          ),
        ],
      ),

      // bottomNavigationBar: BottomNavigationScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AddStory(),
                    SizedBox(width: 15),
                    StoryView(
                      imageView: "assets/images/user2.jpg",
                      userName: "coder",
                    ),
                    SizedBox(width: 15),
                    StoryView(
                      imageView: "assets/images/user2.jpg",
                      userName: "coder",
                    ),
                    SizedBox(width: 15),

                    StoryBubbleWidget(
                      userImage: "assets/images/user6.jpg",

                      userTitle: "coder",
                    ),
                    SizedBox(width: 15),
                    StoryView(
                      imageView: "assets/images/user4.jpeg",
                      userName: "coder",
                    ),
                    SizedBox(width: 15),
                    StoryView(
                      imageView: "assets/images/user3.jpeg",
                      userName: "coder",
                    ),

                    SizedBox(width: 15),

                    StoryBubbleWidget(
                      userImage: "assets/images/user7.jpg",

                      userTitle: "coder",
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Column(
              children: [
                PostSection(
                  userImage: "assets/images/image1.jpg",
                  postImage: "assets/images/post1.jpg",
                ),
                SizedBox(height: 10),

                PostSection(
                  userImage: "assets/images/image1.jpg",
                  postImage: "assets/images/post2.webp",
                ),

                SizedBox(height: 10),

                PostSection(
                  userImage: "assets/images/image1.jpg",
                  postImage: "assets/images/post3.jpg",
                ),

                SizedBox(height: 10),

                PostSection(
                  userImage: "assets/images/image1.jpg",
                  postImage: "assets/images/post5.jpeg",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
