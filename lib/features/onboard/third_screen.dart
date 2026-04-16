import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/Theme/app_colors.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assests/images/find photo.jpg", height: 400, width: 600),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Text.rich(
              TextSpan(
                text: "Track Your \n",
                style: TextStyle(fontSize: 30, color: Colors.black),
                children: [
                  TextSpan(text: "Parking "),
                  TextSpan(
                    text: "Booking",
                    style: TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          "Track your active bookings\n  and get real-time updates",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
