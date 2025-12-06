import 'package:flutter/material.dart';
import 'package:instagram_clone/components/profile/profile_highlight.dart';
import 'package:instagram_clone/screens/setting_screen/setting_screen.dart';
import 'package:instagram_clone/utilis/color_contraint.dart';
import 'package:instagram_clone/utilis/font_contraint.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Icon(Icons.lock_outlined),
            const SizedBox(width: 4),
            const Text("maria_Sheikh"),
            const Icon(Icons.arrow_drop_down_sharp),
            const Spacer(),
            const Icon(Icons.add_box_outlined),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingScreen()),
              );
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/image1.jpg"),
                    ),

                    Positioned(
                      right: 6,
                      bottom: -1,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 10,
                          child: Icon(Icons.add, size: 10, color: Colors.white),
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: -28,
                      child: Text(
                        "add bio",
                        style: TextStyle(
                          fontSize: FontContraint.primaryText,
                          color: ColorContraint.primaryTextColor,
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: const [
                    Text("Ria"),
                    Text(
                      "126",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("Posts"),
                  ],
                ),

                Column(
                  children: const [
                    Text(
                      "2.5K",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("Followers"),
                  ],
                ),

                Column(
                  children: const [
                    Text(
                      "200",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text("Following"),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorContraint.followbtn,
                      fixedSize: const Size(145, 20),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorContraint.followbtn,
                      fixedSize: const Size(145, 20),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Share Profile",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorContraint.followbtn,
                      fixedSize: const Size(45, 25),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Icon(Icons.person_add_outlined, color: Colors.black),
                  ),
                ],
              ),
            ),

            ProfileHighlight(),
          ],
        ),
      ),
    );
  }
}
