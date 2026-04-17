import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Booking/my_booking.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/favorite/favorite_screen.dart';
import 'package:flutter_application_1/features/home/home_view.dart';
// import 'package:flutter_application_1/features/profile/profile_view.dart';
// import 'package:nti_final/constants/app_colors.dart';
// import 'package:nti_final/features/home/home_view.dart';
// import 'package:nti_final/features/profile/profile_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late List<Widget> screen;
  int currentPage = 0;
  @override
  void initState() {
    screen = [HomeView(), FavoriteScreen(), BookingScreen()];
    ////  1
    print('slam 3alekom');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: IndexedStack(index: currentPage, children: screen),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: BottomNavigationBar(
            currentIndex: currentPage,
            onTap: (index) {
              setState(() {
                currentPage = index;
              });
            },
            elevation: 0,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade500,
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.square_favorites),
                label: 'Fav',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(CupertinoIcons.location_circle_fill),
              //   label: 'Explore',
              // ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.list_bullet),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
