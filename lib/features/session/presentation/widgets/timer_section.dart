import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';

class TimerSection extends StatelessWidget {
  final CountDownController controller;

  const TimerSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularCountDownTimer(
            duration: 900, // 1h 42m
            initialDuration: 0,
            controller: controller,
            width: 220,
            height: 220,
            ringColor: Colors.grey.shade300,
            fillColor: AppColors.primary,
            strokeWidth: 10,
            textStyle: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            isReverse: true,
            isReverseAnimation: true,
            autoStart: false,
          ),

          const Positioned(
            top: 60,
            child: Text(
              "TIME REMAINING",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),

          Positioned(
            bottom: 60,
            child: Text(
              "Hours Left",
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
