import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/login/login_screen.dart';
import 'package:flutter_application_1/shared/custom_app_button.dart';
import 'package:flutter_application_1/shared/custom_text_form_filed.dart';

class SignupScreen extends StatelessWidget {
  static String id = 'Signuppage';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          children: [
            SizedBox(height: 80),
            Text(
              'Create Account',

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
                'fall your information below or register with your social acount',

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
              child: Text('Name', style: TextStyle(fontSize: 20)),
            ),
            CustomTextFormField(
              hintText: 'Ex.john Doe',
              obscurePassword: false,
            ),
            SizedBox(height: 20),
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
              obscurePassword: true,
            ),

            SizedBox(height: 10),
            CustomAppButton(text: 'Sign Up', onTap: () {}),
            SizedBox(height: 15),
            CustomAppButton(text: 'Sign Up with Google', onTap: () {}),

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
    );
  }
}
