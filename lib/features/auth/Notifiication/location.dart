import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/constants/app_colors.dart';
import 'package:flutter_application_1/shared/custom_app_button.dart';
import 'package:flutter_application_1/shared/custom_text.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 150 ,left: 30 ,right: 30),
        child: Column(
          children: [
            
            // Padding(
            //   padding: const EdgeInsets.only(top: 150 ,left: 30 ,right: 30),
              // child:
               Align(
                alignment: Alignment.center ,
                child: Icon(Icons.location_on ,size: 80, color: AppColors.primary,)),
            // ),
            SizedBox(height: 40,),
            CustomText(text: 'What is Your Location ?' ,color: AppColors.primaryDark,fontSize: 30 ,fontWeight: FontWeight.bold, ),
            SizedBox(height: 5,),
            CustomText(text: 'We need to know Your location in order to suggest nearby services' ,color: AppColors.textSecondary,fontSize: 20 ,fontWeight: FontWeight.bold,),
            SizedBox(height: 20,),
            CustomAppButton(child: Text("Allow Location Access" ),)
          ],
        ),
      ),
    );
  }
}
