import 'package:flutter/material.dart';
import 'package:flutter_application_1/Booking/Ongoing_screen.dart';
import 'package:flutter_application_1/Booking/cancel_screen.dart';
import 'package:flutter_application_1/Booking/complete_screen.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,

      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,

          leading: Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),

          title: Text(
            "My Booking",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),

          bottom: TabBar(
            labelColor: Color(0xff7B3EFF),
            unselectedLabelColor: Colors.black54,
            indicatorColor: Color(0xff7B3EFF),
            indicatorWeight: 3,
            tabs: [
              Tab(text: "Ongoing"),
              Tab(text: "Completed"),
              Tab(text: "Cancelled"),
            ],
          ),
        ),

        body: TabBarView(
          children: [OngoingScreen(), CompleteScreen(), CancelScreen()],
        ),
      ),
    );
  }
}
