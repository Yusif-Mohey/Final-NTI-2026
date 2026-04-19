import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';

import 'package:flutter_application_1/shared/cutom_progileitem.dart.dart';

import 'package:gap/gap.dart';
import 'package:line_icons/line_icons.dart';


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
      body: 
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Stack(
                  clipBehavior: Clip.none,
children: [
                   CircleAvatar(
                    backgroundColor: AppColors.secondary,
                    radius: 100,
                    child: Image.network(
                      
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy_V5A5D8KjBKXSRg35mCHYSoFsTGydgtYLg&s',
                    fit: BoxFit.cover,
                    ),
                  ),
                  Gap(5),
                  Positioned(
                    bottom: -7,
                    right: -7,
                    child: 
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        border: Border.all(color: Colors.white ,width: 2),
                        shape: BoxShape.circle
                      ),
                      child: IconButton(onPressed: (){}, icon:Icon( LineIcons.edit ,size: 20,))
                    ),
                    )
             ] ),
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
                ontap: () {},
                text: 'Your profile',
                icon: Icons.person,
              ),
              Divider(),
              ProfileItem(
                 ontap: () {},
                text: 'Payment Methods', icon: Icons.credit_card),
              Divider(),
              ProfileItem(
                 ontap: () {},
                text: 'My Wallet', icon: Icons.wallet),
              Divider(),
              ProfileItem(
                 ontap: () {},
                text: 'Settings', icon: Icons.settings),
              Divider(),
              ProfileItem(
                 ontap: () {},
                text: 'Help Center', icon: Icons.help),
              Divider(),
              ProfileItem(
                 ontap: () {},
                text: 'Privacy Policy', icon: Icons.lock),
              Divider(),
              ProfileItem(
                 ontap: () {},
                text: 'Invite Frienda', icon: Icons.person),
              Divider(),
              ProfileItem(
                 ontap: () {},
                text: 'Log out', icon: Icons.exit_to_app),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Root(),
    );
  }
}
