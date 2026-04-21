import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Theme/app_colors.dart';
import 'package:flutter_application_1/core/shared/base_card.dart';
import 'package:flutter_application_1/core/shared/custom_app_button.dart';
import 'package:flutter_application_1/core/shared/custom_text.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/services_card_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //// dont Forget Above the textField Add the Profile details
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            Gap(5),
            TextField(
              decoration: InputDecoration(
                hintText: 'Garage Services & Facilities',
                hintStyle: TextStyle(color: AppColors.secondary, fontSize: 11.sp),

                fillColor: Colors.grey.shade100,
                filled: true,
                prefixIcon: Icon(Icons.search, size: 30),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Gap(30),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.local_parking,
                          size: 30,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    CustomText(
                      text: 'My Spot',
                      color: AppColors.textPrimary,
                      fontSize: 8.sp,
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_today,
                          size: 30,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    CustomText(
                      text: 'Reservations',
                      color: AppColors.textPrimary,
                      fontSize: 8.sp,
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.credit_card,
                          size: 30,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    CustomText(
                      text: 'Payments',
                      color: AppColors.textPrimary,
                      fontSize: 8.sp,
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.support_agent,
                          size: 30,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    CustomText(
                      text: 'Concierge',
                      color: AppColors.textPrimary,
                      fontSize: 8.sp,
                    ),
                  ],
                ),
              ],
            ),
            Gap(20),
            BaseCard(
              pagging: EdgeInsets.all(30),
              hight: 450.h,
              width: double.infinity,

              gradient: [Color(0xff7B61FF), Color(0xFF9F7AEA)],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextButton(
                        autofocus: true,
                        onPressed: () {},
                        child: Text(
                          'Grand plaza Premium',
                          style: TextStyle(
                            color: AppColors.surface,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Gap(5),
                          CustomText(
                            text: 'Remaining',
                            color: AppColors.surface,
                            fontSize: 10.sp,
                          ),
                          Gap(3),
                          CustomText(
                            text: '01:24:08',
                            color: AppColors.surface,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(3),
                  CustomText(
                    text: 'Curent Session',
                    color: AppColors.surface,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: 'Level4,B12',
                    color: AppColors.surface,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),

                  Gap(30),
                  Row(
                    children: [
                      Expanded(
                        child: CustomAppButton(
                          height: 60.h,
                          borderRadius: 30,
                          width: 100.w,
                          btnColor: AppColors.background,
                          onTap: () {},
                          child: Text(
                            'Extend Duration',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      Gap(50),
                      IconButton(
                        autofocus: true,

                        onPressed: () {},
                        icon: Icon(
                          Icons.location_on,
                          size: 50,
                          color: AppColors.surface,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Gap(30),
            Row(
              children: [
                CustomText(
                  text: 'Your Preferences ',
                  color: AppColors.textPrimary,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
                Spacer(),
                CustomText(
                  text: 'Settings ',
                  color: AppColors.primary,
                  fontSize: 11.sp,
                ),
              ],
            ),
            Gap(10),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: BaseCard(
                    hight: 230.h,
                    width: 150.w,
                    pagging: EdgeInsets.all(30),

                    child: Column(
                      children: [
                        Icon(
                          Icons.directions_car,
                          size: 50,
                          color: AppColors.primary,
                        ),
                        Gap(5),
                        CustomText(
                          text: 'Primary Vehicle',
                          color: AppColors.textPrimary,
                          fontSize: 6.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        Gap(5),
                        CustomText(
                          text: 'Tesla Model . 4B22',
                          color: AppColors.textSecondary,
                          fontSize: 5.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                BaseCard(
                   hight: 230.h,
                    width: 150.w,
                  pagging: EdgeInsets.all(30),

                  child: Column(
                    children: [
                      Icon(Icons.star, size: 50, color: AppColors.error),
                      Gap(5),
                      CustomText(
                        text: 'Member Status',
                        color: AppColors.textPrimary,
                        fontSize: 6.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      Gap(5),
                      CustomText(
                        text: 'Platinum Tier',
                        color: AppColors.textSecondary,
                        fontSize: 5.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Gap(30),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Garage Services ',
                color: AppColors.textPrimary,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),

            Gap(10),
            ServicesCardScreen(),
            Gap(50),
            BaseCard(
              pagging: EdgeInsets.all(30),
              hight: 400.h,
              width: double.infinity,
              gradient: [Colors.grey.shade500, Colors.grey.shade300],
              child: Column(
                children: [
                  CustomText(
                    text: 'Valet Upgrade',
                    color: AppColors.textPrimary,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: 'Upgrade your current stay',
                    color: Colors.black87,
                   fontSize: 9.sp,
                  ),
                  CustomText(
                    text: 'to Full Valet service for just \$15 .',
                    color: Colors.black87,
                    fontSize: 9.sp,
                  ),
                  Gap(30),
                  CustomAppButton(
                    onTap: () {},
                    btnColor: Colors.grey.shade700,
                    borderRadius: 50,
                    width: 150.w,
                    height: 100.h,
                    text: 'Upgrade now' ,
                    textColor: AppColors.surface,
                    
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
