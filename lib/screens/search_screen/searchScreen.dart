import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // Text controller for the search bar
  final TextEditingController _searchController = TextEditingController();

  // Store user’s search text
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          controller: _searchController,
          onChanged: (value) {
            setState(() {
              searchText = value;
            });
          },
          decoration: InputDecoration(
            hintText: "Search With Meta Ai",
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: const Icon(Icons.search, color: Colors.black),
            filled: true,
            fillColor: const Color.fromARGB(255, 249, 246, 246),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView.builder(
          padding: const EdgeInsets.all(2),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemCount: 15,
          itemBuilder: (context, index) {
            return Image.network(
              'https://picsum.photos/id/${index + 10}/300/300',
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
