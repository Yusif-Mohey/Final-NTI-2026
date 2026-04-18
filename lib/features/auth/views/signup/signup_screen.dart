import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/shared/custom_app_button.dart';
import 'package:flutter_application_1/Core/shared/custom_text_form_filed.dart';
import 'package:flutter_application_1/features/auth/views/login/login_screen.dart';
import 'package:flutter_application_1/features/auth/widgets/social_auth.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatelessWidget {
  static String id = 'Signuppage';

  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();
    final name = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 40),

                Text(
                  "Create Account",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                Gap(10),

                Text(
                  "Fill your information below or register\nwith your social account",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),

                Gap(40),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Name", style: TextStyle(fontSize: 16)),
                ),

                Gap(8),

                CustomTextFormField(
                  controller: name,
                  hintText: "Ex. John Doe",
                  obscurePassword: false,
                ),

                Gap(20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Email", style: TextStyle(fontSize: 16)),
                ),

                Gap(8),

                CustomTextFormField(
                  controller: email,
                  hintText: "example@gmail.com",
                  obscurePassword: false,
                ),

                Gap(20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Password", style: TextStyle(fontSize: 16)),
                ),

                Gap(8),

                CustomTextFormField(
                  controller: password,
                  hintText: "Enter your password",
                  obscurePassword: true,
                ),

                Gap(30),

                CustomAppButton(text: "Sign Up", onTap: () {}),

                Gap(15),

                SoicalAuth(),

                Gap(30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
