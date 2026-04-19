import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/features/home/ServicescardScreen.dart';
import 'package:flutter_application_1/shared/custom_app_button.dart';
import 'package:flutter_application_1/shared/custom_text.dart';
import 'package:flutter_application_1/shared/customcarddesh.dart';

import 'package:gap/gap.dart';


class DeshboardScreen extends StatefulWidget {
  const DeshboardScreen({super.key});

  @override
  State<DeshboardScreen> createState() => _DeshboardScreenState();
}

class _DeshboardScreenState extends State<DeshboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
       elevation: 2,
        title: CustomText(text: 'WELCOM BACK' ,color: AppColors.textSecondary,fontSize: 30,),
actions: [
  IconButton(onPressed: (){}, icon: Icon(Icons.notifications ,size: 40 ,color: AppColors.primary,))
],
      ),
body: SingleChildScrollView(
  scrollDirection: Axis.vertical,
  child: Padding(
    padding: EdgeInsetsGeometry.all(20),
    child: Column(
      children: [
        Gap(5),
          TextField(
                
                decoration: InputDecoration(
                 hintText: 'Garage Services & Facilities',
                 hintStyle: TextStyle(color: AppColors.secondary ,fontSize: 20 ,),
                
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  prefixIcon: Icon(Icons.search ,size: 30,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
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
                child: IconButton(onPressed: (){}, icon: Icon(Icons.local_parking ,size: 30,color: AppColors.primary,)),
                
                       ),
                       CustomText(text: 'My Spot', color:AppColors.textPrimary ,fontSize: 20 ,)
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
                child: IconButton(onPressed: (){}, icon: Icon(Icons.calendar_today ,size: 30,color: AppColors.primary,)),
                
                       ),
                       CustomText(text: 'Reservations', color:AppColors.textPrimary ,fontSize: 20 ,)
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
                child: IconButton(onPressed: (){}, icon: Icon(Icons.credit_card ,size: 30,color: AppColors.primary,)),
                
                       ),
                       CustomText(text: 'Payments', color:AppColors.textPrimary ,fontSize: 20 ,)
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
                child: IconButton(onPressed: (){}, icon: Icon(Icons.support_agent ,size: 30,color: AppColors.primary,)),
                
                       ),
                       CustomText(text: 'Concierge', color:AppColors.textPrimary ,fontSize: 20 ,)
             ],
           ),
          
        ],
       ),
       Gap(20),
       BaseCard(
         pagging: EdgeInsets.all(30),
        hight: 350,
        width: double.infinity,
        
        gradient: [Color(0xff7B61FF) ,Color(0xFF9F7AEA)],
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
                    style: TextStyle(color: AppColors.surface, fontSize: 20),
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    Gap(5),
                    CustomText(
                      text: 'Remaining',
                      color: AppColors.surface,
                      fontSize: 25,
                    ),
                    Gap(3),
                    CustomText(
                      text: '01:24:08',
                      color: AppColors.surface,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ]),
          ]),      
Gap(3),
            CustomText(text: 'Curent Session' ,color: AppColors.surface, fontSize: 20,fontWeight: FontWeight.bold,),
             CustomText(text: 'Level4,B12' ,color: AppColors.surface, fontSize: 20,fontWeight: FontWeight.bold,),
            
              Gap(40),
            Row(
              children: [
                Expanded(
                  child: CustomAppButton(
                    borderRadius: 30,
                    width: double.infinity,
                    btnColor: AppColors.background,
                    onTap: () {},
                    child: Text(
                      'Extend Duration',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Gap(70),
                IconButton(
                  autofocus: true,

                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on,
                    size: 40,
                    color: AppColors.surface,
                  ),
                ),
              ],
            ),
          ],
        )
        , 
       
    
    
  ),
  
      
     
       Gap(30),
       Row(
        children: [
          CustomText(text: 'Your Preferences ' ,color: AppColors.textPrimary,fontSize: 30,fontWeight: FontWeight.bold,),
          Spacer(),
          CustomText(text: 'Settings ' ,color: AppColors.primary,fontSize: 20,),
        ]
       ),
        Gap(10),
Row(
  children: [
    Align(
      alignment: Alignment.centerLeft,
      child: 
      BaseCard(
        
         hight:200,
        width: 250,
        pagging: EdgeInsets.all(30),
       

        child: Column(
          children: [
            Icon(Icons.directions_car,
                size: 50,
                color: AppColors.primary,),
                Gap(5),
            CustomText(text: 'Primary Vehicle' ,color: AppColors.textPrimary,fontSize: 25,fontWeight: FontWeight.bold,),
            Gap(5),
             CustomText(text: 'Tesla Model . 4B22' ,color: AppColors.textSecondary,fontSize: 20,fontWeight: FontWeight.bold,),

          ],
        ),
         
        
         ),
     
    ),
    Spacer(),
    BaseCard(
        
         hight:200,
        width: 250,
        pagging: EdgeInsets.all(30),
       

        child: Column(
          children: [
            Icon(Icons.star,
                size: 50,
                color: AppColors.error,),
                Gap(5),
            CustomText(text: 'Member Status' ,color: AppColors.textPrimary,fontSize: 25,fontWeight: FontWeight.bold,),
            Gap(5),
             CustomText(text: 'Platinum Tier' ,color: AppColors.textSecondary,fontSize: 20,fontWeight: FontWeight.bold,),

          ],
        ),
         
        
         ),
  ],
),
Gap(30),
 Align(
  alignment: Alignment.centerLeft,
  child: CustomText(
    text: 'Garage Services ' ,color: AppColors.textPrimary,fontSize: 30,fontWeight: FontWeight.bold,)),

        Gap(10),
     Servicescardscreen(),
     Gap(50),
     BaseCard(
      pagging: EdgeInsets.all(30), 
       hight: 300,
        width: double.infinity,
         gradient: [Colors.grey.shade500 ,Colors.grey.shade300],
      child: Column(
        children: [
          CustomText(text: 'Valet Upgrade' ,color: AppColors.textPrimary,fontSize: 30,fontWeight: FontWeight.bold,),
          CustomText(text: 'Upgrade your current stay' ,color: Colors.black87,fontSize: 25,),
          CustomText(text: 'to Full Valet service for just \$15 .' ,color: Colors.black87,fontSize: 25,),
          Gap(50),
CustomAppButton(
  onTap: (){},
  btnColor: Colors.grey.shade700,
  borderRadius: 50,
  width: 300,
  text: 'Upgrade now',
  textColor: AppColors.surface,
)
        ],
      ),
       
        ),
     
      
   ] ),
    ),

    ));
  }
}