import 'package:flutter/material.dart';
import 'package:instagram_clone/utilis/font_contraint.dart';

class ReelPost extends StatelessWidget {
  const ReelPost({super.key, required this.reelPost});

  final String reelPost;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Stack(
        children: [
          ClipRRect(
            child: Image.asset(
              reelPost,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            left: 16,
            bottom: 46,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
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
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/user7.jpg"),
                  ),
                ),
                SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Username", style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Icon(
                          Icons.music_note_sharp,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 3),
                        Text(
                          "Original Audio",
                          style: TextStyle(color: Colors.white70, fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 15),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: BorderSide(color: Colors.white, width: 1.5),
                    fixedSize: const Size(85, 30),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    "Follow",
                    style: TextStyle(
                      fontSize: FontContraint.primaryText,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            right: 16,
            bottom: 16,
            child: Column(
              children: [
                Icon(Icons.favorite_border, color: Colors.white, size: 30),
                SizedBox(height: 5),
                Text("290.0k", style: TextStyle(color: Colors.white)),
                SizedBox(height: 10),
                Icon(Icons.chat_bubble_outline, color: Colors.white, size: 30),
                SizedBox(height: 5),
                Text("1,600", style: TextStyle(color: Colors.white)),
                SizedBox(height: 10),
                Icon(Icons.repeat, color: Colors.white, size: 30),
                SizedBox(height: 5),
                Text("1,000", style: TextStyle(color: Colors.white)),
                SizedBox(height: 10),
                Icon(Icons.send_outlined, color: Colors.white, size: 30),
                SizedBox(height: 5),
                Text("183k", style: TextStyle(color: Colors.white)),
                SizedBox(height: 10),
                Icon(Icons.more_vert, color: Colors.white, size: 30),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
