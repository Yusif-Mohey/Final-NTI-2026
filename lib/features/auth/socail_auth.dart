

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SoicalAuth extends StatelessWidget {
  const SoicalAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff753EFB),
            // border: Border.all(),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              LineIcons.googlePlusG,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff753EFB),
            // border: Border.all(),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              LineIcons.facebook,
              size: 25,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff753EFB),
            // border: Border.all(),
            borderRadius: BorderRadius.circular(200),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              LineIcons.twitter,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ],
    );
  }
}
