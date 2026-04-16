import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/shared/custom_snack_bar.dart';
import 'package:flutter_application_1/app_data.dart';
import 'package:flutter_application_1/features/auth/login/login_screen.dart';
import 'package:flutter_application_1/Core/shared/custom_text_form_filed.dart';
import 'package:flutter_application_1/features/auth/socail_auth.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatelessWidget {
  static String id = 'Signuppage';
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _email = TextEditingController();
    final _password = TextEditingController();
    final _name = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
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
                Gap(20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xff753EFB),
                    ),
                  ),
                  onPressed: () {
                    // AppData.register(_email, _password);
                    // and Navigation
                    print('Good Man');
                    customSnack('Wowwwwwwwwwwwwwwww');
                  },
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

                Gap(20),
                SoicalAuth(),
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Aready have an acount?',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 16,
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
