import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          const SizedBox(height: 10),

          const TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.grid_on, color: Colors.black)),
              Tab(icon: Icon(Icons.movie_outlined, color: Colors.black)),
              Tab(icon: Icon(Icons.repeat, color: Colors.black)),
              Tab(icon: Icon(Icons.person_pin_outlined, color: Colors.black)),
            ],
          ),

          SizedBox(
            height: 400,
            child: TabBarView(
              children: [
                GridView.builder(
                  padding: const EdgeInsets.all(5),
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return Image.asset(
                      "assets/images/image1.jpg",
                      fit: BoxFit.cover,
                    );
                  },
                ),

                const Center(child: Text("No reel posts yet")),
                const Center(child: Text("No  reposts yet")),
                const Center(child: Text("No posts yet")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
