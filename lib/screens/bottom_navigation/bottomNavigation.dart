import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/Home_page/home_screen.dart';
import 'package:instagram_clone/screens/add_post_screen/add_post_screen.dart';
import 'package:instagram_clone/screens/profile_screen/profile_screen.dart';
import 'package:instagram_clone/screens/reels_screen/reels_screen.dart';
import 'package:instagram_clone/screens/search_screen/searchScreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedScreen = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    AddPostScreen(),
    ReelsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedScreen,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        iconSize: 35,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_sharp), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: "",
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedScreen = index;
          });
        },
      ),
    );
  }
}
