import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/current_session_card.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/garage_services.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/profile_details.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/quick_actions.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/search_bar.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/user_preferences.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/valet_upgrade_card.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileDetails(),
          Gap(20),
          GarageSearchBar(),
          Gap(30),
          QuickActions(),
          Gap(20),
          CurrentSessionCard(),
          Gap(30),
          UserPreferences(),
          Gap(30),
          GarageServices(),
          Gap(50),
          ValetUpgradeCard(),
        ],
      ),
    );
  }
}
