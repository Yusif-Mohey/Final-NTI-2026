import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icons.dart';

class EnterLocation extends StatelessWidget {
  const EnterLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        elevation: 5,
        centerTitle: true,
        title: Text('Enter Your Location' ,style: TextStyle(color: AppColors.primaryDark ,fontSize: 20 ,fontWeight: FontWeight.bold),),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Gap(30),
            TextField(
              
              decoration: InputDecoration(
               hintText: 'Golden Avenue',
               hintStyle: TextStyle(color: AppColors.secondary ,fontSize: 20 ,),
               suffixIcon: Icon(LineIcons.times ,color: AppColors.primary,),
                fillColor: Colors.grey.shade100,
                filled: true,
                prefixIcon: Icon(LineIcons.search ,size: 40,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
            Gap(50),
            Row(
              children: [
                Icon(LineIcons.locationArrow ,size: 50, color: AppColors.primary,fontWeight: FontWeight.w500,),
                SizedBox(width: 10,),
                Text('User my current location', style: TextStyle(color: AppColors.primaryDark,fontSize: 30 ,fontWeight: FontWeight.bold),),
               
              ],
            ),
            Gap(15),
            Divider(color: Colors.grey.shade400),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('SEARCH RESULT' ,style: TextStyle(color: AppColors.secondary ,fontSize: 20),)),
               Gap(30),
               Row(
              children: [
                Icon(LineIcons.locationArrow ,size: 40, color: AppColors.primary,fontWeight: FontWeight.w500,),
                SizedBox(width: 10,),
                Text('Gloden Avenue', style: TextStyle(color: AppColors.primaryDark,fontSize: 25 ,fontWeight: FontWeight.bold),),
               
              ],
            ),
          ],
        ),
      )
    );
  }
}