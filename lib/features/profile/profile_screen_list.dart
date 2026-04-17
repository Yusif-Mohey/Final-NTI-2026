import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/features/profile/profile_view.dart';
import 'package:flutter_application_1/features/root.dart';
import 'package:flutter_application_1/shared/cutom_progileitem.dart.dart';

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
              ProfileItem(
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
              ProfileItem(text: 'Payment Methods', icon: Icons.credit_card),
              Divider(),
              ProfileItem(text: 'My Wallet', icon: Icons.wallet),
              Divider(),
              ProfileItem(text: 'Settings', icon: Icons.settings),
              Divider(),
              ProfileItem(text: 'Help Center', icon: Icons.help),
              Divider(),
              ProfileItem(text: 'Privacy Policy', icon: Icons.lock),
              Divider(),
              ProfileItem(text: 'Invite Frienda', icon: Icons.person),
              Divider(),
              ProfileItem(text: 'Log out', icon: Icons.exit_to_app),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Root(),
    );
  }
}
