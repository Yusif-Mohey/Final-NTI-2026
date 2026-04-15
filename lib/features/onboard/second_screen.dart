import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
                text: "Save Your ",
                style: TextStyle(fontSize: 30, color: Colors.black),
                children: [
                  TextSpan(
                    text: "Favorit \n ",
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
          "Keep your go-to parking spots \n  saved for quick and easy access",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
