import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/login/login_screen.dart';
import 'package:flutter_application_1/features/onboard/first_screen.dart';
import 'package:flutter_application_1/features/onboard/second_screen.dart';
import 'package:flutter_application_1/features/onboard/third_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              controller: controller,
              children: [FirstScreen(), SecondScreen(), ThirdScreen()],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              CustomIndicator(active: index == 0),
              SizedBox(width: 10),
              CustomIndicator(active: index == 1),
              SizedBox(width: 10),
              CustomIndicator(active: index == 2),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),

                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (index == 2) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Scaffold(body: LoginScreen());
                          },
                        ),
                      );
                    }
                    controller.animateToPage(
                      index + 1,
                      duration: Duration(microseconds: 250),
                      curve: Curves.linear,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 221, 118, 118),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Text(
                      "Next",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final bool active;
  const CustomIndicator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 250),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: active ? const Color.fromARGB(255, 221, 118, 118) : Colors.grey,
      ),
      width: active ? 30 : 10,
      height: 10,
    );
  }
}
