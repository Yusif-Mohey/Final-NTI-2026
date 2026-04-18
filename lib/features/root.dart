import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/shared/custom_text.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:flutter_application_1/features/favorite/view/favorite_view.dart';
import 'package:flutter_application_1/features/home/view/home_view.dart';
import 'package:flutter_application_1/features/profile/view/profile_view.dart';

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
    screen = [
      HomeView(),
      FavoriteView(),
      CustomText(text: 'Services Screen'), // Scrvices
      ProfileView(),
    ];
    log('slam 3alekom');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ), // for all the application except details cards or details services
            child: IndexedStack(index: currentPage, children: screen),
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
                selectedIconTheme: IconThemeData(color: Colors.white),
                unselectedIconTheme: IconThemeData(color: Colors.grey.shade500),
                backgroundColor: Colors.transparent,
                type: BottomNavigationBarType.fixed,

                items: [
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.heart_circle_fill),
                    label: 'Favorites',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.coffee_rounded),
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
      ),
    );
  }
}
