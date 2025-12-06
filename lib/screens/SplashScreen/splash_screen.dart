import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/authentications/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,

        MaterialPageRoute(
          builder: (context) => SignIn(),

          //  BottomNavigationScreen()
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/mainLogo.png",

              width: 80,
              height: 80,
            ),
          ),

          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Center(
              child: Column(
                children: [
                  Center(child: Text("from")),

                  SizedBox(height: 1),
                  Image.asset(
                    "assets/images/logo_2.png",

                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
