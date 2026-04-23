import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/views/login/login_screen.dart';
import 'package:flutter_application_1/features/auth/presentation/views/signup/signup_screen.dart';
import 'package:flutter_application_1/onboarding/first_screen.dart';
import 'package:flutter_application_1/onboarding/second_screen.dart';
import 'package:flutter_application_1/onboarding/third_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController controller = PageController();
  int index = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      index = value;
                    });
                  },
                  children: const [
                    FirstScreen(),
                    SecondScreen(),
                    ThirdScreen(),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 10),
                  CustomIndicator(active: index == 0),
                  const SizedBox(width: 10),
                  CustomIndicator(active: index == 1),
                  const SizedBox(width: 10),
                  CustomIndicator(active: index == 2),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () async {
                        if (index == 2) {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();

                          await prefs.setBool('seenOnboard', true);

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SignupScreen(),
                            ),
                          );
                        } else {
                          controller.animateToPage(
                            index + 1,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          index == 2 ? "sign up" : "Skip",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () async {
                        if (index == 2) {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();

                          await prefs.setBool('seenOnboard', true);

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LoginScreen(),
                            ),
                          );
                        } else {
                          controller.animateToPage(
                            index + 1,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 36, 62, 192),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          index == 2 ? "Log in" : "Next",
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
        ),
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
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: active ? Color.fromARGB(255, 36, 62, 192) : Colors.grey,
      ),
      width: active ? 30 : 10,
      height: 10,
    );
  }
}
