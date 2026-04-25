import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset("assets/image/track.jpg"), flex: 2),

        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.all(20),
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
                      color: Color.fromARGB(255, 36, 62, 192),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          "Track your active bookings\nand get real-time updates.",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
