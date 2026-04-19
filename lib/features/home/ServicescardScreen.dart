import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';
import 'package:flutter_application_1/shared/custom_text.dart';
import 'package:flutter_application_1/shared/customcarddesh.dart';
import 'package:gap/gap.dart';

class Servicescardscreen extends StatelessWidget {
  const Servicescardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        BaseCard(
            
             hight:250,
            width: double.infinity,
            pagging: EdgeInsets.all(30),
           
        
            child: Column(
              children: [
                Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.local_car_wash,
                                size: 70,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                      
                                  Gap(30),
                      Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: 'Premium Detail Wash ',
                                color: AppColors.textPrimary,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                             Gap(10),
                              CustomText(
                                text: '\$45.00 ',
                                color: AppColors.primary,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
            
                            ],
                          ),
        
                         
        
            
              CustomText(
                        text: 'Available on Level 1 * 45 min',
                        color: AppColors.textSecondary,
                        fontSize: 20,
                      ),
                      Gap(3),
                      CustomText(
                        text: 'in-session Service available ',
                        color: AppColors.error,
                        fontSize: 20,
                      ),
                        ])
                        ])
            
        )
        ]
        )
        ),
        Gap(20),
         BaseCard(
            
             hight:250,
            width: double.infinity,
            pagging: EdgeInsets.all(30),
           
        
            child: Column(
              children: [
                Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.ev_station,
                                size: 70,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                      
                                  Gap(30),
                      Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: 'Super EV Changing ',
                                color: AppColors.textPrimary,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                             Gap(10),
                              CustomText(
                                text: '\$0.45/kWh ',
                                color: AppColors.primary,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
            
                            ],
                          ),
        
                         
        
            
              CustomText(
                        text: 'All levels * Priority for members',
                        color: AppColors.textSecondary,
                        fontSize: 20,
                      ),
                      Gap(3),
                      CustomText(
                       text: '12 bays currently open ',
                        color: AppColors.error,
                        fontSize: 20,
                      ),
                        ])
                        ])
            
        )
        ]
        )
        ),
        Gap(20),
         BaseCard(
            
             hight:250,
            width: double.infinity,
            pagging: EdgeInsets.all(30),
           
        
            child: Column(
              children: [
                Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.oil_barrel,
                                size: 70,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                      
                                  Gap(30),
                      Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: 'Express Oil change  ',
                                color: AppColors.textPrimary,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                             Gap(10),
                              CustomText(
                                text: '\$89.00 ',
                                color: AppColors.primary,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
            
                            ],
                          ),
        
                         
        
            
              CustomText(
                        text: 'Service Hub * Synthetic Grade',
                        color: AppColors.textSecondary,
                        fontSize: 20,
                      ),
                      Gap(3),
                      CustomText(
                         text: 'Next slot: 2:30 PM Today',
                        color: AppColors.error,
                        fontSize: 20,
                      ),
                        ])
                        ])
            
        ),
        ]
        )
        ),

      ],
    );
    
  }
}