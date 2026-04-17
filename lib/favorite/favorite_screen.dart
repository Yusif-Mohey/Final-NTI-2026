import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, size: 30, color: Colors.black),
        title: Text(
          "Favorite",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, size: 30, color: Colors.black),
          ),
        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentIndex,
      //   selectedItemColor: const Color(0xff753EFB),
      //   unselectedItemColor: Colors.grey,
      //   type: BottomNavigationBarType.fixed,
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.explore_outlined),
      //       label: "Explore",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: "Favorite",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.book_outlined),
      //       label: "Bookings",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
  }
}
