import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/app_assets.dart';
import 'package:flutter_application_1/core/shared/card_item.dart';
import 'package:gap/gap.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CardItem(
            itemTitle: 'www',
            price: '22',
            img: AppAssets.logoImg,
            textTime: '12',
            textSpot: '12',
          ),
          Gap(20),
          CardItem(
            itemTitle: 'www',
            price: '22',
            img: AppAssets.logoImg,
            textTime: '12',
            textSpot: '12',
          ),
        ],
      ),
    );
  }
}
