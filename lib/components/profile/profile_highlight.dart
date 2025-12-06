import 'package:flutter/material.dart';
import 'package:instagram_clone/components/profile/profile_tab.dart';

class ProfileHighlight extends StatelessWidget {
  const ProfileHighlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black26, width: 3),
                      ),
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add),
                      ),
                    ),
                    Text("New"),
                  ],
                ),
              ),
              HighlightsSection(),
              HighlightsSection(),
              HighlightsSection(),
            ],
          ),
        ),
        ProfileTab(),
      ],
    );
  }
}

class HighlightsSection extends StatelessWidget {
  const HighlightsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black26, width: 3),
            ),
            child: const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/images/image1.jpg"),
              backgroundColor: Colors.grey,
            ),
          ),
          Text("2k21"),
        ],
      ),
    );
  }
}
