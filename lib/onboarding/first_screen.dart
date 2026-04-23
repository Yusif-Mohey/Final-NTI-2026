import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Image.asset("assets/find.jpg", fit: BoxFit.contain),
        ),

        // Image.asset("assets/find.jpg"),,
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Text.rich(
              TextSpan(
                text: "Find ",
                style: TextStyle(fontSize: 30, color: Colors.black),
                children: [
                  TextSpan(
                    text: "Nearby \n",
                    style: TextStyle(
                      color: Color.fromARGB(255, 36, 62, 192),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: "Parking Spots"),
                ],
              ),
            ),
          ),
        ),
        Text(
          "Discover available parking spots\naround you in real-time.",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
