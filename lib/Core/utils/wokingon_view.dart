import 'package:flutter/material.dart';

class WorkingOnView extends StatelessWidget {
  const WorkingOnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [Text('Woking on it but the time')],
        ),
      ),
    );
  }
}
