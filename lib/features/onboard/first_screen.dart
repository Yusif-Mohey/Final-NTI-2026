import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

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
                text: "Find ",
                style: TextStyle(fontSize: 30, color: Colors.black),
                children: [
                  TextSpan(
                    text: "Nearby \n ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 188, 49, 44),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: " Parking Spots"),
                ],
              ),
            ),
          ),
        ),
        Text(
          "Discover availabele parking spots\n  around you in real-time.",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
