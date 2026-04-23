import 'package:flutter/material.dart';

class YourProfileView extends StatelessWidget {
  const YourProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [Text('Your Data will show with Firebase but the time')],
        ),
      ),
    );
  }
}
