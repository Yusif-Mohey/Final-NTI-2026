import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/features/profile/profile_view.dart';
import 'package:flutter_application_1/features/root.dart';
import 'package:flutter_application_1/shared/customCard.dart';

import 'package:gap/gap.dart';


class ProfileScreenList extends StatefulWidget {
  const ProfileScreenList({super.key});

  @override
  State<ProfileScreenList> createState() => _ProfileScreenListState();
}

class _ProfileScreenListState extends State<ProfileScreenList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'profile ',
          style: TextStyle(color: AppColors.textPrimary, fontSize: 40),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: AppColors.secondary,
                  radius: 100,
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy_V5A5D8KjBKXSRg35mCHYSoFsTGydgtYLg&s',
                  ),
                ),
              ),
              Gap(40),
              Text(
                'Esther Howard',
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(20),
              Customcard(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileView()),
                  );
                },
                text: 'Your profile',
                icon: Icons.person,
              ),
              Divider(),
              Customcard(text: 'Payment Methods', icon: Icons.credit_card),
              Divider(),
              Customcard(text: 'My Wallet', icon: Icons.wallet),
              Divider(),
              Customcard(text: 'Settings', icon: Icons.settings),
              Divider(),
              Customcard(text: 'Help Center', icon: Icons.help),
              Divider(),
              Customcard(text: 'Privacy Policy', icon: Icons.lock),
              Divider(),
              Customcard(text: 'Invite Frienda', icon: Icons.person),
              Divider(),
              Customcard(text: 'Log out', icon: Icons.exit_to_app),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Root(),
    );
  }
}
