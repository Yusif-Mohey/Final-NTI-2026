import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/signup/signup_screen.dart';
import 'package:flutter_application_1/shared/custom_app_button.dart';
import 'package:flutter_application_1/shared/custom_text_form_filed.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'Loginpage';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 80),
              Text(
                'Sign In',

                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Hi Welcom back, You have been missed',

                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Email', style: TextStyle(fontSize: 20)),
              ),
              CustomTextFormField(
                hintText: 'Example@gmail.com',
                obscurePassword: false,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,

                child: Text('password', style: TextStyle(fontSize: 20)),
              ),
              CustomTextFormField(
                hintText: 'Enter Your password',
                obscurePassword: false,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget password?',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              CustomAppButton(text: 'sign in', onTap: () {}),
              SizedBox(height: 15),
              CustomAppButton(text: 'Sign in with Google', onTap: () {}),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account ?',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text(
                      'Sign Up',
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
