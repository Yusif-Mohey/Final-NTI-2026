import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/login/login_screen.dart';
import 'package:flutter_application_1/shared/custom_text_form_filed.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatelessWidget {
  static String id = 'Signuppage';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsetsGeometry.all(30)),
              Text(
                'Create Account',

                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Gap(10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'fall your information below or register \n with your social acount',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text('Name', style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(15),
                child: CustomTextFormField(
                  hintText: 'your name',
                  obscurePassword: true,
                ),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text('Email', style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(15),
                child: CustomTextFormField(
                  hintText: 'Example@gmail.com',

                  obscurePassword: true,
                ),
              ),

              Align(
                alignment: Alignment.topLeft,

                child: Text('password', style: TextStyle(fontSize: 15)),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(15),
                child: CustomTextFormField(
                  obscurePassword: false,

                  hintText: "Password",
                ),
              ),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff753EFB)),
                ),
                onPressed: () {},
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aready have an acount?',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
