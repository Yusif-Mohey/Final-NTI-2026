import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:gap/gap.dart';

class ActiveServiceCard extends StatelessWidget {
  const ActiveServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xffF2EEFF),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: const [
            Icon(Icons.local_car_wash, color: AppColors.primary),
            Gap(10),
            Expanded(
              child: Text(
                "Car Wash & EV Charging",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            Icon(Icons.check_circle, color: AppColors.primary),
          ],
        ),
      ),
    );
  }
}
