import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/Core/utils/wokingon_view.dart';
import 'package:flutter_application_1/features/profile/presentation/widgets/profile_item.dart';
import 'package:flutter_application_1/features/profile/presentation/widgets/your_profile_view.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icons.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.secondary,
                radius: 60,
                child: Icon(Icons.person),
              ),

              Gap(5),

              Positioned(
                bottom: -7,
                right: -7,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      log('Edit the image');
                    },
                    icon: Icon(LineIcons.edit, size: 20),
                  ),
                ),
              ),
            ],
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
                MaterialPageRoute(builder: (_) => YourProfileView()),
              );
            },
            text: 'Your profile',
            icon: Icons.person,
          ),
          Divider(),
          // in future
          ProfileItem(
            ontap: () {},
            text: 'Payment Methods',
            icon: Icons.credit_card,
          ),
          Divider(),
          ProfileItem(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => WorkingOnView()),
              );
            },
            text: 'Settings',
            icon: Icons.settings,
          ),
          Divider(),
          // in future
          ProfileItem(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => WorkingOnView()),
              );
            },
            text: 'Help Center',
            icon: Icons.help,
          ),
          Divider(),
          // in future
          ProfileItem(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => WorkingOnView()),
              );
            },
            text: 'Invite Friends',
            icon: Icons.person,
          ),
          Divider(),
          ProfileItem(
            ontap: () {
              // mariam ---> add logout here
            },
            text: 'Log out',
            icon: Icons.exit_to_app,
          ),
        ],
      ),
    );
  }
}
