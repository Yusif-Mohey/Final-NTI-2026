import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/shared/custom_snack_bar.dart';
import 'package:flutter_application_1/app_data.dart';
import 'package:flutter_application_1/features/auth/signup/signup_screen.dart';
import 'package:flutter_application_1/Core/shared/custom_text_form_filed.dart';
import 'package:flutter_application_1/features/auth/socail_auth.dart';
import 'package:flutter_application_1/features/home/home_view.dart';
import 'package:gap/gap.dart';
import 'package:line_icons/line_icons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),

        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Sign in  ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Gap(10),
                Center(
                  child: Text(
                    "Hi! Welcom back,you've been missed ",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Gap(30),

                Column(
                  children: [
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          CustomTextFormField(
                            obscurePassword: false,
                            validator: (Value) {
                              if (Value!.isEmpty) {
                                return "Email can't be empty";
                              }
                              return null;
                            },
                            hintText: "Email",
                            controller: _emailController,
                          ),
                          Gap(30),
                          CustomTextFormField(
                            obscurePassword: false,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password can't be empty";
                              }
                              return null;
                            },
                            hintText: "Password",
                            controller: _passwordController,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(30),

                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xff753EFB),
                    ),
                  ),
                  onPressed: () {
                    _formkey.currentState?.validate();
                    String goHome = FirebaseAuthSer.signin(
                      _emailController.text.trim(),
                      _passwordController.text.trim(),
                    ).toString();
                    if (goHome == 'bad') {
                      customSnack('Not Allowed');
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeView()),
                      );
                    }
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                          "Sign in",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Gap(30),
                Center(child: Text("Or sign in with ")),
                Gap(10),
                SoicalAuth(),
                Gap(25),

                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.deepPurpleAccent),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
