import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// <<<<<<< HEAD
// import 'package:flutter_application_1/Core/shared/custom_text.dart';
// =======
// >>>>>>> b45edb7 (add session screen, bokking , dashboard)
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:flutter_application_1/features/booking/presentation/view/booking_view.dart';
import 'package:flutter_application_1/features/home/presentation/view/home_view.dart';
import 'package:flutter_application_1/features/profile/presentation/view/profile_view.dart';
import 'package:flutter_application_1/features/session/presentation/view/timer_view.dart';

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
    screen = [HomeView(), BookingView(), TimerView(), ProfileView()];
    log('slam 3alekom');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: IndexedStack(index: currentPage, children: screen),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              currentIndex: currentPage,
              onTap: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              elevation: 0,
              enableFeedback: false,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              selectedIconTheme: IconThemeData(color: AppColors.surface),
              unselectedIconTheme: IconThemeData(color: AppColors.secondary),
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,

              items: [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.house),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.car),
                  label: 'Parking',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.av_timer_sharp),
                  label: 'Services',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
