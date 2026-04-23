import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Image.asset("assets/fave.jpg", fit: BoxFit.contain),
          flex: 2,
        ),

        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Text.rich(
              TextSpan(
                text: "Save Your ",
                style: TextStyle(fontSize: 30, color: Colors.black),
                children: [
                  TextSpan(
                    text: "Favorite \n",
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
          "Keep your go-to parking spots\nsaved for quick and easy access.",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
